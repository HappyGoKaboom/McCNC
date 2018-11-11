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
            listenIPC("instance", this.IPC);
            this.getJavaArgs();

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
                                $.create.div({id: "instance.repolist"})
                            ),
                            $.create.div({
                                    styler: "instance-files-instance"
                                },
                                $.create.p({
                                    styler: "instance-files-subheader",
                                    textContent: "Instance"
                                }),
                                $.create.div({
                                    id: "instance.filelist",
                                    },
                                    // need to create each individual list (mod, modpack, config, etc)

                                )
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
                        $.create.div({
                                styler: "instance-final-cont"
                            },
                            // Versions section
                            $.create.div({
                                    styler: "instance-final-versions"
                                },
                                $.create.p({
                                    styler: "instance-final-subheader",
                                    textContent: "Versions"
                                }),
                                // Minecraft version Drop down
                                $.styler.append(
                                    new $.components.dropdown({
                                        label: "Minecraft",
                                        list: [
                                            {text: "0.12.0", value: "0.12.0"},
                                            {text: "0.12.1", value: "0.12.1"},
                                            {text: "0.12.3", value: "0.12.3"},
                                        ]
                                    }),
                                "instance-version-margin"),
                                // Java version Drop down
                                $.styler.append(
                                    new $.components.dropdown({
                                        label: "Java",
                                        list: [
                                            {text: "0.12.0", value: "0.12.0"},
                                            {text: "0.12.1", value: "0.12.1"},
                                            {text: "0.12.3", value: "0.12.3"},
                                        ]
                                    }),
                                "instance-version-margin"),
                                // Forge version Drop down
                                $.styler.append(
                                    new $.components.dropdown({
                                        label: "Forge",
                                        list: [
                                            {text: "0.12.0", value: "0.12.0"},
                                            {text: "0.12.1", value: "0.12.1"},
                                            {text: "0.12.3", value: "0.12.3"},
                                        ]
                                    }),
                                "instance-version-margin"),
                            ),
                            // Settings section (backups and any extras)
                            $.create.div({
                                    styler: "instance-final-settings"
                                },
                                $.create.p({
                                    styler: "instance-final-subheader",
                                    textContent: "Settings"
                                }),
                                // Backup policy, snapshot frequency and where

                            ),
                            // Java section
                            $.create.div({
                                    styler: "instance-final-java"
                                },
                                $.create.p({
                                    styler: "instance-final-subheader",
                                    textContent: "Java"
                                }),
                                // Java args and memory
                                this.createJavaArgs(),
                            ),

                        ),
                    ),
                ),
            );
        }

        getJavaArgs() {
            ipcRenderer.send("java", {
                action: "getFlags",
                ipc: "instance",
            });
        }

        createJavaArgs() {

        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        selectRepo (which) {
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
                    // create list viewer
                    let itemlist = {};
                    let list = {};

                    $.append(data.folders, itemlist);
                    $.append(data.files, itemlist);

                    /* @TODO
                            Change events to select / deselect and add remove accordingly
                     */
                    for (let n in itemlist) {
                        if (itemlist.hasOwnProperty(n)) {
                            list[n] = {
                                data: itemlist[n],
                                text: itemlist[n].slice(itemlist[n].lastIndexOf("/")+1),
                                select: true,
                                on: {
                                    select: (ev) => {
                                        // Add to instance list
                                        $.id.instance.list[data.repo].add($.id.instance.list[data.repo], {
                                            data: itemlist[n],
                                            text: itemlist[n].slice(itemlist[n].lastIndexOf("/")+1),
                                            select: true,
                                            on: {
                                                click: (ev) => {
                                                    // remove from instance list and deselect item
                                                    for (let n in $.id.instance.repo[data.repo].children) {
                                                        if ($.id.instance.repo[data.repo].children.hasOwnProperty(n)) {
                                                            if ($.id.instance.repo[data.repo].children[n].data ===  ev.target.data) {
                                                                // deselect
                                                                $.styler.setSelectOff($.id.instance.repo[data.repo].children[n]);
                                                                $.styler.setHoverOff($.id.instance.repo[data.repo].children[n]);
                                                            }
                                                        }
                                                    }

                                                    ev.target.remove(ev.target);
                                                },
                                            }
                                        });
                                    },
                                    unselect: (ev) => {
                                        // remove from instance list
                                        for (let n in $.id.instance.list[data.repo].children) {
                                            if ($.id.instance.list[data.repo].children.hasOwnProperty(n)) {
                                                if ($.id.instance.list[data.repo].children[n].data === ev.target.data) {
                                                    // deselect
                                                    $.id.instance.list[data.repo].children[n].remove($.id.instance.list[data.repo].children[n])
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    // create each list for mods, modpack, config etc
                    if (!$.id.instance.repo) {
                        $.id.instance.repo = {};
                    }

                    if (!$.id.instance.repo[data.repo]) {
                        // does not exist so create it
                        $.id.instance.repolist.appendChild(
                            $.styler.append(new $.components.list({
                                id: "instance.repo." + data.repo,
                                list: list
                            }), ["instance-file-list", "instance-repo-hidden"])
                        );

                        $.id.instance.filelist.appendChild(
                            $.styler.append(new $.components.list({
                                id: "instance.list."+data.repo,
                                list: {}
                            }), ["instance-file-list", "instance-repo-hidden"])
                        )

                    } else {
                        // @TODO exists do not create any more lists just update it
                    }

                    for (let n in $.id.instance.repo) {
                        if (n === data.repo) {
                            $.styler.set($.id.instance.repo[n], "swap instance-repo-hidden/instance-repo-shown");
                            $.styler.set($.id.instance.list[n], "swap instance-repo-hidden/instance-repo-shown");
                        } else {
                            $.styler.set($.id.instance.repo[n], "swap instance-repo-shown/instance-repo-hidden");
                            $.styler.set($.id.instance.list[n], "swap instance-repo-shown/instance-repo-hidden");
                        }
                    }
                    break;
                case "javaArgs":

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
                    height: "75%",
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
                },
                "instance-file-list": {
                    height: "calc(100% - 62px)",
                },
                "instance-repo-hidden": {
                    display: "none",
                },
                "instance-repo-shown": {
                    display: "initial",
                },
                "instance-final-cont": {
                    display: "grid",
                    gridTemplateColumns: "4.5% 30% 30% 30% 4.5%",
                    gridColumnGap: "16px",
                    height: "75%",
                },
                "instance-final-versions": {
                    gridColumnStart: "2",
                    gridRowStart: "1",
                },
                "instance-final-java": {
                    gridColumn: "3/5",
                    gridRowStart: "1",
                },
                "instance-final-settings": {
                    gridColumnStart: "2",
                    gridRowStart: "2",
                },
                "instance-final-subheader": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "16pt",
                    letterSpacing: "2px",
                    borderBottom: "2px solid",
                    borderColor: "@theme.borderColor",
                },
                "instance-final-subitem": {
                    color: "@theme.textColor",
                    fontFamily: "@theme.defaultFont",
                    fontSize: "14pt",
                    borderLeft: "6px solid transparent",
                    boxSizing: "border-box",
                    margin: "0px 48px",
                    padding: "8px 0px 8px 8px",
                },
                "instance-version-margin": {
                    margin: "8px 0px 8px 48px"
                }
            });
        }
    }
});