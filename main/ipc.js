// IPC functions
const crypto = require('crypto');

module.exports = {
    send: (channel, data) => {
            // generated a timestamp for checking
            let hash = crypto.createHash("sha256");
                hash.update(JSON.stringify(data));

            data.hash = hash.digest('hex');
            global.win.webContents.send(channel, data);
        }
};