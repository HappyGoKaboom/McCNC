/*
    Handles config for the app, all config are stored in the user data directory
 */
const fs = require("fs");
const file = require("./file.js")

module.exports = {
    create: function (name, path, data) {
        if (!path || path.trim().length === 0) {
            path = file.get(name).path();
            name = path = file.get(name).filename();
        }

        // let stream = fs.createWriteStream(getConfigPath (name, path), ["a"]);

        if (data && typeof data === "string") {
            fs.writeFileSync(getConfigPath (name, path), data);
        } else if (data && typeof data !== "string") {
            fs.writeFileSync(getConfigPath (name, path), JSON.stringify(data, null, 4));
        }
    },
    get: function (name, path) {
        if (!path || path.trim().length === 0) {
            path = file.get(name).path();
            name = file.get(name).name();
        }
        // console.log(getConfigPath (name, path))
        // gets a config.json
        try {
            return JSON.parse(fs.readFileSync(getConfigPath (name, path)))
        } catch (e) {
            console.error(e)
        }
    },
    delete: function (name, path) {
        if (!path || path.trim().length === 0) {
            path = file.get(name).path();
            name = path = file.get(name).filename();
        }

        // deletes a config.json
       fs.unlinkSync(getConfigPath (name, path));
    },
    rename: function (name, path) {
        if (!path || path.trim().length === 0) {
            path = file.get(name).path();
            name = path = file.get(name).filename();
        }

        fs.renameSync(getConfigPath (name, path))
    }
};

function getConfigPath (name, path) {
    let filepath = path;

    // create a config.json
    if (path.trim().indexOf("/", path.trim().length - 1) === -1) {
        filepath += "/";
    }

    if (name.indexOf(".json") === -1) {
        filepath += name+".json";
    }

    return filepath;

}