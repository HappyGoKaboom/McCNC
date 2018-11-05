/*
    start up checks and balances here
 */

const fs = require("fs");
const json = global.cfg;
const file = require('./file.js');

module.exports = {
    setup: function () {
        // sets up the app and its data path
        let userDataPath = global.appPath+"/data/";
        file.mkdir(userDataPath);

        global.config = {
            App: "Minecraft-CNC",
            Version: "0.1.0",
            DataPath: userDataPath,
        };

        // backups
        let backups = userDataPath+"/backups";
        file.mkdir(backups);
        global.backupPath = backups;
        global.config.backupPath = backups;
        json.create("backups", backups, {
            backups: []
        });

        // instance folder for each game instance
        let instances = userDataPath+"/instances";
        file.mkdir(instances);
        global.instancePath = instances;
        global.config.instancePath = instances;
        json.create("instances", instances, {
            instances: []
        });

        global.repo.setup();

        // json.create("main", "./config", global.config);
    },
    run: function () {
        // check if setup if not run setup

        // main.json file config must be present
        global.config = {};

        let cfgExists = fs.existsSync(global.appPath+"/config/main.json");

        if (cfgExists) {
            // exists has being setup
            global.config = json.get("main", global.appPath+"/config");
            global.backupPath = global.config.DataPath+"/repository";
            global.instancePath = global.config.DataPath+"/repository";
        } else {
            // does not exists has not being setup so define and save
            this.setup();
        }

    // add file watcher on repository to update GUI
    global.repo.run();
    },
};

