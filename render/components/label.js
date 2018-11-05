$.global.register({
    // info
    name: "label",

    // config
    path: "components.label", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_Label {
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
                        id: arg.id ? arg.id : null,
                        styler: "label-container",
                    },
                    $.create.p({
                        textContent: arg.text,
                        styler: [
                            "label-text"
                        ]
                    }),
                    (() => {
                        if (arg.value) {
                            if (typeof arg.value === "string") {
                                return $.create.p({
                                    textContent: arg.value,
                                    styler: "label-value"
                                });
                            } else {
                                // custom object or element
                                return arg.value;
                            }
                        }
                    })()
                )
            )
        }

        stylesheet() {
            $.styler.create({
                "label-container": {
                    display: "grid",
                    gridTemplateColumns: function (el) {return el.cols ? el.cols : "50% auto"},
                },
                "label-text": {
                    textAlign: "left",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "@theme.defaultFontSize",
                    color: "@theme.textColor",
                    padding: "0",
                    margin: "0",
                },
                "label-value": {
                    textAlign: "left",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "@theme.defaultFontSize",
                    color: "@theme.textColorVivid",
                    padding: "0",
                    margin: "0",
                }
            });
        }
    }
});