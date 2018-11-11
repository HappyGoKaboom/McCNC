$.global.register({
    // info
    name: "H-Line",

    // config
    path: "components.hLine", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_HLine {
        constructor(args) {
            // fires on registration before this.$ is available
            // process args and check / defaults
            if (!args){args = {}}

            let spec = {
                style: "centered", // left or right
            };

            $.append(args, spec, true);
            return this.create.call(this, spec);
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        create(arg) {
            return ($.create.div({
                        styler: [
                            "h-line",
                            (() => {
                                switch (arg.style) {
                                    case "centered":
                                        return "line-grad-1";
                                    case "left":
                                        return "line-grad-2";
                                    case "right":
                                        return "line-grad-3";
                                }
                            })(),
                            [arg.styler]
                            ],
                        },
                )
            )
        }

        stylesheet() {
            $.styler.create({
                "h-line": {
                    position: "relative",
                    height: "2px",
                    width: "100%",
                },
                "line-grad-1": {
                    background: "linear-gradient(90deg, transparent, "+$.theme.current.textColorDark+", transparent)",
                },
                "line-grad-2": {
                    background: "linear-gradient(90deg, transparent 0%, "+$.theme.current.textColorDark+" 0%, transparent)",
                },
                "line-grad-3": {
                    background: "linear-gradient(90deg, transparent 0%, "+$.theme.current.textColorDark+" 100%, transparent)",
                },
            });
        }
    }
});

$.global.register({
    // info
    name: "V-Line",

    // config
    path: "components.vLine", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_VLine {
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
                        styler: ["v-line", [arg.styler]],
                    },
                )
            )
        }

        stylesheet() {
            $.styler.create({
                "v-line": {
                    position: "relative",
                    width: "2px",
                    background: "linear-gradient(0deg, transparent, "+$.theme.current.textColorDarker+", transparent)",
                    height: "100%",
                },

            });
        }
    }
});