$.global.register({
    // info
    name: "Admin",

    // config
    path: "pages.admin", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Admin {
        constructor(args) {
            // GUI here
            $.id.content.appendChild(
                $.create.div({
                        id: "page.admin",
                        styler: "page-launcher"
                    },

                    // Launcher Test test
                    $.create.p({textContent: "Admin"})
                ),
            )
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        show () {
            $.styler.set($.id.page.admin, "show-page");
        }

        hide () {
            $.styler.set($.id.page.admin, "hide-page");
        }

        stylesheet() {
            $.styler.create({

            });
        }
    }
});