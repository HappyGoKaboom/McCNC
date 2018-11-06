$.global.register({
    // info
    name: "Launcher",

    // config
    path: "pages.launcher", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Launcher {
        constructor(args) {
            // GUI here
            $.id.content.appendChild(
                $.create.div({
                    id: "page.launcher",
                    styler: "page-launcher"
                    },
                    $.create.div({
                        styler: [
                            "page-launcher-add-cont",
                            "event hover page-launcher-add-cont-on/page-launcher-add-cont-off"
                            ]
                        },
                        $.create.p({
                            textContent: "+",
                            styler: "page-launcher-add"
                        })
                    )
                ),
            );
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        show () {
            $.styler.set($.id.page.launcher, "show-page");
        }

        hide () {
            $.styler.set($.id.page.launcher, "hide-page");
        }

        stylesheet() {
            $.styler.create({
                "page-launcher": {
                    position: "absolute",
                    width: "80%",
                    height: "100%",
                    display: "grid",
                    gridTemplateColumns: "15% auto 15%",
                    gridTemplateRows: "repeat(100, auto)",
                },
                "page-launcher-add-cont": {
                    width: "52px",
                    height: "52px",
                    border: "2px solid",
                    borderColor: "@theme.textColor",
                    borderRadius: "50px",
                    gridColumnStart: 1,
                    gridrowStart: 1,
                    margin: "26px 52px",
                    color: "@theme.textColor",
                    transition: $.prefix.bind("background-color 250ms, color 250ms")
                },
                "page-launcher-add-cont-on": {
                    backgroundColor: "@theme.textColor",
                    color: "@theme.backColor",
                },
                "page-launcher-add-cont-off": {
                    backgroundColor: "transparent",
                    color: "@theme.textColor",
                },
                "page-launcher-add": {
                    textAlign: "center",
                    fontSize: "34pt",
                    padding: "0",
                    margin: "0",
                    height: "100%"
                },
                "launcher-config-cont": {
                    width: "600px",
                    height: "400px",
                    border: "2px solid",
                    borderColor: "@theme.backColorLighter",
                    borderRadius: "12px",
                    position: "fixed",
                    left: "50%",
                    top: "50%",
                    transform: "translate(-50%, -50%)",
                    padding: "28px"
                },
            });
        }
    }
});