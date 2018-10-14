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
            $.id.content.appendChild($.create.div({
                    id: "page.launcher",
                    styler: "page-launcher"
                    },

                // Launcher Test test
                new $.components.launcher(),
                new $.components.launcher(),
                new $.components.launcher(),
                ),
            )
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        stylesheet() {
            $.styler.create({
                "page-launcher": {
                    widdth: "100%",
                    height: "100%",
                    display: "grid",
                    gridTemplateColumns: "15% auto 15%",
                    gridTemplateRows: "repeat(100, auto)",
                }
            });
        }
    }
});