$.global.register({
    // info
    name: "theme.default",

    // config
    path: "theme.default", // optional assign path
    auto: true, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Launcher {
        constructor(args) {
            // fires on registration before this.$ is available
            // process args and check / defaults

            // if (!args){args = {}}
            //
            // let spec = {
            //     text: "Button",
            //     callback: () => {console.log("Pressed")}
            // };
            //
            // $.append(args, spec, true);

            // let component = this.create.call($.components.button.prototype, spec);

            // if (args.id)
            // {
            //     $.plugins.features.id_set(args.id, component);
            // }
            //
            // return component;
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        stylesheet() {
            $.styler.create({});
        }
    }
});