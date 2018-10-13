$.global.register({
    // info
    name: "PageHandler",

    // config
    path: "page", // optional assign path
    auto: true, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_PageHandler {
        constructor(args) {
            // fires on registration before this.$ is available
            // process args and check / defaults

        }

        registered() {

        }

        show (id) {
            // handle main menu
            $.class.mainMenuItem.map ( (v) => {
                if (v.menu === id) {
                    // clicked
                    $.styler.set(v.refs.text, "remove main-menu-text-default");
                    $.styler.set(v.refs.text, "remove main-menu-text-not-selected");

                    $.styler.set(v, "main-menu-bg-selected");
                    $.styler.set(v.refs.text, "main-menu-text-selected");

                    v.selected = true;
                } else {
                    $.styler.set(v.refs.text, "remove main-menu-text-default");
                    $.styler.set(v.refs.text, "remove main-menu-text-not-selected");

                    $.styler.set(v, "remove main-menu-bg-selected");
                    $.styler.set(v.refs.text, "main-menu-text-not-selected");
                    v.selected = false;
                }
            });
        }
    }
});