$.global.register({
    // info
    name: "Moderator",

    // config
    path: "pages.moderator", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Moderator {
        constructor(args) {
            // GUI here
            $.id.content.appendChild(
                $.create.div({
                        id: "page.moderator",
                        styler: "page-launcher"
                    },

                    // Launcher Test test
                    $.create.p({textContent: "Mod"})
                ),
            )
        }

        show () {
            $.styler.set($.id.page.moderator, "show-page");
        }

        hide () {
            $.styler.set($.id.page.moderator, "hide-page");
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        stylesheet() {
            $.styler.create({

            });
        }
    }
});