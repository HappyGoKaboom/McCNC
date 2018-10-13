$.global.register({
    // info
    name: "textbox",

    // config
    path: "components.textbox", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [],

    // instance
    instance: class c_Switch
        {
            constructor(args)
                {
                    // fires on registration before this.$ is available
                    // process args and check / defaults
                    if (!args){args = {}}

                    let spec = {
                        placeholder: "",
                        value: "",
                        events: {},
                        label: "",
                        cols: "30% 70%",
                        type: "",
                    };

                    $.append(args, spec, true);

                    let component = this.create.call($.components.textbox.prototype, spec);

                    return component;
                }

            registered () {
                this.stylesheet(); // create the stylesheet
            }

            create (args) {
                return (
                    $.create.div({
                        id: args.id ? args.id : null,
                        styler: "c-textbox",
                        refs: true,
                        style: {
                            gridTemplateColumns: args.cols
                            }
                        },
                        $.create.p({
                            styler: "c-textbox-label",
                            ref: "label",
                            textContent: args.label,
                            },
                        ),

                        $.create.input({
                            styler: "c-textbox-input",
                            ref: "input",
                            attributes: {
                                type: args.type,
                                placeholder: args.placeholder
                            },
                            textContent: args.value,
                        }),
                    )
                )
            }

            stylesheet () {
                $.styler.create({
                    "c-textbox": {
                        display: "grid",
                        margin: "4px",
                        height: "24px",
                    },
                    "c-textbox-label": {
                        color: "#6d85a9",
                        fontSize: "12pt",
                        letterSpacing: "0px",
                        fontFamily: "ubuntu",
                        margin: "auto 0px 0px",
                        padding: "2px"
                    },
                    "c-textbox-input": {
                        backgroundColor: "#dfe3ec",
                        border: "none",
                        padding: "4px 22px",
                        boxSizing: "border-box",
                        color: "#6d85a9",
                        fontSize: "11pt",
                        letterSpacing: "0px",
                        fontFamily: "ubuntu",
                        borderRadius: "30px",
                        outline: "none",
                    },
                });
            }
        }
});