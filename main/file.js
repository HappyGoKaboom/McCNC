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

        return {
            filename: () => {
                // full filename no path
                return this.filepath.slice(filepath.lastIndexOf("/")+1);
            },
            isFile: () => {
                return fs.lstatSync(this.filepath).isFile();
            },
            files: (types) => {
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
                    let files = fs.readdirSync(this.filepath).map(
                        name => join(this.filepath, name))
                        .filter((file) => {
                            return this.get(file).isFile()
                        });

                    return files;
                }
            },
            isFolder: () => {
                return fs.lstatSync(this.filepath).isDirectory();
            },
            folders: () => {
                let folders = fs.readdirSync(this.filepath).map(
                    name => join(this.filepath, name))
                    .filter( (file) => {return this.get(file).isFolder()} );

                return folders;
            },
            name: () => {
                // just the nanem of the file no extension or path
                let s = filepath.lastIndexOf("/")+1;
                    s = s < 0 ? 0 : s;
                let f = this.filepath.lastIndexOf(".");
                    f = f < 0 ? null : f;

                if (f) {
                    return this.filepath.slice(s, f);
                } else {
                    return this.filepath.slice(s);
                }
            },
            extension: () => {
                // just the file extension
                let s = this.filepath.lastIndexOf(".")+1;
                    return s < 0 ? "" : this.filepath.slice(s);
            },
            path: () => {
                // just the path to the file no file name
                return this.filepath.slice(0, this.filepath.lastIndexOf("/"));
            },
            paths: () => {
                // an array of folders to the file
                let list = (this.filepath.slice(0, this.filepath.lastIndexOf("/"))).split("/");
                    list.map((v,k)=>{if (v.trim().length===0) { list.splice(k,1) } });
                return list;
            },
            folder: () => {
                // gets the folder the file is in
                return this.filepath.slice(this.filepath.lastIndexOf("/", this.filepath.lastIndexOf("/") -1)+1, this.filepath.lastIndexOf("/"));
            },
        }
    },
};