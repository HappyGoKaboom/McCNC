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