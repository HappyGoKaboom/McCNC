$.global.register({
    // info
    name: "Repository",

    // config
    path: "pages.repository", // optional assign path
    auto: false, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Repository {
        constructor(args) {
            ipcRenderer.on("repo", this.IPC);

            // GUI here
            $.id.content.appendChild(
                $.create.div({
                    id: "page.repository",
                    styler: "page-repository"
                },
                ),
            );

            this.setup = true;
        }

        registered() {
            this.stylesheet(); // create the stylesheet
        }

        show () {
            $.styler.set($.id.page.repository, "show-page");
        }

        hide () {
            $.styler.set($.id.page.repository, "hide-page");
        }

        dropHandler (ev) {
            // check file types are valid

            // if valid show progress bar

            // IPC transfer files
            for (let n in ev.dataTransfer.files) {
                if (ev.dataTransfer.files.hasOwnProperty(n)) {
                    // check exists
                    ipcRenderer.send("repo", {
                        action: "drop",
                        to: this.path,
                        what: ev.dataTransfer.files[n].path,
                    });
                }
            }

            // update progress

            // once done
        }

        IPC (ev, data) {
            switch (data.action) {
                case "repoList":
                    if ($.repository.setup) {
                        $.repos = {};
                        data.data.map((n) => {
                            let name = n.name;
                            let uname = name[0].toUpperCase() + name.slice(1);
                            let node = new $.components.repo({
                                text: uname,
                                id: "repos."+name,
                                files: n.files,
                                folders: n.folders,
                                drop: $.repository.dropHandler.bind({name: name, path: n.path}),
                                callback: () => {console.log("REPO "+n.name)}});

                            $.repos[name] = n;
                            $.id.page.repository.appendChild(node);
                        });
                    }

                    $.repository.list = data.data;
                    break;
                case "repoItemUpdate":
                    let name = data.repo.slice(data.repo.lastIndexOf("/")+1).trim().toLowerCase();

                    if ($.id.repos[name]) {
                        $.id.repos[name].refs.count.textContent = data.files + data.folders;
                    }
                    break;
            }
        }

        stylesheet() {
            $.styler.create({
                "page-repository": {
                    position: "absolute",
                    width: "60%",
                    top: "10%",
                    left: "30%",
                    height: "80%",
                    display: "grid",
                    gridTemplateColumns: "auto auto auto auto",
                    gridTemplateRows: "repeat(100, auto)",
                    gridColumnGap: "28px",
                    gridRowGap: "28px",
                },
            });
        }
    }
});