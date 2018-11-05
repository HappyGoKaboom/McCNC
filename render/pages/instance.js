$.global.register({
    // info
    name: "Instance",

    // config
    path: "pages.instance", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Instance {
        constructor(args) {
            ipcRenderer.on("instance", this.IPC);

            // GUI here
            $.id.content.appendChild(
                $.create.div({
                        id: "page.instance",
                        styler: "page-instance"
                    },
                    // Game Types (vanilla or modded)
                    $.create.div({
                            id: "instance.type",
                            styler: ["instance-type", "instance-shown"],
                        },
                        $.create.p({
                            textContent: "Create New Instance",
                            styler: "instance-title"
                        }),
                        new $.components.hLine({style: "left"}),
                        $.create.p({
                            textContent: "Select the game type you want to play.",
                            styler: "instance-desc"
                        }),
                        // ---------------------------------
                        $.create.div({
                                styler: "instance-type-opts",
                            },
                            $.create.div({
                                event: {
                                    click: () => {
                                        // next
                                        $.styler.set($.id.instance.type, "swap instance-shown/instance-hidden");
                                        $.styler.set($.id.instance.final, "swap instance-hidden/instance-shown");
                                    }
                                },
                                styler: ["instance-label", "event hover instance-label-hl-on/instance-label-hl-off"],
                                },
                                $.create.p({
                                    textContent: "Vanilla",
                                    styler: "instance-label-left"
                                }),
                                $.create.p({
                                    textContent: "-",
                                    styler: "instance-label-sep"
                                }),
                                $.create.p({
                                    textContent: "Vanilla Minecraft with no mods.",
                                    styler: "instance-label-right"
                                }),
                            ),
                            $.create.div({
                                    event: {
                                        click: () => {
                                            // next
                                            $.styler.set($.id.instance.type, "swap instance-shown/instance-hidden");
                                            $.styler.set($.id.instance.files, "swap instance-hidden/instance-shown");
                                        }
                                    },
                                    styler: ["instance-label", "event hover instance-label-hl-on/instance-label-hl-off"],
                                },
                                $.create.p({
                                    textContent: "Modded",
                                    styler: "instance-label-left"
                                }),
                                $.create.p({
                                    textContent: "-",
                                    styler: "instance-label-sep"
                                }),
                                $.create.p({
                                    textContent: "Modded Minecraft with Forge.  Add modpack, mods, configs and plugins.",
                                    styler: "instance-label-right"
                                }),
                            ),
                        )
                    ),

                    // Add Files (mods, modpacks and configs)
                    $.create.div({
                            id: "instance.files",
                            styler: ["instance-type", "instance-hidden"],
                        },
                        $.create.p({
                            textContent: "Add Files",
                            styler: "instance-title"
                        }),
                        new $.components.hLine({style: "left"}),
                        $.create.p({
                            textContent: "Add modpack or add a selection of mods, configs or plugins (if you are setting up a server)",
                            styler: "instance-desc"
                        }),
                        $.styler.append(new $.components.button({text: "Back", callback: () => {
                                $.styler.set($.id.instance.files, "swap instance-shown/instance-hidden");
                                $.styler.set($.id.instance.type, "swap instance-hidden/instance-shown");
                            }}), "instance-btn-left"),
                        $.styler.append(new $.components.button({text: "Next", callback: () => {
                                $.styler.set($.id.instance.files, "swap instance-shown/instance-hidden");
                                $.styler.set($.id.instance.final, "swap instance-hidden/instance-shown");
                            }}), "instance-btn-right"),
                        // ---------------------------------
                        $.create.div({
                            styler: "instance-files-cont"
                            },
                            // Add section
                            $.create.div({
                                styler: "instance-files-add"
                                },
                                $.create.p({
                                    styler: "instance-files-subheader",
                                    textContent: "Add"
                                }),
                                $.create.p({
                                    type: "subitem",
                                    event: {
                                        click: this.selectRepo.bind(this, "modpacks"),
                                    },
                                    styler: [
                                        "instance-files-subitem",
                                        "event hover instance-files-subitem-on/instance-files-subitem-off",
                                        "event click set instance-files-subitem-select",
                                    ],
                                    textContent: "Modpack"
                                }),
                                $.create.p({
                                    type: "subitem",
                                    event: {
                                        click: this.selectRepo.bind(this, "mods"),
                                    },
                                    styler: [
                                        "instance-files-subitem",
                                        "event hover instance-files-subitem-on/instance-files-subitem-off",
                                        "event click set instance-files-subitem-select",
                                    ],
                                    textContent: "Mods"
                                }),
                                $.create.p({
                                    type: "subitem",
                                    event: {
                                        click: this.selectRepo.bind(this, "configs"),
                                    },
                                    styler: [
                                        "instance-files-subitem",
                                        "event hover instance-files-subitem-on/instance-files-subitem-off",
                                        "event click set instance-files-subitem-select",
                                    ],
                                    textContent: "Configs"
                                }),
                                $.create.p({
                                    type: "subitem",
                                    event: {
                                        click: this.selectRepo.bind(this, "plugins"),
                                    },
                                    styler: [
                                        "instance-files-subitem",
                                        "event hover instance-files-subitem-on/instance-files-subitem-off",
                                        "event click set instance-files-subitem-select",
                                    ],
                                    textContent: "Plugins"
                                }),
                                ),
                            $.create.div({
                                    styler: "instance-files-repo"
                                },
                                $.create.p({
                                    styler: "instance-files-subheader",
                                    textContent: "Repo"
                                }),
                            ),
                            $.create.div({
                                    styler: "instance-files-instance"
                                },
                                $.create.p({
                                    styler: "instance-files-subheader",
                                    textContent: "Instance"
                                }),
                            ),
                            )
                    ),

                    // Finalize (args, versions and backup)
                    $.create.div({
                            id: "instance.final",
                            styler: ["instance-type", "instance-hidden"],
                        },
                        $.create.p({
                            textContent: "Finalize the Instance",
                            styler: "instance-title"
                        }),
                        new $.components.hLine({style: "left"}),
                        $.create.p({
                            textContent: "Set versions, Java args, memory and backup settings",
                            styler: "instance-desc"
                        }),
                        $.styler.append(new $.components.button({text: "Back", callback: () => {
                                $.styler.set($.id.instance.final, "swap instance-shown/instance-hidden");
                                $.styler.set($.id.instance.files, "swap instance-hidden/instance-shown");
                            }}), "instance-btn-left"),
                        $.styler.append(new $.components.button({text: "Done", callback: () => {
                                // add instance and show it in the launchers section
                            }}), "instance-btn-right"),
                        // ---------------------------------

                    ),
                ),
            );
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        selectRepo (which) {
            console.log("click")
            // get files for the repo
            ipcRenderer.send("repo", {
                action: "get",
                repo: which,
                ipc: "instance",
            });

        }

        IPC (ev,data) {
            switch (data.action) {
                case "fileList":

                    break;
            }
        }

        show () {
            $.styler.set($.id.page.instance, "show-page");
        }

        hide () {
            $.styler.set($.id.page.instance, "hide-page");
        }

        stylesheet() {
            $.styler.create({
                "page-instance": {
                    position: "absolute",
                    width: "80%",
                    height: "100%",
                    display: "grid",
                    gridTemplateColumns: "15% auto 15%",
                    gridTemplateRows: "repeat(100, auto)",
                },
                "instance-type": {
                    position: "absolute",
                    height: "100%",
                    width: "90%",
                    left: "5%",
                    transition: $.prefix.bind("opacity 250ms"),
                },
                "instance-title": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "24pt",
                    textAlign: "left",
                    margin: "20px 0px 0px 0px",
                    paddingLeft: "48px",
                },
                "instance-desc": {
                    color: "@theme.textColorDark",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "16pt",
                    fontStyle: "italic",
                    textAlign: "left",
                    margin: "0px 0px",
                    paddingLeft: "96px",
                },
                "instance-files": {
                    position: "absolute",
                    height: "100%",
                    width: "90%",
                    left: "5%",
                    transition: $.prefix.bind("opacity 250ms"),
                },
                "instance-final": {
                    position: "absolute",
                    height: "100%",
                    width: "90%",
                    left: "5%",
                    transition: $.prefix.bind("opacity 250ms"),
                },
                "instance-hidden": {
                    opacity: 0,
                    pointerEvents: "none",
                },
                "instance-shown": {
                    opacity: 1,
                    pointerEvents: "inherit",
                },
                "instance-btn-right": {
                    position: "absolute",
                    height: "36px",
                    width: "180px",
                    bottom: "20px",
                    right: "0px"
                },
                "instance-btn-left": {
                    position: "absolute",
                    height: "36px",
                    width: "180px",
                    bottom: "20px",
                    right: "200px"
                },
                "instance-label": {
                    display: "grid",
                    gridTemplateColumns: "auto auto auto",
                    alignContent: "center",
                    justifyContent: "left",
                    alignItems: "baseline",
                    paddingLeft: "120px",
                    transition: $.prefix.bind("background 250ms, transform 150ms"),
                },
                "instance-label-left": {
                    color: "@theme.textColorVivid",
                    fontFamily: "Audiowide",
                    fontSize: "24pt",
                    margin: "0",
                    padding: "0",
                    letterSpacing: "4px",
                },
                "instance-label-left-hl-on": {
                    color: "@theme.textColorIntense",
                },
                "instance-label-left-hl-off": {
                    color: "@theme.textColorVivid",
                },
                "instance-label-hl-on": {
                    background: (el) => {
                        $.styler.set(el.firstElementChild, "instance-label-left-hl-on");
                        return "linear-gradient(90deg, transparent, "+($.theme.default.backColorLighter)+", transparent)";
                    },
                    transform: "translateX(8px)",
                },
                "instance-label-hl-off": {
                    background: (el) => {
                        $.styler.set(el.firstElementChild, "instance-label-left-hl-off");
                        return "unset";
                    },
                    transform: "translateX(0px)",
                },
                "instance-label-sep": {
                    color: "@theme.textColorDarker",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "16pt",
                    padding: "0 6px",
                    margin: "0",
                },
                "instance-label-right": {
                    color: "@theme.textColorDark",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "16pt",
                    fontStyle: "italic",
                    margin: "0",
                    padding: "0",
                },
                "instance-type-opts": {
                    marginTop: "52px"
                },
                "instance-files-cont": {
                    display: "grid",
                    gridTemplateColumns: "4.5% 30% 30% 30% 4.5%",
                    gridColumnGap: "16px",
                },
                "instance-files-add": {
                    gridColumnStart: "2",
                    gridRowStart: "1",
                },
                "instance-files-repo": {
                    gridColumnStart: "3",
                    gridRowStart: "1",
                },
                "instance-files-instance": {
                    gridColumnStart: "4",
                    gridRowStart: "1",
                },
                "instance-files-subheader": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "16pt",
                    letterSpacing: "2px",
                    borderBottom: "2px solid",
                    borderColor: "@theme.borderColor",
                },
                "instance-files-subitem": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "14pt",
                    borderLeft: "6px solid transparent",
                    boxSizing: "border-box",
                    margin: "0px 48px",
                    padding: "8px 0px 8px 8px",
                },
                "instance-files-subitem-select": {
                    f: (el) => {
                        for (let v in el.parentElement.children) {
                            let item = el.parentElement.children[v];

                            if (item.type === "subitem") {
                                if (item === el) {
                                    if (el.selected) {
                                        // selected
                                        el.selected = false;

                                    } else {
                                        // not
                                        el.selected = true;
                                        $.styler.set(item, "instance-files-subitem-selected");
                                    }
                                } else {
                                    item.selected = false;
                                    $.styler.set(item, "instance-files-subitem-off");
                                }
                            }
                        }
                    }
                },
                "instance-files-subitem-selected": {
                    color: "@theme.textColorIntense",
                    borderLeft: "6px solid",
                    borderColor: "@theme.textColorIntense"
                },
                "instance-files-subitem-on": {
                    color: (el) => {if (!el.selected) {return "@theme.textColorLight"}},
                    borderLeft: (el) => {if (!el.selected) {return "6px solid"}},
                    borderColor: (el) => {if (!el.selected) {return "@theme.textColorDark"}}
                },
                "instance-files-subitem-off": {
                    color: (el) => {if (!el.selected) {return "@theme.textColor"}},
                    borderLeft: (el) => {if (!el.selected) {return "6px solid"}},
                    borderColor: (el) => {if (!el.selected) {return "transparent"}}
                }
            });
        }
    }
});