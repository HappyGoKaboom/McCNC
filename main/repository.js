/*
    Handles repository features
 */

const fs = require("fs");
const file = require("./file.js");
const {ipcMain} = require("electron");
const app = require("electron").app;
const ipc = require("./ipc.js");

module.exports = {
    op: {
        drop: null,
    },
    setup: function () {
        const json = global.cfg;

        // sets up the repo system
        // setup user data folder
        file.mkdir(global.config.DataPath);

        // setup repository
        global.config.repoPath = global.config.DataPath+"repository/";
        global.repoPath = global.config.repoPath;

        // default repos and configs path
        file.mkdir(global.config.repoPath);

        // setup valid file formats for the repos
        // @TODO add check to see if files exists, if so load them unless forced reset is used

        this.create("forge", {
            filetypes: [
                "jar",
                "exe",
                "@compressed"
            ],
        });

        this.create("mods", {
            filetypes: [
                "jar",
                "exe",
                "@compressed"
            ],
        });

        this.create("modpacks", {
            filetypes: [
                "jar",
                "exe",
                "@compressed"
            ],
        });

        this.create("plugins", {
            filetypes: [
                "jar",
                "exe",
                "@compressed"
            ],
        });

        this.create("configs", {
            filetypes: [
                "jar",
                "exe",
                "@compressed"
            ],
        });

    },
    run: function () {
        const json = global.cfg;
        global.repoPath = global.config.repoPath;
        // runs the repo system and gets the folder list
        global.repoWatcher = fs.watch(global.repoPath, [], this.watcher);

        // get folder list of the repo
        let folders = file.get(global.repoPath).folders(); // need to add only folders check

        global.repos = []; // need to add only folders check

        folders.map( (v) => {
            let name = file.get(v).name();
            global.repos.push({
                path: v,
                name: name,
                files: file.get(v).files().length,
                folders: file.get(v).folders().length,
                config: null,
            });
        });

        let repoConfigs = file.get(global.repoPath).files("json");

        // load configs for each repo
        repoConfigs.map( (v,k) => {
            let obj = json.get(v);
            let name = file.get(v).name();
            global.repos[k].config = obj;
        });

        global.win.webContents.on("did-finish-load",  () => {
            ipcMain.addListener("repo", this.IPC.bind(this)); // add listener
            ipc.send("repo", {action: "repoList", data: global.repos} ); // send messaage that is returned
        });
    },
    create: function (name, filetypes) {
        const json = global.cfg;
        // creates a repository
        file.mkdir(global.repoPath+"/"+name.toLowerCase());

        json.create(name.toLowerCase(), global.repoPath, filetypes ? filetypes : {
            filetypes: [
                "jar",
                "@compressed"
            ],
        });
    },
    delete: function (name) {
        // deletes a repository
        fs.unlinkSync(global.repoPath+"/"+name.toLowerCase());
    },
    rename: function (name, to) {
        fs.renameSync(global.repoPath+"/"+name.toLowerCase(), to)
    },
    watcher: function (ev, filepath) {
        let type = null;

        // check if filepath exists
        if (fs.existsSync(global.config.DataPath+filepath)) {
            // exists so get type
            let stat = fs.lstatSync(global.config.DataPath+filepath);

            if (stat.isFile()) {
                // is file
                type = "file";
            } else if (stat.isDirectory()) {
                // is folder
                type = "folder";
            }
        } else {
            // delete or moved
            type = "delete";
        }

        // send IPC to update repo
    },
    IPC: function (ev, data) {
        switch (data.action) {
            case "drop":
                if (!this.op.drop || this.op.drop !== data.what) {
                    this.op.drop = data.what;
                    console.log("DROP ", data.what, " TO ", data.to);

                    // check if file or folder
                    if (file.get(data.what).isFile()) {
                        let filename = data.what.slice(data.what.lastIndexOf("/") + 1);
                        fs.copyFileSync(data.what, data.to + "/" + filename);
                    } else if (file.get(data.what).isFolder()) {
                        let destination = data.to;

                        if (data.to.trim().lastIndexOf("/") === data.to.trim().length - 1) {
                            destination += file.get(data.what).folder();
                        } else {
                            destination += "/" + file.get(data.what).folder();
                        }

                        file.get(data.what).copy(destination);
                    }

                    // get file n folder count and update client
                    ipc.send("repo", {
                        action: "repoItemUpdate",
                        repo: data.to,
                        files: file.get(data.to).files().length,
                        folders: file.get(data.to).folders().length
                    });
                }
                break;
            case "get":
                // gets files from repository
                let list = file.get(global.repoPath+data.repo).folders();
                ipc.send(data.ipc, {action: "fileList",
                    repo: data.repo,
                    list: list,
                });
                break;
        }
    }
};
