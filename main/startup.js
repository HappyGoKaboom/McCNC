/*
    start up checks and balances here
 */

const fs = require("fs");
const json = global.cfg;
const file = require('./file.js');

module.exports = {
    setup: function () {
        // sets up th app
        let userDataPath = global.appPath+"/data/";

        global.config = {
            App: "Minecraft",
            Version: "0.1.0",
            DataPath: userDataPath,
        };

        // json.create("main", "./config", global.config);
        global.repo.setup();

        let backups = userDataPath+"/backups";

        file.mkdir(backups);
    },
    run: function () {
        // check if setup if not run setup

        // main.json file config must be present
        global.config = {};

        let cfgExists = fs.existsSync(global.appPath+"/config/main.json");

        if (cfgExists) {
            // exists has being setup
            global.config = json.get("main", global.appPath+"/config");
            global.repoPath = global.config.DataPath+"/repository";
        } else {
            // does not exists has not being setup so define and save
            this.setup();
        }

    // add file watcher on repository to update GUI
    global.repo.run();
    },
};

