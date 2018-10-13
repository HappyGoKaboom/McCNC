$xhr = {
    length: 0,
};

function net(url, data, callback) {
    var xhr = new XMLHttpRequest();
        $xhr[++$xhr.length] = xhr;
        xhr.xhrID = $xhr.length;
        
        xhr.open("POST",url);

        xhr.onreadystatechange = () => {
            if (xhr.readyState === 4 && xhr.status === 200)
                {
                if (callback)
                    {
                    callback(xhr.responseText);                    
                    }
                }

            if (xhr.readyState === 4)
                {
                // remove from $xhr
                delete $xhr[xhr.xhrID];
                }
        };

        if (typeof data !== "string")
            {
            data = JSON.stringify(data);
            }
            
        xhr.send(data);
}

function login() {
    let data = {
        username: $.id.login.username.refs.input.value,
        password: $.id.login.password.refs.input.value
    };

    console.log(data);

    $.styler.set($.id.login.input, "swap login-in/login-right-out");
    $.styler.set($.id.login.status, "swap login-left-out/login-in");

    // REPLACE WITH NET CODE
    let tick = 0;
    let start = performance.now();
    let cnt = 0;

    $.loginTimer = setInterval((() => {
        if (tick > 3) {tick = 0}

        let str = "Loggin in please wait";

        for (let n = 0; n < tick; n++) {
            str += ".";
        }

        $.id.login.text.textContent = str;
        tick++;

        if (performance.now() - start > 1500) {
            clearInterval($.loginTimer);

            $.styler.set($.id.login.status, "swap login-in/login-right-out");
            $.styler.set($.id.user.profile, "swap login-left-out/login-in");

            $.animTimerMenu = setInterval(() => {
                if (cnt === 0) {
                    $.styler.set($.id.mainMenuItem_Moderator, "main-menu-item-shown")
                    $.styler.set($.id.mainMenuItem_Moderator.nextElementSibling, "main-menu-line-shown")
                } else if (cnt === 1) {
                    $.styler.set($.id.mainMenuItem_Admin, "main-menu-item-shown")
                    $.styler.set($.id.mainMenuItem_Admin.nextElementSibling, "main-menu-line-shown")
                } else if (cnt === 2) {
                    $.styler.set($.id.mainMenuItem_Server, "main-menu-item-shown")
                    $.styler.set($.id.mainMenuItem_Server.nextElementSibling, "main-menu-line-shown")
                }

                cnt++;

            }, 50);
        }
    }),200);

}