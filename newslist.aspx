<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newslist.aspx.cs" Inherits="newslist" %>

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
    <title>雨城区科技创新网-文章列表页</title>
    <style type="text/css">
        input::-webkit-input-placeholder {
            color: #b5dffe !important;
        }

        　　input:-moz-placeholder {
            color: #b5dffe !important;
        }

        　　input::-moz-placeholder {
            color: #b5dffe !important;
        }

        　　input:-ms-input-placeholder {
            color: #b5dffe !important;
        }

        .listleft {
            width: 300px;
            float: left;
        }

        .listright {
            width: 670px;
            float: left;
            margin-left: 30px;
        }

        .listleft0 {
            height: 100px;
        }

        .listleft1 {
            min-height: 100px;
            margin-top: 30px;
        }

        .listleft0_1 {
            background-color: #409ee2;
        }

        .listleft0_1_pad {
            height: 40px;
        }

        .listleft2 {
            min-height: 260px;
            margin-top: 5px;
            background-color: #25C886;
        }

        .listleft3 {
            min-height: 260px;
            margin-top: 5px;
            background-color: #EFAB32;
        }

        .searchlist {
            background-color: #409EE2 !important;
            border: none !important;
            border-bottom: 1px solid #A0C7E4 !important;
            border-radius: 0px !important;
            width: 220px;
            margin: 18px 0 0 20px;
            box-shadow: none !important;
            color: #ffffff !important;
            font-family: 微软雅黑;
            letter-spacing: 1px;
        }

        .listsearchico {
            position: absolute;
            margin-top: 17px;
        }

        .listbt_big {
            height: 50px;
            border-bottom: 1px solid #83BDE8;
            background-repeat: no-repeat;
            background-color: #409EE2;
        }

            .listbt_big span {
                line-height: 50px;
                display: block;
                float: left;
                margin-left: 10px;
                font-weight: bold;
                color: #ffffff;
                letter-spacing: 2px;
                font-size: 17px;
            }

        .listbt_big1 {
            height: 60px;
            border-bottom: 1px solid #59DFA8;
            background-color: #049056;
        }

            .listbt_big1 span {
                line-height: 60px;
                display: block;
                float: left;
                margin-left: -5px;
                font-weight: bold;
                color: #ffffff;
                letter-spacing: 2px;
                font-size: 17px;
            }

        .listbt_big2 {
            height: 60px;
            border-bottom: 1px solid #FDD180;
            background-color: #BA7700;
        }

            .listbt_big2 span {
                line-height: 60px;
                display: block;
                float: left;
                margin-left: -5px;
                font-weight: bold;
                color: #ffffff;
                letter-spacing: 2px;
                font-size: 17px;
            }

        .listbt_small {
            margin-top: 20px;
        }

        .listsmall {
            background-image: url(img/listsmall.png);
            background-repeat: no-repeat;
            height: 45px;
            border-bottom: 1px solid #74B0DD;
        }

            .listsmall:hover {
                background-image: url(img/listsmall_hover.png);
                background-color: #1D86D2;
                transition: background-color 0.4s linear;
                -moz-transition: background-color 0.4s linear;
                -webkit-transition: background-color 0.4s linear;
                -o-transition: background-color 0.4s linear;
            }

            .listsmall span {
                line-height: 45px;
                display: block;
                margin-left: 61px;
                color: #ffffff;
                letter-spacing: 3px;
                font-weight: bold;
                font-size: 15px;
            }

        .listsmall1 {
            background-image: url(img/listsmall1.png);
            background-repeat: no-repeat;
            height: 45px;
            border-bottom: 1px solid #74D2AC;
        }

            .listsmall1:hover {
                background-image: url(img/listsmall1_hover.png);
                background-color: #11AE6E;
                transition: background-color 0.4s linear;
                -moz-transition: background-color 0.4s linear;
                -webkit-transition: background-color 0.4s linear;
                -o-transition: background-color 0.4s linear;
            }

            .listsmall1 span {
                line-height: 45px;
                display: block;
                margin-left: 50px;
                color: #ffffff;
                letter-spacing: 1px;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
                width: 210px;
                font-size: 15px;
            }

        .listsmall2 {
            background-image: url(img/listsmall2.png);
            background-repeat: no-repeat;
            height: 45px;
            border-bottom: 1px solid #FCC664;
        }

            .listsmall2:hover {
                background-image: url(img/listsmall2_hover.png);
                background-color: #DA9313;
                transition: background-color 0.4s linear;
                -moz-transition: background-color 0.4s linear;
                -webkit-transition: background-color 0.4s linear;
                -o-transition: background-color 0.4s linear;
            }

            .listsmall2 span {
                line-height: 45px;
                display: block;
                margin-left: 50px;
                color: #ffffff;
                letter-spacing: 1px;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
                width: 210px;
                font-size: 15px;
            }

        .xzjt {
            width: 59px;
            height: 59px;
            float: right;
            background-image: url(img/xzjt.png);
            background-repeat: no-repeat;
        }

        .yuantop {
            width: 50px;
            height: 50px;
            background-image: url(img/yuantop.png);
            background-repeat: no-repeat;
            position: absolute;
            margin: -25px 0 0 120px;
        }

        .listtime {
            height: 90px;
            width: 156px;
        }

        .timesj {
            display: block;
            float: left;
            line-height: 45px;
            font-weight: bold;
            color: #71B465;
            letter-spacing: 1px;
            font-size: 16px;
            margin-left: 22px;
        }

        .timeapm {
            display: block;
            float: left;
            line-height: 45px;
            color: #71B465;
            font-weight: bold;
            margin-left: 14px;
            font-size: 16px;
        }

        .timerq {
            display: block;
            float: right;
            line-height: 13px;
            color: #9FA09F;
            margin-right: 5px;
        }

        .bigclass {
            line-height: 50px;
            font-size: 20px;
            font-weight: bold;
            color: #409EE2;
            display: block;
            float: left;
            border-bottom: 5px solid #409EE2;
            margin-top: 20px;
            letter-spacing: 2px;
        }

        .smallclass {
            line-height: 50px;
            font-size: 20px;
            font-weight: bold;
            color: #25C886;
            display: block;
            float: left;
            border-bottom: 5px solid #25C886;
            margin-top: 20px;
            letter-spacing: 2px;
        }

        .mbx {
            height: 70px;
            border-bottom: 5px solid #EFAB32;
        }

        .lmhx {
            font-size: 20px;
            color: #25C886;
            width: 40px;
            display: block;
            float: left;
            line-height: 50px;
            text-align: center;
            font-weight: bold;
            border-bottom: 5px solid #25C886;
            margin-top: 20px;
        }

        .gg {
            width: 42px;
            height: 90px;
            background-image: url(img/gougou.png);
            background-repeat: no-repeat;
        }

        .listbiaoti {
            width: 441px;
            height: 71px;
            margin-bottom: 17px;
            border: 1px solid #71B465;
            border-radius: 6px;
            background-color: #ffffff;
        }

        .listfenlei {
            display: block;
            line-height: 25px;
            width: 113px;
            text-align: center;
            background-color: #71B465;
            margin: 10px 0 0 10px;
            font-size: 12px;
            color: #ffffff;
            font-weight: bold;
            letter-spacing: 1px;
            float:left;
        }

        .listwenz {
            display: block;
            color: #737373;
            letter-spacing: 1px;
            line-height: 35px;
            width: 420px;
            margin-left: 11px;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
        .listbody {
            background-image:url(img/listbody.jpg);
            background-repeat:no-repeat;
            background-position:center 428px;        
        }
        li a {
            color:#71B465;
            font-weight:bold;
        }
        .yuanquan {
            background-image: url(img/yuanquan.png);
            background-repeat: no-repeat;
            width: 40px;
            height: 54px;
            margin: -40px 0 0 172px;
        }
        .row-fluid:hover .timesj {
            color: #ffffff;
            transition: color 0.5s linear;
            -moz-transition: color 0.5s linear;
            -webkit-transition: color 0.5s linear;
            -o-transition: color 0.5s linear;
        }

        .row-fluid:hover .timeapm {
            color: #ffffff;
            transition: color 0.7s linear;
            -moz-transition: color 0.7s linear;
            -webkit-transition: color 0.7s linear;
            -o-transition: color 0.7s linear;
        }
        .listfenlei:hover {
            cursor:not-allowed;
        }
        .add_ico {
            display: block;
            float: right;
            margin: 15px 15px 0 0px;
            width: 16px;
            height: 16px;
        }
    </style>

    <script type="text/javascript">
        window.onload = function () {
            banner_height();
            setInterval("getCurDate()", 1000);
            xzjt("xzjt1", "divjt1");
            xzjt("xzjt2", "divjt2");
        }
        function xzjt(jtid, divjtid) {
            (function () {
                var jt_obj = document.getElementById(jtid);
                var jt_div = document.getElementById(divjtid);
                var r = 0;
                var i = -10;
                function rotate() {
                    if (Math.abs(r) >= 90) {
                        r = -90;
                    } else {
                        r += i;
                    }
                    jt_obj.style.MozTransform = "rotate(" + r + "deg)";
                    jt_obj.style.webkitTransform = "rotate(" + r + "deg)";
                    jt_obj.style.msTransform = "rotate(" + r + "deg)";
                    jt_obj.style.OTransform = "rotate(" + r + "deg)";
                    jt_obj.style.transform = "rotate(" + r + "deg)";
                }

                var timer;

                jt_div.onmouseout = function () {
                    clearInterval(timer);
                    timer = null;
                    jt_obj.style.MozTransform = "rotate(0deg)";
                    jt_obj.style.webkitTransform = "rotate(0deg)";
                    jt_obj.style.msTransform = "rotate(0deg)";
                    jt_obj.style.OTransform = "rotate(0deg)";
                    jt_obj.style.transform = "rotate(0deg)";
                };

                jt_div.onmouseover = function () {
                    if (timer) return;
                    timer = setInterval(rotate, 30);
                    r = 0;
                    jt_div.style.cursor = "pointer";
                };
            }());
        }
    </script>
</head>

<body class="listbody">
    <uc1:head runat="server" ID="head" />

    <div style="width: 1000px; margin: auto;">
        <div>
            <div class="listleft">
                <div class="listleft0_1">
                    <div class="listleft0">
                        <div style="height: 50px;">
                            <img src="img/listico.png" style="float: right;" /><img src="img/listico1.png" style="float: right;" />
                        </div>
                        <div style="height: 50px;">
                            <input type="text" class="searchlist" maxlength="50" placeholder="请输入要搜索的内容" /><img src="img/listsearch.png" class="listsearchico" onmouseover="this.style.cursor='pointer'" onclick="javascript:void(0)" />
                        </div>
                    </div>
                    <div class="listleft1">
                        <div class="listbt_big">
                            <img src="img/listbig.png" style="float: left; margin-left: 15px;" /><span>当前大栏目</span>
                        </div>
                        <div class="listbt_small">
                            <%--小栏目循环开始--%>
                            <div class="listsmall" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>第一个小栏目</span></div>
<%--                            <div class="listsmall" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>第二个小栏目</span></div>
                            <div class="listsmall" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>第三个三个小栏目</span></div>
                            <div class="listsmall" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>第一个小栏目</span></div>
                            <div class="listsmall" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>第二个小栏目</span></div>
                            <div class="listsmall" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>第一个小栏目</span></div>
                            <div class="listsmall" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>第二个小栏目</span></div>--%>
                        </div>
                    </div>
                    <div class="listleft0_1_pad"></div>
                </div>
                <div class="listleft2">
                    <div class="listbt_big1" id="divjt1">
                        <img src="img/listbig1.png" style="float: left; margin-left: 15px;" /><span>通知公告</span><div class="xzjt" id="xzjt1" onclick="window.location.href='#'"></div>
                    </div>
                    <div class="listbt_small">
                        <%--通知公告循环开始--%>
                        <div class="listsmall1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>通知公告第一条！</span></div>
                        <div class="listsmall1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>今天放假大家都不上班，星期一上班。</span></div>
                        <div class="listsmall1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>这里是标题标题</span></div>
                        <div class="listsmall1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>周末出去旅游，去名山旅游一圈</span></div>
                        <div class="listsmall1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>这个标题很长很长，真的非常非常非常的长！</span></div>
                        <%-- 通知公告循环结束--%>
                        <div class="listleft0_1_pad"></div>
                    </div>
                </div>
                <div class="listleft3">
                    <div class="listbt_big2" id="divjt2">
                        <img src="img/listbig2.png" style="float: left; margin-left: 15px;" /><span>科技前沿</span><div class="xzjt" id="xzjt2" onclick="window.location.href='#'"></div>
                    </div>
                    <div class="listbt_small">
                        <%--科技前沿循环开始--%>
                        <div class="listsmall2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>科技前沿第一条！</span></div>
                        <div class="listsmall2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>今天前沿科技都不上班，星期一上班。</span></div>
                        <div class="listsmall2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>这里是标题标题</span></div>
                        <div class="listsmall2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>周末出去旅游，去名山旅游一圈</span></div>
                        <div class="listsmall2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>这个标题很长很长，真的非常非常非常的长！</span></div>
                        <%-- 科技前沿循环结束--%>
                        <div class="listleft0_1_pad"></div>
                    </div>
                    <div class="yuantop" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"></div>
                </div>
            </div>

            <div class="listright">
                <div class="mbx" style="margin-bottom:25px;">
                    <span class="bigclass">大栏目名称</span><span class="lmhx">/</span><span class="smallclass">我是一个小栏目</span>
                </div>
                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span3">
                        <div class="listtime"><span class="timesj">06:45:32</span><span class="timeapm">A.M.</span><span class="timerq">2015/11/23</span></div>
                    </div>
                    <div class="span1">
                        <div class="gg"></div>
                    </div>
                    <div class="span8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <div class="listbiaoti"><span class="listfenlei">生物、医药、管理</span><img src="img/add.png" class="add_ico" /><span class="listwenz">这里是标题标题标题标题，很长的题标题，很长的题标题，很长的一个标题！</span></div>
                    </div>
                </div>

                <div style="width: 650px; height: 40px;">
                    <div class="container-fluid" style="width: 650px !important;">
                        <div class="row-fluid">
                            <div class="span12" style="width: 650px !important;">
                                <div class="pagination pagination-right" style="width: 650px !important;" >
                                    <ul>
                                        <li>
                                            <a href="#">上一页</a>
                                        </li>
                                        <li>
                                            <a href="#">1</a>
                                        </li>
                                        <li>
                                            <a href="#">2</a>
                                        </li>
                                        <li>
                                            <a href="#">3</a>
                                        </li>
                                        <li>
                                            <a href="#">4</a>
                                        </li>
                                        <li>
                                            <a href="#">5</a>
                                        </li>
                                        <li>
                                            <a href="#">下一页</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="yuanquan"></div>
            </div>
        </div>
    </div>

    <uc1:foot runat="server" ID="foot" />
</body>
</html>
