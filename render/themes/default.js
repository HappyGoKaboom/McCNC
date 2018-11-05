$.global.register({
    // info
    name: "theme.default",

    // config
    path: "themes", // optional assign path
    auto: true, // automatically instances the class to the path / default true

    // extensions / plugins
    plugins: [    ],

    // instance
    instance: class Theme
    {
        constructor()
        {
            // fires on registration before this.$ is available
            // process args and check / defaults

        }

        registered () {
            if (!$.theme) {
                $.theme = {};
                $.selected = null;
            }

            $.theme.default = this.scheme(); // create the stylesheet

            if (!$.theme.current) {
                $.theme.current = $.theme.default;
                $.selected = "default";
                $.hook("windowResize", this.windowResize);
            }
        }

        windowResize (ev) {
            // this is used by the dynamic scaling system to ensure content fits
            if ($.theme.selected === "default") {
                // update current
                $.theme.current.mainMenuTextSize = Math.round(ev.data.scaler * 24) + "px";
                $.theme.current.mainMenuTextSpacing = Math.round(ev.data.scaler * 6) + "px";
                $.theme.default.mainMenuTextSpacingNotSelected = Math.round(ev.data.scaler * 2) + "px";
                $.theme.default.mainMenuTextSpacingSelected = Math.round(ev.data.scaler * 12) + "px";
            }

            // update theme
            $.theme.default.mainMenuTextSize = Math.round(ev.data.scaler * 24) + "px";
            $.theme.default.mainMenuTextSpacing = Math.round(ev.data.scaler * 6) + "px";
            $.theme.default.mainMenuTextSpacingNotSelected = Math.round(ev.data.scaler * 2) + "px";
            $.theme.default.mainMenuTextSpacingSelected = Math.round(ev.data.scaler * 12) + "px";

            // fire events to ensure propagation
            $.fire("theme.mainMenuTextSize", Math.round(ev.data.scaler * 24) + "px");
            $.fire("theme.mainMenuTextSpacing", Math.round(ev.data.scaler * 6) + "px");
            $.fire("theme.mainMenuTextSpacingNotSelected", Math.round(ev.data.scaler * 2) + "px");
            $.fire("theme.mainMenuTextSpacingSelected", Math.round(ev.data.scaler * 12) + "px");
        }

        scheme () {
            let theme = {
                backColor: "#353c48",
                backColorLighter: "#464c56",
                backColorDarker: "#232933",
                textColor: "#a5b7d6",
                textColorVivid: "#79adce",
                textColorIntense: "#7ad6f5",
                textColorLighter: "#d1dae6",
                textColorLight: "#bfcce0",
                textColorDark: "#859abd",
                textColorDarker: "#597198",
                mainMenuTextSize: "24pt",
                mainMenuTextSpacing: "6pt",
                mainMenuTextSpacingSelected: "12pt",
                mainMenuTextSpacingNotSelected: "2pt",
                mainMenuFont: "Audiowide",
                buttonFont: "Open Sans",
                usernameFontSize: "14pt",
                usernameFont: "Audiowide",
                usernameSpacing: "2px",
                defaultFont: "Open Sans",
                defaultFontSize: "12pt",
            };

            // apply hooks and default values
            for (let n in theme) {
                if (theme.hasOwnProperty(n)) {
                    $.fire("theme."+n, theme[n]);
                }
            }

            return theme;
        }
    }
});