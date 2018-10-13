$.global.register({
    // info
    name: "menu.main",

    // config
    path: "", // optional assign path
    auto: true, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class MainMenu
    {
        constructor()
        {
            // fires on registration before this.$ is available
            // process args and check / defaults

        }

        registered () {
            this.stylesheet(); // create the stylesheet
        }

        create (args) {
            return (
                $.create.div()
            )
        }

        stylesheet () {
            $.styler.create({


            });
        }
    }
});