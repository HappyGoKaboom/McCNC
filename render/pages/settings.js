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