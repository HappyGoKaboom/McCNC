$.global.register({
    // info
    name: "Settings",

    // config
    path: "pages.settings", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Settings {
        constructor(args) {
            // GUI here
            $.id.content.appendChild(
                $.create.div({
                        id: "page.settings",
                        styler: "page-launcher"
                    },

                    // Launcher Test test
                    $.create.p({textContent: "Settings"})
                ),
            )
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        show () {
            $.styler.set($.id.page.settings, "show-page");
        }

        hide () {
            $.styler.set($.id.page.settings, "hide-page");
        }

        stylesheet() {
            $.styler.create({

            });
        }
    }
});