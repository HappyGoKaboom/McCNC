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
                            "event hover launcher-hover/launcher-hover-off"
                        ]},
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
                                styler: "launcher-play"
                            }
                        )
                    )
                )
            )
        }

        launch () {

        }

        stylesheet() {
            $.styler.create({
                "launcher-container": {
                    gridColumnStart: "2"
                },
                "launcher-hover": {

                },
                "launcher-hover-off": {

                },
                "launcher-title": {
                    fontSize: "28pt",
                    fontFamily: "@theme.defaultFont",
                    color: "@theme.textColor",
                },
                "launcher-info-text": {
                    fontSize: "@theme.defaultFontSize",
                    fontFamily: "@theme.defaultFont",
                    color: "@theme.textColor",
                },
                "launcher-circle": {
                    border: "6px solid lightgray",
                    borderRadius: "50%",
                },
                "launcher-play": {
                    borderTop: "hidden",
                    borderBottom: "hidden",
                    borderLeft: "hidden",
                    borderRight: "50px solid green",
                },
                "launcher-play-container": {

                }
            });
        }
    }
});