        function check_status() {
            $.get("https://lainon.life/radio/status.xsl", function(data) {
                var el = $('<div></div>');
                el.html(data.getElementsByTagName('html')[0].innerHTML);
                var channel = $("#channel").val();
                var nowplaying = el.find(".roundbox").has("h3:contains('mpd-" + channel + "')").find('td:contains("Current")').eq(0).next().text();
                var currentlisteners = 0;
                el.find(".roundbox").has("h3:contains(" + channel + ")").find('td:contains("current")').next().each(function() {
                    currentlisteners += parseInt(this.firstChild.nodeValue, 10);
                });
                $(".nowplaying").text("Now playing: " + nowplaying);
                $(".currentlisteners").text("Current listeners: " + currentlisteners);
            });
        }

        function change_channel(e) {
            let audio = document.getElementById("player");
            let paused = audio.paused;
            channel = e.value;
            let sourceogg = document.getElementById("oggsource");
            sourceogg.src = "https://lainon.life/radio/" + channel + ".ogg";
            let sourcemp3 = document.getElementById("mp3source");
            sourcemp3.src = "https://lainon.life/radio/" + channel + ".mp3";
            audio.load();
            if (!paused) {
                audio.play();
            }
            document.getElementById("oggplaylist").href = "https://lainon.life/radio/" + channel + ".ogg.m3u";
            document.getElementById("mp3playlist").href = "https://lainon.life/radio/" + channel + ".mp3.m3u";
            document.getElementById("fileslink").href = "https://lainon.life/file-list/" + channel + ".html";
            check_status();
        }
        $(document).ready(function() {
            $("#stylesheet").remove();
            check_status();
            setInterval(check_status, 15000);
        });
        // I DONT KNOW HOW THIS SHIT WORKS, DONT EXPECT ME TO EXPLAIN ANY OF IT 