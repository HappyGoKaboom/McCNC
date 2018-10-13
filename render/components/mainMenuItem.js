$.global.register({
    // info
    name: "MainMenuItem",

    // config
    path: "components.mainMenuItem", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_MainMenuItem {
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
                styler: [
                    "set main-menu-bg",
                    "event hover main-menu-bg-on/main-menu-bg-off"
                ]},
                $.create.p({
                    textContent: arg,
                    styler: [
                        "set main-menu-text"
                    ]
                })
            )
            )
        }

        stylesheet() {
            $.styler.create({
                "main-menu-bg": {
                    position: "relative",
                    padding: "12px 0px 12px 0px",
                },
                "main-menu-bg-on": {
                    backgroundColor: "@theme.backColorLighter",
                },
                "main-menu-bg-off": {
                    backgroundColor: "unset",
                },
                "main-menu-text": {
                    color: "@theme.textColor",
                    fontSize: "@theme.mainMenuTextSize",
                    fontFamily: "@theme.mainMenuFont",
                    letterSpacing: "@theme.mainMenuTextSpacing",
                    userSelect: $.prefix.bind("none"),
                    padding: "0px 48px",
                    margin: "0px",
                }
            });
        }
    }
});