<%@ Page Language="C#" AutoEventWireup="true" CodeFile="videocenter.aspx.cs" Inherits="videocenter" %>

<%@ Register Src="~/common/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/common/foot.ascx" TagPrefix="uc1" TagName="foot" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/swkj.css" rel="stylesheet" />
    <link href="css/swkjbt.css" rel="stylesheet" />
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/swkj.js"></script>
    <title>雨城区科技创新网-视频中心</title>
    <style type="text/css">
        .zdy {
            height: 110px;
            filter: progid:DXImageTransform.Microsoft.Shadow(color=#E2E2E2,direction=120,strength=2); /*兼容ie*/
            -moz-box-shadow: 1px 1px 5px #E2E2E2; /*兼容firefox*/
            -webkit-box-shadow: 1px 1px 5px #E2E2E2; /*兼容safari或chrome*/
            box-shadow: 1px 1px 5px #E2E2E2; /*兼容opera或ie9*/
            margin-top: 30px;
            background-image: url(img/video_ico.png);
            background-repeat: no-repeat;
            background-color: #ffffff;
            filter: alpha(opacity=70);
            -moz-opacity: 0.7;
            -khtml-opacity: 0.7;
            opacity: 0.7;
        }

        .sptitle {
            height: 50px;
            border-bottom: 2px solid #E70101;
            background-image: url(img/video.png);
            background-repeat: no-repeat;
        }

        #videodiv {
            margin-bottom: 70px !important;
            min-height:500px;

        }
        .maxdiv {
            background-image:url(img/videoback.jpg);
            background-repeat:no-repeat;
            width:100%;
            height:100%;
            overflow:hidden;        
        }
        .vdtitle {
            line-height: 110px;
            display: block;
            float: left;
            width: 750px;
            margin-left: 110px;
            font-size: 15px;
            font-weight: bold;
            letter-spacing: 1px;
            color: #1F1E1E;
        }

        .bfsp {
            line-height: 110px;
            display: block;
            float: left;
            width: 139px;
            font-size: 15px;
            font-weight: bold;
            letter-spacing: 3px;
            color: #737373;
            text-align: center;
            background-image: url(img/noready.png);
            background-repeat: no-repeat;
        }

            .bfsp:hover {
                color: #E70101;
                background-image: url(img/ready.png);
            }

        .vdhx {
            background-color: #E22B27;
            width: 0px;
            height: 2px;
        }

        .zdy:hover .vdhx {
            width: 999px;
            transition: width 1.5s linear;
            -moz-transition: width 1.5s linear;
            -webkit-transition: width 1.5s linear;
            -o-transition: width 1.5s linear;
        }
    </style>

    <script type="text/javascript">
        window.onload = function () {
            banner_height();
            setInterval("getCurDate()", 1000);
        }
        window.onresize = function () {
            banner_height();
            bodyheight();
        }
        function link_bf(filename, titles) {
            window.open("bfq.aspx?id=" + filename+"swkj"+titles, "_blank");
        }
    </script>
</head>

<body>
    <uc1:head runat="server" ID="head" />
    <div class="maxdiv">
    <div style="width: 1000px; margin: auto" id="videodiv">
        <%--这个是最大那个标题的div 不需要改动 视频列表循环从下面开始--%>
        <div class="row-fluid" style="margin-top: 40px">
            <div class="sptitle"></div>
        </div>
        <%--标题结束--%>

        <div class="row-fluid" style="margin-bottom: 10px;">
            <div class="span12 zdy">
                <div>
                    <span class="vdtitle">这里是标题，这里是标题，这里是标题，这里是标题，这里是标题，这里是标题!</span>
                    <span class="bfsp" onmouseover="this.style.cursor='pointer'" onclick="javascript:link_bf('42234.flv','titlesaaaddstitles')">观看</span>
                </div>
                <div class="vdhx"></div>
            </div>
        </div>

        <div class="row-fluid" style="margin-bottom: 10px;">
            <div class="span12 zdy">
                <div>
                    <span class="vdtitle">这里是标题，这里是标题，这里是标题，这里是标题，这里是标题，这里是标题!</span>
                    <span class="bfsp" onmouseover="this.style.cursor='pointer'" onclick="javascript:link_bf('42234.flv','titlesaaaddstitles')">观看</span>
                </div>
                <div class="vdhx"></div>
            </div>
        </div>

    </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>
