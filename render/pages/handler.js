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

        setup () {
            this.stylesheet();

            for (let n in $.pages) {
                $[n] = new $.pages[n]();
            }
        }

        show (id) {
            // handle main menu items
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

            // show page
            let lid = id.toLowerCase();

            for (let n in $.id.page) {
                if ($.id.page.hasOwnProperty(n)) {
                    if (n === lid) {
                        console.log(n)

                        $.pages[n].prototype.show();
                    } else {
                        $.pages[n].prototype.hide();
                    }
                }
            }


        }

        stylesheet() {
            $.styler.create({
                "show-page": {
                    opacity: 1,
                    pointerEvents: "all",
                },
                "hide-page": {
                    opacity: 0,
                    pointerEvents: "none",
                },
            });
        }
    }
});