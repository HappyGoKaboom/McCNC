/*
    Basic file and path support
 */
const fs = require("fs");
const {join} = require("path");

module.exports = {
    mkdir: function (path) {
        // check and make if doesnt exist
        if (!fs.existsSync(path)) {
            fs.mkdirSync(path);
        }
    },
    get: function (filepath)  {
        this.filepath = filepath;
        return this;
    },
    filename: function () {
        // full filename no path
        return this.filepath.slice(this.filepath.lastIndexOf("/")+1);
    },
    isFile: function () {
        return fs.lstatSync(this.filepath).isFile();
    },
    files: function (types) {
        if (typeof types === "string" ) {
            types = types.split(",");
        }

        if (types) {
            let files = this.get(this.filepath).files();
            for (let k = 0; k < files.length; k++) {
                let match = false;
                let v = files[k];

                for (let t = 0; t < types.length; t++) {
                    if (this.get(v).extension().toLowerCase() === types[t].trim().toLowerCase()) {

                        match = true;
                        break;
                    }
                }

                if (!match) {
                    files.splice(k, 1);
                    k--;
                }
            }

            return files;
        } else {
            let files = fs.readdirSync(this.filepath);
            let ret = [];

            if (files) {
                let path = this.filepath;
                files.map( (v) => {
                    let file = path;

                    if (file.trim().lastIndexOf("/") === file.trim().length - 1) {
                        file += v;
                    } else {
                        file += "/" + v;
                    }

                    if (this.get(file).isFile()) {
                        ret.push(file);
                    }
                });
                return ret;
            } else {
                return [];
            }
        }
        },
    isFolder: function () {
        return fs.lstatSync(this.filepath).isDirectory();
    },
    folders: function () {
        let files = fs.readdirSync(this.filepath);
        let ret = [];

        if (files) {
            let path = this.filepath;

            files.map( (v) => {
                let file = path;

                if (file.trim().lastIndexOf("/") === file.trim().length - 1) {
                    file += v;
                } else {
                    file += "/" + v;
                }

                if (this.get(file).isFolder()) {
                    ret.push(file);
                }
            });
            return ret;
        } else {
            return [];
        }
    },
    name: function () {
        // just the nanem of the file no extension or path
        let s = this.filepath.lastIndexOf("/")+1;
        s = s < 0 ? 0 : s;
        let f = this.filepath.lastIndexOf(".");
        f = f < 0 ? null : f;

        if (f) {
            return this.filepath.slice(s, f);
        } else {
            return this.filepath.slice(s);
        }
    },
    extension: function () {
        // just the file extension
        let s = this.filepath.lastIndexOf(".")+1;
        return s < 0 ? "" : this.filepath.slice(s);
    },
    path: function () {
        // just the path to the file no file name
        return this.filepath.slice(0, this.filepath.lastIndexOf("/"));
    },
    paths: function () {
        // an array of folders to the file
        let list = (this.filepath.slice(0, this.filepath.lastIndexOf("/"))).split("/");
        list.map((v,k)=>{if (v.trim().length===0) { list.splice(k,1) } });
        return list;
    },
    folder: function () {
        // gets the folder the file is in
        if (this.filepath.trim().lastIndexOf("/") !== this.filepath.trim().length -1) {
            return this.filepath.slice(this.filepath.lastIndexOf("/")+1);
        } else {
            return this.filepath.slice(this.filepath.lastIndexOf("/", this.filepath.lastIndexOf("/") -1)+1, this.filepath.lastIndexOf("/"));
        }
    },
    copy: function (to) {
        let filepath = this.filepath;
        let files = this.get(filepath).files();
        let folders = this.get(filepath).folders();

        this.mkdir(to);

        files.map( (v) => {
            fs.copyFileSync(v, to + "/" + this.get(v).filename());
        });

        folders.map( (v) => {
            this.get(v).copy(to + "/" + this.get(v).folder());
        });
    }
};