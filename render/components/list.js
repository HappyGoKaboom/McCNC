$.global.register({
    // info
    name: "list",

    // config
    path: "components.list", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_ListType {
        constructor(args) {
            // fires on registration before this.$ is available
            // process args and check / defaults
            return this.create(args);
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        create(args) {
            console.log(args)
            return ($.create.div({
                        id: args.id ? args.id : "",
                        add: this.add.bind(this),
                        remove: this.remove.bind(this),
                        styler: [
                            "list-container",
                        ]},
                    // list goes here
                    ( () => {
                        let list = document.createDocumentFragment();

                        for (let n in args.list) {
                            list.appendChild(
                                $.create.p({
                                    data: args.list[n].data,
                                    selectable: args.select ? args.select : true,
                                    textContent: args.list[n].text,
                                    isItem: true,
                                    on: args.list[n].on ? args.list[n].on : {},
                                    add: this.add.bind(this),
                                    remove: this.remove.bind(this),
                                    events: {
                                        click: this.click,
                                    },
                                    styler: [
                                        "list-item",
                                        "event hover list-hl-on/list-hl-off",
                                        "event select list-hl-select/list-hl-on ",
                                        ]
                                })
                            );
                        }

                        return list;
                    } )()
                )
            )
        }

        add (target, args, ref) {
            if (!target && this) {
                target = this;
            }

            if (!args) {
                args = {};
            }

            if (ref) {
                target.parentNode.insertBefore(
                    $.create.p({
                        data: args.data,
                        textContent: args.text,
                        isItem: true,
                        on: args.on ? args.on : {},
                        add: this.add.bind(this),
                        remove: this.remove.bind(this),
                        events: {
                            click: this.click,
                        },
                        styler: [
                            "list-item",
                            "event hover list-hl-on/list-hl-off",
                            "event select list-hl-select/list-hl-on",
                        ]
                    })
                , ref)
            } else {
                target.appendChild(
                    $.create.p({
                        data: args.data,
                        textContent: args.text,
                        isItem: true,
                        on: args.on ? args.on : {},
                        add: this.add.bind(this),
                        remove: this.remove.bind(this),
                        events: {
                            click: this.click,
                        },
                        styler: [
                            "list-item",
                            "event hover list-hl-on/list-hl-off",
                            "event select list-hl-select/list-hl-on",
                        ]
                    })
                )
            }
        }

        remove (target) {
            if (!target && this) {
                target = this;
            }

            target.parentNode.removeChild(target)
        }

        click (ev) {
            if (ev.target.selectable) {
                if (ev.selected) {
                    ev.selected = false;
                    $.styler.set(ev.target, "list-unselect");

                    if (ev.target.on.select) {
                        ev.target.on.select.call(ev.target, ev.target);
                    }
                } else {
                    ev.selected = true;
                    $.styler.set(ev.target, "list-select");

                    if (ev.target.on.select) {
                        ev.target.on.unselect.call(ev.target, ev.target);
                    }
                }
            }

            if (ev.target.on.click) {
                ev.target.on.click.call(ev.target, {event: "click", target: ev.target});
            }
        }

        stylesheet() {
            $.styler.create({
                "list-container": {
                    position: "relative",
                    overflowX: "hidden",
                    overflowY: "scroll",
                },
                "list-item": {
                    fontFamily: "@theme.defaultFont",
                    fontSize: "12pt",
                    textAlign: "left",
                    margin: "2px 4px",
                    transition: $.prefix.bind("background-color 250ms"),
                    padding: "4px 14px",
                    backgroundColor: "unset",
                    color: "@theme.textColor",
                },
                "list-hl-on": {
                    backgroundColor: "@theme.backColorLighter",
                    color: "@theme.textColor",
                },
                "list-hl-off": {
                    backgroundColor: "unset",
                    color: "@theme.textColor",
                },
                "list-select": {
                    backgroundColor: "@theme.textColor",
                    color: "@theme.backColor",
                },
            });
        }
    }
});