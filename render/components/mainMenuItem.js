$.global.register({
    // info
    name: "MainMenuItem",

    // config
    path: "components.mainMenuItem", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_MainMenuItem {
        constructor(args) {
            // fires on registration before this.$ is available
            // process args and check / defaults
            return this.create(args);
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        create(arg) {
            return (
                $.create.div({
                    event: {
                        click: arg.callback
                    },
                    class: "mainMenuItem",
                    id: "mainMenuItem_"+arg.text,
                    ref: "menu",
                    refs: true,
                    menu: arg.text,
                    selected: false,
                    styler: [
                        "main-menu-bg",
                        "event hover main-menu-bg-on/main-menu-bg-off"
                    ]},
                    $.create.p({
                        ref: "text",
                        textContent: arg.text,
                        styler: [
                            "main-menu-text-default",
                            "main-menu-text"
                        ]
                    })
                )
            )
        }

        stylesheet() {
            $.styler.create({
                "main-menu-bg": {
                    position: "relative",
                    height: "72px",
                    transition: $.prefix.bind(
                        "transform 150ms, height 150ms, opacity 150ms")
                },
                "main-menu-bg-on": {
                    background: (el) => {return (el.selected ? false : "linear-gradient(90deg, transparent, "+($.theme.current.backColorLighter)+", transparent)")},
                },
                "main-menu-bg-off": {
                    background: (el) => {return (el.selected ? false : "unset")},
                },
                "main-menu-bg-selected": {
                    background: "linear-gradient(90deg, transparent, "+($.theme.current.backColorLighter)+", transparent)",
                },
                "main-menu-text": {
                    top: "50%",
                    position: "relative",
                    fontSize: "@theme.mainMenuTextSize",
                    fontFamily: "@theme.mainMenuFont",
                    userSelect: $.prefix.bind("none"),
                    padding: "0px 48px",
                    margin: "0px",
                    transition: $.prefix.bind(
                        "color 150ms, letter-spacing 150ms, transform 150ms")
                },
                "main-menu-text-default": {
                    color: "@theme.textColor",
                    letterSpacing: "@theme.mainMenuTextSpacing",
                    transform: "translate(0%, -50%)",
                },
                "main-menu-text-selected": {
                    color: "@theme.textColorVivid",
                    letterSpacing: "@theme.mainMenuTextSpacingSelected",
                    transform: "translate("+(parseInt($.theme.current.mainMenuTextSpacing)*2)+"px, -50%)",
                },
                "main-menu-text-not-selected": {
                    color: "@theme.textColor",
                    letterSpacing: "@theme.mainMenuTextSpacingNotSelected",
                    transform: "translate(0%, -50%)",
                },
            });
        }
    }
});