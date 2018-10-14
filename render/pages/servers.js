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