/*
    Handles repository features
 */

const fs = require("fs");
const file = require("./file.js");
const {ipcMain} = require("electron");
const app = require("electron").app;

module.exports = {
    setup: function () {
        const json = global.cfg;

        // sets up the repo system
        // setup user data folder
        file.mkdir(global.config.DataPath);

        // setup repository
        global.repoPath = global.config.DataPath+"/repository";

        // default repos and configs
        file.mkdir(global.repoPath);
        file.mkdir(global.repoPath+"/forge");
        file.mkdir(global.repoPath+"/mods");
        file.mkdir(global.repoPath+"/modpacks");
        file.mkdir(global.repoPath+"/plugins");
        file.mkdir(global.repoPath+"/configs");

        // setup valid file formats for the repos
        // @TODO add check to see if files exists, if so load them unless forced reset is used
        json.create("forge", global.repoPath, {
            filetypes: [
                "jar",
                "exe",
                "@compressed"
            ],
        });

        json.create("mods", global.repoPath, {
            filetypes: [
                "jar",
                "@compressed"
            ],
        });

        json.create("modpacks", global.repoPath, {
            filetypes: [
                "jar",
                "@compressed"
            ]
        });

        json.create("plugins", global.repoPath, {
            filetypes: [
                "jar",
                "@compressed"
            ]
        });

        json.create("configs", global.repoPath, {
            filetypes: [
                "jar",
                "@compressed"
            ]
        });
    },
    run: function () {
        const json = global.cfg;

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
            ipcMain.addListener("repo", this.IPC); // add listener
            console.log(global.repos);
            global.win.webContents.send("repo", {action: "repoList", data: global.repos} ); // send messaage that is returned
        });
    },
    save: function (filepath, repo) {
        // saves files to a repository

    },
    create: function (name) {
        // creates a repository

    },
    delete: function (name) {
        // deletes a repository

    },
    rename: function (filepath, to) {

    },
    watcher: function (ev, filepath) {
        let type = null;

        // check if filepath exists
        if (fs.existsSync(global.config.DataPath+filepath)) {
            // exists so get type
            let stat = fs.lstatSync(filepath);

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
                console.log("DROP ", data.what, " TO ", data.to);

                // check exists if so notify IPC renderer
                let filename = data.what.slice(data.what.lastIndexOf("/")+1);

                fs.copyFileSync(data.what, data.to+"/"+filename);
                break;
        }
    }
};
