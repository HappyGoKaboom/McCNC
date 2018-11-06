window.IPCHashTable = {}; // channel = hash
window.IPCHashTimer = false;
const {ipcRenderer} = require("electron");

function listenIPC(channel, callback) {
    ipcRenderer.on(channel, window.IPCHandler.bind({callback: callback, channel: channel}));
}

function IPCHandler(ev, data) {
    if (!window.IPCHashTable[this.channel]) {
        window.IPCHashTable[this.channel] = {hash: data.hash, ts: window.performance.now()};

        this.callback(ev, data);
    }

    if (!window.IPCHashTimer) {
        window.IPCHashTimer = setInterval(() => {
            if (window.IPCHashTable && Object.keys(window.IPCHashTable).length > 0) {
                let now = performance.now();
                for (n in window.IPCHashTable) {
                    if (window.IPCHashTable.hasOwnProperty(n)) {
                        if (now - window.IPCHashTable[n].ts > 100) {
                            delete window.IPCHashTable[n];
                        }
                    }
                }
            } else {
                clearInterval(window.IPCHashTimer);
                window.IPCHashTimer = false;
            }
        }, 100);
    }
}