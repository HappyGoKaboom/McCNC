$.global.register({
    // info
    name: "Servers",

    // config
    path: "pages.servers", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Servers {
        constructor(args) {
            // GUI here
            $.id.content.appendChild(
                $.create.div({
                        id: "page.servers",
                        styler: "page-launcher"
                    },

                    // Launcher Test test
                    $.create.p({textContent: "Server"})
                ),
            )
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        show () {
            $.styler.set($.id.page.servers, "show-page");
        }

        hide () {
            $.styler.set($.id.page.servers, "hide-page");
        }

        stylesheet() {
            $.styler.create({

            });
        }
    }
});