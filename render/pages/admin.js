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