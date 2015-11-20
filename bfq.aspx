<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bfq.aspx.cs" Inherits="bfq" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/swkj.css" rel="stylesheet" />
    <link href="css/swkjbt.css" rel="stylesheet" />
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/swkj.js"></script>
    <script src="js/swfobject.js"></script>
    <title>全屏播放界面</title>
    <style type="text/css">
        .pl {
        margin: 34px 0 0 30px;
        }
        #pltext {
            color: #ffffff;
            text-align: center;
            letter-spacing: 1px;
            font-weight: bold;
            font-size: 15px;
            margin-top: 24px;
        }
    </style>

    <script type="text/javascript">
        var id;
        var names;
        var titles;
        var myarray;
        window.onload = function () {           
            id = iGetQueryString("id");
            myarray = id.split("swkj");
            bfq();
            document.getElementById("pltext").innerHTML = myarray[1];
        }
        function iGetQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return decodeURIComponent(r[2]); return null;
        }
        function bfq() {
            //jw_flv_player
            var s2 = new SWFObject("img/upload/flvplayer.swf", "single", "640", "480", "7");
            s2.addParam("allowfullscreen", "false");
            s2.addVariable("autostart", "true");
            s2.addVariable("file", myarray[0]);
            s2.addVariable("width", "640");
            s2.addVariable("height", "480");
            s2.addVariable("overstretch", "true");
            s2.addVariable("bufferlength", "10");
            s2.addVariable("usefullscreen", "false");
            s2.write("player1");
        }
    </script>
</head>

<body style="background-color:#000000;">
    <div style="width:1000px;height:40px;"></div>
    <div style="width: 700px;height:550px;background-image:url(img/bfqback.jpg);background-repeat:no-repeat;background-position:center 0px; margin: auto">
        <div class="row-fluid">
            <div id="player1" class="pl"></div>
            <div id="pltext"></div>
        </div>
    </div>
</body>
</html>
