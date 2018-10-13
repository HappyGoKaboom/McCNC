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
                $.create.div({
                    id: "login-bar"
                    },
                    // add text inputs
                    // user
                    $.styler.append(new $.components.textbox({
                            label: "Username",
                        }), "login-pos-1" ),
                    // password
                    $.styler.append(new $.components.textbox({
                        label: "Username",
                    }), "login-pos-2" ),
                    $.styler.append(new $.components.button({
                        text: "Login",
                        callback: () => {console.log("LOGGING IN @ TODO")},
                    }), "login-pos-3" ),
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
                new $.components.mainMenuItem("Launcher"),
                new $.components.hLine(),
                new $.components.mainMenuItem("Repository"),
                new $.components.hLine(),
                new $.components.mainMenuItem("Moderator"),
                new $.components.hLine(),
                new $.components.mainMenuItem("Admin"),
                new $.components.hLine(),
                new $.components.mainMenuItem("Server"),
                new $.components.hLine(),
                new $.components.mainMenuItem("Settings"),
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
        gridTemplateColumns: "20% 100%",
        gridTemplateRows: "100%",
        padding: "0px 24px"
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
        gridTemplateColumns: "10% auto max-content",
        height: "118px",
        width: "100%",
    },
    "#login-bar": {
        position: "relative",
        display: "grid",
        gridTemplateColumns: "40% 2% 40% 2% auto",
        gridColumnStart: "3",
        padding: "12px"
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
    }
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

// ###########################      DOM        ##########################################
window.addEventListener("DOMContentLoaded", ready, false);
window.addEventListener("resize", windowResizeEvent, false);

function ready () {
    // The dom is ready for adding content ie. document.body (so appendChild() works)
    windowResizeEvent(); // call to set initial scale
    document.body.appendChild($.content);
}

body(); // generate content

