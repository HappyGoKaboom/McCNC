$.global.register({
    // info
    name: "repo",

    // config
    path: "components.repo", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class c_Repository
    {
        constructor(args)
        {
            // fires on registration before this.$ is available
            // process args and check / defaults
            return this.create(args);
        }

        registered () {
            this.stylesheet(); // create the stylesheet
        }

        create (args) {
            return (
                $.create.div({
                    id: args.id,
                    styler: [
                            "repo-container",
                            "event hover repo-hover-on/repo-hover-off"
                        ],
                    events: {
                        click: args.callback,
                        // these two events are required like so to enable drop event
                        dragenter: (ev) => {ev.preventDefault()},
                        dragover: (ev) => {ev.preventDefault()},
                        drop: args.drop,
                    }
                    },
                    $.create.p({
                        textContent: args.text,
                        styler: "repo-text"
                    }),
                    $.create.p({
                        textContent: (args.files ? args.files : 0) + (args.folders ? args.folders : 0),
                        styler: "repo-text-items"
                    }),

                )
            )
        }

        stylesheet () {
            $.styler.create({
                "repo-container": {
                    border: "1px solid",
                    borderColor: "@theme.backColorLighter",
                    borderRadius: "35px",
                    height: "80px",
                    transition: $.prefix.bind("background-color 250ms"),
                    display: "grid",
                    gridTemplateColumns: "auto auto",
                },
                "repo-hover-on": {
                    backgroundColor: "@theme.backColorLighter",
                },
                "repo-hover-off": {
                    backgroundColor: "unset",
                },
                "repo-text": {
                    fontSize: "18pt",
                    fontFamily: "@theme.defaultFont",
                    color: "@theme.textColor",
                    padding: "20px",
                    margin: "0",
                },
                "repo-text-items": {
                    fontSize: "14pt",
                    fontFamily: "@theme.defaultFont",
                    color: "#548e79",
                    padding: "20px",
                    margin: "0",
                    textAlign: "right"
                }
            });
        }
    }
});