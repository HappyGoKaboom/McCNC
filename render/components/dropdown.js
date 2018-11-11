$.global.register({
    // info
    name: "dropdown",

    // config
    path: "components.dropdown", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_Dropdown{
        constructor(args) {
            // fires on registration before this.$ is available
            // process args and check / defaults
            return this.create(args);
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        create(args) {
            return (
                $.create.div({
                    styler: "dropdown-cont"
                    },
                    $.create.p({
                        textContent: args.label,
                        styler: "dropdown-box-label"
                    }),
                    $.create.select({
                            id: "instance.version.minecraft",
                            styler: "dropdown-box-select",
                        },
                        ( () => {
                            let opts = document.createDocumentFragment();

                            if (args.list) {
                                let result = $.map(args.list, (item, k) => {
                                    // create items
                                    opts.appendChild(
                                        $.create.option({
                                            value: item.value,
                                            textContent: item.text,
                                            styler: "dropdown-box-item",
                                        })
                                    )
                                });
                            }

                            return opts;
                        } )()
                    )
                    )
            )
        }

        stylesheet() {
            $.styler.create({
                "dropdown-cont": {
                    display: "grid",
                    gridTemplateColumns: "50% 50%",
                    margin: "8px 0px"
                },
                "dropdown-box-label": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "@theme.defaultFontSize",
                    margin: "0",
                    padding: "0",
                },
                "dropdown-box-select": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "@theme.defaultFontSize",
                    backgroundColor: "@theme.backColor",
                    border: "1px solid",
                    borderColor: "@theme.textColor",
                    padding: "0px 12px",
                    borderRadius: "25px",
                    outline: $.prefix.bind("none"),
                },
                "dropdown-box-item": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "@theme.defaultFontSize",
                    border: "none",
                    outline: $.prefix.bind("none"),
                }
            });
        }
    }
});