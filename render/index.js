// ###########################      HTML        ###################################
function body () {
    // body of the document
    $.content = document.createDocumentFragment();

    // ============ Header ============
    $.content.appendChild(
        $.create.div({
                id: "header",
            },
            $.create.div({
                    id: "user-bar"
                },
                $.create.p({
                    textContent: "Minecraft - CNC",
                    styler: "header-title"
                }),
                $.create.div ({styler: "user-wrapper"},
                    // Log in
                    $.create.div({
                        id: "login.input",
                        styler: [
                            "login-bar",
                            "login-in",
                        ]
                        },
                        // add text inputs
                        // user
                        $.styler.append(new $.components.textbox({
                            id: "login.username",
                            label: "Username",
                        }), "login-pos-1" ),
                        // password
                        $.styler.append(new $.components.textbox({
                            id: "login.password",
                            label: "Password",
                            type: "password"
                        }), "login-pos-2" ),
                        $.styler.append(new $.components.button({
                            text: "Login",
                            callback: login,
                        }), "login-pos-3" ),
                        ),
                    // logging in status
                    $.create.div({
                        id: "login.status",
                        styler: [
                            "login-status-container",
                            "login-left-out",
                        ]
                        },
                        $.create.p({
                            id: "login.text",
                            textContent: "Logging in please wait.",
                            styler: "login-text"})
                    ),
                    // logged in
                    $.create.div({
                        id: "user.profile",
                        styler: [
                            "login-profile-container",
                            "login-left-out",
                        ]
                        },
                        $.create.p({
                            textContent: "Welcome HappyGoKaboom",
                            styler: "user-profile-name"
                        }),
                        $.create.div({
                            styler: "user-profile-pic-container",
                            },
                            $.create.img({
                                src: "./images/avatar.png",
                                styler: "user-profile-pic",
                            })
                        )
                    ),
                ),
            ),
            $.styler.append(new $.components.hLine({style: "left"}),"header-hline-pos"),
        )
    );

    // ============ Main ============
    $.content.appendChild(
        $.create.div({
                id: "main",
            },
            $.create.div({id: "menu"},
                // =======     Launcher    ======================================
                $.styler.append(
                    new $.components.mainMenuItem({text: "Launcher", callback: $.page.show.bind(null, "Launcher")}),
                    "main-menu-item-shown"
                ),
                $.styler.append(new $.components.hLine(), "main-menu-line-shown"),
                // =======     Instance    ======================================
                $.styler.append(
                    new $.components.mainMenuItem({text: "Instance", callback: $.page.show.bind(null, "Instance")}),
                    "main-menu-item-shown"
                ),
                $.styler.append(new $.components.hLine(), "main-menu-line-shown"),

                // =======     Repository    ======================================
                $.styler.append(
                    new $.components.mainMenuItem({text: "Repository", callback: $.page.show.bind(null, "Repository")}),
                    "main-menu-item-shown"
                ),
                $.styler.append(new $.components.hLine(), "main-menu-line-shown"),

                // =======     Moderator    ======================================
                $.styler.append(
                    new $.components.mainMenuItem({text: "Moderator", callback: $.page.show.bind(null, "Moderator")}),
                    "main-menu-item-hidden"
                ),
                $.styler.append(new $.components.hLine(), "main-menu-line-hidden"),

                // =======     Admin    ======================================
                $.styler.append(
                    new $.components.mainMenuItem({text: "Admin", callback: $.page.show.bind(null, "Admin")}),
                    "main-menu-item-hidden"
                ),
                $.styler.append(new $.components.hLine(), "main-menu-line-hidden"),

                // =======     Server    ======================================
                $.styler.append(
                    new $.components.mainMenuItem({text: "Server", callback: $.page.show.bind(null, "Servers")}),
                    "main-menu-item-hidden"
                ),
                $.styler.append(new $.components.hLine(), "main-menu-line-hidden"),

                // =======     Settings    ======================================
                $.styler.append(
                    new $.components.mainMenuItem({text: "Settings", callback: $.page.show.bind(null, "Settings")}),
                    "main-menu-item-shown"
                ),
            ),
            $.create.div({id: "content"}),
        )
    );

    // ============ Footer ============
    $.content.appendChild(
        $.create.div({
                id: "footer",
            },
            new $.components.hLine({style: "right"}),
        )
    );
}

// ###########################      STYLE        ###################################
$.styler.create({
    "@body": {
        overflow: "hidden",
        backgroundColor: "@theme.backColor",
        padding: "0",
        margin: "0",
    },
    "@p": {
        cursor: "default",
        userSelect: $.prefix.bind("none"),
    },
    "#header": {
        position: "relative",
        left: "0px",
        top: "0px",
        width: "100%",
        height: "120px",
    },
    "#main": {
        position: "relative",
        left: "0px",
        width: "100%",
        height: "calc(100% - 120px - 60px)",
        display: "grid",
        gridTemplateColumns: "20% 80%",
        gridTemplateRows: "100%",
    },
    "#footer": {
        position: "relative",
        left: "0px",
        bottom: "0px",
        width: "100%",
        height: "60px",
    },
    "#menu": {
        position: "relative",
        gridRowStart: "1",
        gridColumnStart: "1",
    },
    "#user-bar": {
        position: "absolute",
        left: "0px",
        display: "grid",
        gridTemplateColumns: "44px auto max-content",
        height: "118px",
        width: "100%",
    },
    "header-title": {
        position: "relative",
        fontSize: "32pt",
        fontFamily: "Audiowide",
        color: "@theme.textColor",
        gridColumnStart: "2",
        margin: "0",
        letterSpacing: "12px",
        alignSelf: "center",
    },
    "login-pos-1": {
        gridColumnStart: "1",
    },
    "login-pos-2": {
        gridColumnStart: "3",
    },
    "login-pos-3": {
        gridColumnStart: "5",
    },
    "header-hline-pos": {
        position: "absolute",
        bottom: "0px"
    },
    "user-wrapper": {
        position: "relative",
        overflow: "hidden",
        gridColumnStart: "3",
        width: "800px",
        height: "100%",
    },
    "login-text": {
        fontSize: "@theme.defaultFontSize",
        fontFamily: "@theme.defaultFont",
        color: "@theme.textColor",
        position: "relative",
        left: "50%",
    },
    "login-bar": {
        position: "absolute",
        display: "grid",
        gridTemplateColumns: "40% 2% 40% 2% auto 44px",
        padding: "12px",
        width: "calc(100% - 24px)",
        transition: $.prefix.bind("transform 250ms, opacity 250ms"),
        bottom: "0px",
    },
    "login-status-container": {
        position: "absolute",
        width: "calc(100% - 24px)",
        transition: $.prefix.bind("transform 250ms, opacity 250ms"),
        bottom: "0px",
    },
    "login-profile-container": {
        position: "absolute",
        width: "calc(100% - 24px)",
        transition: $.prefix.bind("transform 250ms, opacity 250ms"),
        display: "grid",
        gridTemplateColumns: "auto 80px"
    },
    "login-left-out": {
        transform: "translateX(-100%)",
        pointerEvents: "none",
    },
    "login-in": {
        transform: "translateX(0%)",
        pointerEvents: "all",
    },
    "login-right-out": {
        transform: "translateX(100%)",
        pointerEvents: "none",
    },
    "user-profile-name": {
        fontSize: "@theme.usernameFontSize",
        fontFamily: "@theme.usernameFont",
        letterSpacing: "@theme.usernameSpacing",
        color: "@theme.textColor",
        position: "relative",
        padding: "0px 60px",
        textAlign: "right",
        alignSelf: "end",
    },
    "user-profile-pic-container": {
        position: "relative",
        top: "15px",
        width: "80px",
        height: "80px",
        overflow: "hidden",
        borderRadius: "50%"
    },
    "user-profile-pic": {
        position: "relative",
        width: "100%"
    },
    "main-menu-item-hidden": {
        height: "0px",
        opacity: 0,
        pointerEvents: "none"
    },
    "main-menu-item-shown": {
        height: "72px",
        opacity: 1,
        pointerEvents: "all"
    },
    "main-menu-line-hidden": {
        opacity: 0,
    },
    "main-menu-line-shown": {
        opacity: 1,
    },
});

// ###########################      FUNCTIONAL        ###################################
function windowResizeEvent () {
    // using dynamic scaling solution for screen resolutions
    let scaler = (window.innerWidth * window.innerHeight/2) / 918720;
    let scalerMin = 0.75;
    let scalerMax = 5.0;

    if (scalerMin && scaler < scalerMin) {
        scaler = scalerMin;
    }

    if (scalerMax && scaler > scalerMax) {
        scaler = scalerMax;
    }

    document.body.style.zoom = scaler;

    if ($ && $.fire) {
    }
    $.fire("windowResize", {width: window.innerWidth, height: window.innerHeight, scaler, scalerMin, scalerMax});
}

const remote = require('electron').remote;

let rightClickPosition = null;

window.addEventListener('click', (ev) => {
    ev.preventDefault();

    if (ev.ctrlKey) {
        remote.getCurrentWindow().inspectElement(ev.x, ev.y)
    }
}, false);

// ###########################      DOM        ##########################################
window.addEventListener("DOMContentLoaded", ready, false);
window.addEventListener("resize", windowResizeEvent, false);

const {electron} = require("electron");

function ready () {
    // The dom is ready for adding content ie. document.body (so appendChild() works)
    windowResizeEvent(); // call to set initial scale
    document.body.appendChild($.content);

    $.page.setup(); // setup pages

    setTimeout(() => {
        $.page.show("Launcher")
    }, 100);
}

body(); // generate content

