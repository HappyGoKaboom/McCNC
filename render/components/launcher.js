$.global.register({
    // info
    name: "launcher",

    // config
    path: "components.launcher", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_Launcher {
        constructor(args) {
            // fires on registration before this.$ is available
            // process args and check / defaults
            return this.create(args);
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        create(arg) {
            return ($.create.div({
                        // id: arg.id ? arg.id : null,
                        event: {
                            // click: this.launch.bind(null, "Pack-ID")
                        },
                        styler: [
                            "launcher-container",
                            "event hover launcher-hover-on/launcher-hover-off"
                        ]},
                    $.create.div({},
                        // Pack Title
                        $.create.p({
                            textContent: "Vanilla",
                            styler: [
                                "launcher-title",
                            ]
                        }),
                        // MC version label
                        $.create.p({
                            textContent: "Minecraft Version: 1.12.2",
                            styler: [
                                "launcher-info-text"
                            ]
                        }),
                        // Forge version label
                        $.create.p({
                            textContent: "Forge Version: N/A",
                            styler: [
                                "launcher-info-text"
                            ]
                        }),
                    ),
                    // Launch Button
                    $.create.div({
                        styler: "launcher-play-container"
                        },
                        // container
                        $.create.div({
                                styler: "launcher-circle"
                            }
                        ),
                        $.create.div({
                                styler: "launcher-circle-inner"
                            }
                        ),
                        $.create.div({
                                styler: "launcher-play"
                            }
                        )
                    ),
                    new $.components.vLine(),
                    $.create.div({
                        // Controls and settings
                    },
                        $.create.p({
                            textContent: String.fromCharCode(9881),
                            styler: [
                                "launcher-control-opt",
                                "launcher-opt-config",
                                "event hover launcher-opt-hover-on/launcher-opt-hover-off",
                            ]}),
                        $.create.p({
                            textContent: String.fromCharCode(9605),
                            styler: [
                                "launcher-control-opt",
                                "launcher-opt-stop",
                                "event hover launcher-opt-hover-on/launcher-opt-hover-off",
                            ]}),
                        $.create.p({
                            textContent: "x",
                            styler: [
                                "launcher-control-opt",
                                "launcher-opt-delete",
                                "event hover launcher-opt-hover-on/launcher-opt-hover-off",
                            ]}),
                    ),

                )
            )
        }

        launch () {

        }

        stylesheet() {
            $.styler.create({
                "launcher-container": {
                    gridColumnStart: "2",
                    display: "grid",
                    gridTemplateColumns: "calc(100% - 180px) 120px 2px 60px",
                    gridColumnGap: "12px",
                    height: "120px",
                    border: "1px solid",
                    borderColor: "@theme.backColorLighter",
                    borderRadius: "35px",
                    borderTopRightRadius: "0px",
                    padding: "4px 25px",
                    marginTop: "6px",
                },
                "launcher-hover-on": {
                    background: "linear-gradient(0deg, rgb(40, 47, 56) 0%, rgb(42, 48, 56) 30%, rgb(60, 69, 80))",
                },
                "launcher-hover-off": {
                    background: "unset",
                },
                "launcher-title": {
                    fontSize: "28pt",
                    fontFamily: "@theme.defaultFont",
                    color: "@theme.textColor",
                    padding: "0",
                    margin: "0",
                },
                "launcher-info-text": {
                    fontSize: "@theme.defaultFontSize",
                    fontFamily: "@theme.defaultFont",
                    color: "@theme.textColor",
                    padding: "0px 0px 0px 50px",
                    margin: "0",
                },
                "launcher-circle": {
                    position: "absolute",
                    background: "linear-gradient(45deg, transparent, #5e6f8e)",
                    borderRadius: "50%",
                    width: "100px",
                    height: "100px",
                    boxSizing: "border-box",
                },
                "launcher-circle-inner": {
                    position: "absolute",
                    backgroundColor: "@theme.backColor",
                    borderRadius: "50%",
                    width: "80px",
                    height: "80px",
                    boxSizing: "border-box",
                    transform: "translate(10px, 10px)",
                },
                "launcher-play": {
                    position: "relative",
                    borderWidth: "20px 20px 20px 45px",
                    borderStyle: "solid",
                    borderColor: "transparent transparent transparent #445067",
                    width: "50px",
                    height: "0px",
                    boxSizing: "border-box",
                    top: "30px",
                    left: "32px"
                },
                "launcher-play-container": {
                    position: "relative",
                    top: "10px",
                    width: "100px",
                    height: "100px",
                    boxSizing: "border-box",
                },
                "launcher-control-opt": {
                    color: "@theme.textColorDarker",
                    fontFamily: "@theme.defaultFont",
                    padding: "0 8px",
                    margin: "0",
                    width: "min-content",
                    textAlign: "center",
                    cursor: "pointer"
                },
                "launcher-opt-hover-on": {
                    color: "@theme.textColor",
                },
                "launcher-opt-hover-off": {
                    color: "@theme.textColorDarker",
                },
                "launcher-opt-config": {
                    fontSize: "22pt",
                },
                "launcher-opt-stop": {
                    fontSize: "18pt",
                    transform: "translate(4px, -5px)",
                },
                "launcher-opt-delete": {
                    fontSize: "24pt",
                    transform: "translate(4px, -4px)",
                }
            });
        }
    }
});