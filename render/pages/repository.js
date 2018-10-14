$.global.register({
    // info
    name: "Repository",

    // config
    path: "pages.repository", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Repository {
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