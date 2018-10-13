$.global.register({
    // info
    name: "button",

    // config
    path: "components.button", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_Button {
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
                        event: {
                            click: arg.callback
                        },
                        styler: [
                            "button-container",
                            "event hover button-cont-on/button-cont-off"
                        ]},
                    $.create.p({
                        textContent: arg.text,
                        styler: [
                            "button-text"
                        ]
                    })
                )
            )
        }

        stylesheet() {
            $.styler.create({
                "button-container": {
                    border: "2px solid",
                    borderRadius: "25px",
                    transition: $.prefix.bind("border 250ms, color 250ms, background-color 250ms"),
                    borderColor: "@theme.textColor",
                    backgroundColor: "@theme.backColor",
                    color: "@theme.textColor",
                    overflow: "hidden",
                    height: "24px",
                    cursor: "default",
                    margin: "2px",
                },
                "button-cont-on": {
                    // borderColor: "@theme.backColor",
                    backgroundColor: "@theme.textColor",
                    color: "@theme.backColor",
                },
                "button-cont-off": {
                    // borderColor: "@theme.textColor",
                    backgroundColor: "@theme.backColor",
                    color: "@theme.textColor",
                },
                "button-text": {
                    fontFamily: "@theme.buttonFont",
                    padding: "0",
                    margin: "auto",
                    textAlign: "center"
                }
            });
        }
    }
});