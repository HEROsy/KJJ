<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="common_head" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/swkj.css" rel="stylesheet" />
    <link href="../css/swkjbt.css" rel="stylesheet" />
    <script src="../js/jquery-1.8.2.min.js"></script>
    <script src="../js/swkj.js"></script>
    <title></title>

    <style type="text/css">
        span {
            font-family: 微软雅黑;
        }

        .top_back {
            width: 100%;
            margin: auto;
        }

        .top_back_1 {
            width: 100%;
            height: 75px;
            background-color: #F4FCFF;
        }

        .logo {
            float: left;
        }

            .logo span {
                line-height: 73px;
                font-size: 20px;
                font-weight: bold;
                letter-spacing: 4px;
            }

        .daohang {
            float: right;
            width: 793px;
        }

        .dh_wz {
            line-height: 75px;
            text-align: center;
            display: block;
            color: #616060;
            font-weight: bold;
        }

        .dh_div {
            float: left;
            width: 79px;
            background-image: url(img/sx.png);
            background-repeat: no-repeat;
            background-position: right 0px;
        }

            .dh_div:hover {
                background-color: #2f8ccf;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                .dh_div:hover .dh_wz {
                    color: #ffffff;
                }

        .top_back_2 {
            background-image: url(img/banner.jpg);
            width: 100%;
            background-repeat: no-repeat;
            background-position: center 0px;
            filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
            -moz-background-size: 100% 100%;
            background-size: 100% 100%;
        }

        .top_back_3 {
            width: 100%;
            height: 70px;
            background-color: #000000;
        }

        .tb3_1 {
            line-height: 70px;
            color: #EDEDED;
            letter-spacing: 2px;
            display: block;
            float: right;
            margin-right:2px;
        }

        .tb3_2 {
            line-height: 70px;
            color: #EDEDED;
            letter-spacing: 3px;
            display: block;
            float: left;
            margin-left:2px;
        }

        #one_1 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
        }

            #one_1 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_1:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_1:hover span {
                    color: #ffffff;
                }

        #one_2 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            margin-top: 50px;
            display: none;
        }

            #one_2 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_2:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_2:hover span {
                    color: #ffffff;
                }

        #d1:hover #one_1 {
            display: block;
        }

        #d1:hover #one_2 {
            display: block;
        }

        #one_3 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
        }

            #one_3 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_3:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_3:hover span {
                    color: #ffffff;
                }

        #one_4 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
            margin-top: 50px;
        }

            #one_4 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_4:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_4:hover span {
                    color: #ffffff;
                }


        #one_5 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
            margin-top: 100px;
        }

            #one_5 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_5:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_5:hover span {
                    color: #ffffff;
                }

        #d2:hover #one_3 {
            display: block;
        }

        #d2:hover #one_4 {
            display: block;
        }

        #d2:hover #one_5 {
            display: block;
        }

        #one_6 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
        }

            #one_6 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_6:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_6:hover span {
                    color: #ffffff;
                }

            #one_7 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
            margin-top: 50px;
        }

            #one_7 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_7:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_7:hover span {
                    color: #ffffff;
                }

            #one_8 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
            margin-top: 100px;
        }

            #one_8 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_8:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_8:hover span {
                    color: #ffffff;
                }

            #one_9 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
            margin-top: 150px;
        }

            #one_9 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_9:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_9:hover span {
                    color: #ffffff;
                }

            #one_10 {
            width: 79px;
            height: 50px;
            background-color: #F4FCFF;
            border-top: 1px solid #2f8ccf;
            position: absolute;
            display: none;
            margin-top: 200px;
        }

            #one_10 span {
                display: block;
                line-height: 50px;
                color: #616060;
                text-align: center;
                font-weight: bold;
            }

            #one_10:hover {
                background-color: #86C4F0;
                transition: background-color 0.3s linear;
                -moz-transition: background-color 0.3s linear;
                -webkit-transition: background-color 0.3s linear;
                -o-transition: background-color 0.3s linear;
            }

                #one_10:hover span {
                    color: #ffffff;
                }
        #d3:hover #one_6 {
            display: block;
        }

        #d3:hover #one_7 {
            display: block;
        }

        #d3:hover #one_8 {
            display: block;
        }
        #d3:hover #one_9 {
            display: block;
        }

        #d3:hover #one_10 {
            display: block;
        }

    </style>

    <script type="text/javascript">

        function banner_height() {
            var banner_width;
            var banner_height;
            banner_width = document.getElementById("banner_height").clientWidth;
            banner_height = banner_width / 5;
            document.getElementById("banner_height").style.minHeight = banner_height + "px";          
        }
        function getCurDate() {
            var d = new Date();
            var week;
            switch (d.getDay()) {
                case 1: week = "星期一"; break;
                case 2: week = "星期二"; break;
                case 3: week = "星期三"; break;
                case 4: week = "星期四"; break;
                case 5: week = "星期五"; break;
                case 6: week = "星期六"; break;
                default: week = "星期天";
            }
            var years = d.getFullYear();
            var month = add_zero(d.getMonth() + 1);
            var days = add_zero(d.getDate());
            var hours = add_zero(d.getHours());
            var minutes = add_zero(d.getMinutes());
            var seconds = add_zero(d.getSeconds());
            var ndate ="现在是"+ years + "年" + month + "月" + days + "日 " + hours + ":" + minutes + ":" + seconds + " " + week;
            divsj.innerHTML = ndate;
        }
        function add_zero(temp) {
            if (temp < 10) return "0" + temp;
            else return temp;
        }
    </script>
</head>
<body>
    <div class="top_back" id="topheight">
        <div class="top_back_1">
            <div style="width: 1000px; margin: auto; height: 75px">
                <div class="logo" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'" title="回到首页">
                    <span>雨城区科技</span><span style="color: #2f8ccf;">创新</span><span>网</span>
                </div>
                <div class="daohang">
                    <div class="dh_div" id="d1"><span class="dh_wz" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'">科技前沿</span><div id="one_1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>前沿科技</span></div>
                        <div id="one_2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>工作动态</span></div>
                    </div>
                    <div class="dh_div" id="d2"><span class="dh_wz" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'">科技合作</span>
                        <div id="one_3" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>人才供应</span></div>
                        <div id="one_4" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>技术难题</span></div>
                        <div id="one_5" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>专家推荐</span></div>
                    </div>
                    <div class="dh_div" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span class="dh_wz">科技兴农</span></div>
                    <div class="dh_div" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span class="dh_wz">科技强工</span></div>
                    <div class="dh_div" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span class="dh_wz">科技惠民</span></div>
                    <div class="dh_div" id="d3"><span class="dh_wz" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'">政务公开</span>
                        <div id="one_6" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>通知公告</span></div>
                        <div id="one_7" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>科技政策</span></div>
                        <div id="one_8" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>组织机构</span></div>
                        <div id="one_9" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>项目申管</span></div>
                        <div id="one_10" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span>下载专区</span></div>                    
                    </div>                    
                    <div class="dh_div" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span class="dh_wz">专利技术</span></div>
                    <div class="dh_div" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'"><span class="dh_wz">视频展示</span></div>
                    <div class="dh_div" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='Default.aspx'" style="width: 160px !important"><span class="dh_wz">特色农产品和支柱产业</span></div>
                </div>
            </div>
        </div>

        <div class="top_back_2" id="banner_height">
            <div></div>
        </div>

        <div class="top_back_3">
            <div style="width: 1000px; margin: auto; height: 70px">
                <span class="tb3_1" id="divsj">正在获取时间，请稍后...</span>
                <span class="tb3_2">欢迎您访问雨城区科技创新网</span>
            </div>
        </div>
    </div>

</body>
</html>
