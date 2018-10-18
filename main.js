const {app, BrowserWindow, globalShortcut} = require('electron');
const path = require('path');
const url = require('url');

global.repo = require('./main/repository.js');
global.cfg = require('./main/config.js');
global.setup = require('./main/setup.js');
global.startup = require('./main/startup.js');


// Keep a global reference of the window object, if you don't, the window will
// be closed automatically when the JavaScript object is garbage collected.
global.win = {};

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.on('ready', createWindow);
global.appPath = app.getAppPath();

// shortcuts
app.on('ready', () => {
    startup.run(); // start the show
    // console.log(global.win.webContents.send)

    // Handle opening Chrome Dev Tools
    globalShortcut.register('CommandOrControl+Shift+Tab', () => {
        // Dev tools
        if (global.win.isFocused()) {
            if (global.win.webContents.isDevToolsOpened()) {
                // Close the DevTools.
                global.win.webContents.closeDevTools();
            }
            else {
                // Open the DevTools.
                global.win.webContents.openDevTools();
            }
        }
    })
});



// Quit when all windows are closed.
app.on('window-all-closed', () => {
    // On macOS it is common for applications and their menu bar
    // to stay active until the user quits explicitly with Cmd + Q
    if (process.platform !== 'darwin') {
        app.quit();
    }
});

app.on('activate', () => {
    // On macOS it's common to re-create a window in the app when the
    // dock icon is clicked and there are no other windows open.
    createWindow();
});

function createWindow() {
    // Create the browser window.
    global.win = new BrowserWindow({
        'node-integration': true,
        frame: true,
        resizable: true,
        fullscreen: false,
    });

    // and load the index.html of the app.
    global.win.loadURL(url.format({
        pathname: path.join(__dirname, 'render/index.html'),
        protocol: 'file:',
        slashes: true
    }));

    global.win.maximize();
    global.win.show();

    // Emitted when the window is closed.
    global.win.on('closed', () => {
        // Dereference the window object, usually you would store windows
        // in an array if your app supports multi windows, this is the time
        // when you should delete the corresponding element.
        global.win = null;
    });
}

// In this file you can include the rest of your app's specific main process
// code. You can also put them in separate files and require them here.