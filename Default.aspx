<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/common/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/common/foot.ascx" TagPrefix="uc1" TagName="foot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>雨城区科技创新网</title>
    <link href="css/swkj.css" rel="stylesheet" />
    <link href="css/swkjbt.css" rel="stylesheet" />
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/swkj.js"></script>
    <script src="js/swfobject.js"></script>
    <style type="text/css">
        p {
            font-family: 微软雅黑 !important;
            letter-spacing: 1px !important;
            text-overflow: ellipsis !important;
            overflow: hidden !important;
            white-space: nowrap !important;
        }

        input {
            font-family: 微软雅黑 !important;
            letter-spacing: 1px !important;
            font-weight:bold !important;
            font-size:16px !important;
        }

        .biaoti {
            float: left;
            width: 80px;
            height: 30px;
            line-height: 28px;
        }

            .biaoti:hover {
                background-color: #18B2E0;
                color: #ffffff;
            }

        .biaoti_2 {
            float: left;
            width: 80px;
            height: 30px;
            line-height: 28px;
        }

            .biaoti_2:hover {
                color: #ffffff;
            }

        .news {
            height: 20px;
            margin-top: 10px;
            list-style-type: none;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }

        .a1 {
            color: #000000;
        }

            .a1:hover {
                color: #ff0000;
                font-size: 22px;
                text-decoration: none;
            }

        .a2 {
            color: #000000;
        }

            .a2:hover {
                color: #2f8ccf;
                text-decoration: none;
            }

        .touming {
            filter: alpha(opacity=70);
            -moz-opacity: 0.7;
            -khtml-opacity: 0.7;
            opacity: 0.7;
        }

        .connect {
            width: 105px;
            height: 70px;
            float: left;
            background-color: #000000;
            margin-left: 13px;
        }

        .i1 {
            width: 430px;
            height: 280px;
        }

        .nav > li > a:hover {
            background-color: #15C2D0 !important;
            color: #ffffff !important;
            transition: background-color 0.3s linear;
            -moz-transition: background-color 0.3s linear;
            -webkit-transition: background-color 0.3s linear;
            -o-transition: background-color 0.3s linear;
        }

        .nav-tabs > .active > a {
            color: #FFFFFF !important;
            background-color: #F16767 !important;
            transition: background-color 0.3s linear;
            -moz-transition: background-color 0.3s linear;
            -webkit-transition: background-color 0.3s linear;
            -o-transition: background-color 0.3s linear;
        }

        .nav-tabs > li > a {
            background-color: #2F8CCF !important;
            color: #FFFFFF !important;
        }

        .nav-tabs > li {
            margin-right: 6px;
        }

        .more {
            position: absolute;
            z-index: 2;
            margin: -57px 0 0 460px;
            height: 44px;
            width: 65px;
        }

        .morebc {
            position: absolute;
            z-index: 1;
            margin: 4px 0 0 460px;
            height: 44px;
            width: 65px;
        }

        .m1 {
            background-image: url(img/more_cfx2.png);
        }

        .m2 {
            background-image: url(img/more_cfx2.png);
        }

        .m3 {
            background-image: url(img/more_cfx2.png);
        }

        .divlb1 {
            height: 44px;
            width: 550px;
        }

            .divlb1:hover {
                background-color: #7BC5FA;
                transition: background-color 0.2s linear;
                -moz-transition: background-color 0.2s linear;
                -webkit-transition: background-color 0.2s linear;
                -o-transition: background-color 0.2s linear;
            }

                .divlb1:hover .lb1 {
                    color: #FFFFFF;
                    font-weight: bold;
                }

                .divlb1:hover .lb2 {
                    color: #FFFFFF;
                    font-weight: bold;
                }

                .divlb1:hover .imgd {
                    background-image: url(img/d42_w.png);
                }

        .lb1 {
            display: block;
            float: left;
            line-height: 44px;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            width: 410px;
            color: #5E5D5D;
            letter-spacing: 1px;
        }

        .lb2 {
            display: block;
            float: right;
            line-height: 44px;
            margin-right: 18px;
            color: #5E5D5D;
        }

        .imgd {
            display: block;
            float: left;
            margin-right: 10px;
            width: 44px;
            height: 44px;
            background-image: url(img/d42.png);
        }

        .bk {
            background: #ffffff;
            height: 370px;
            background-image: url(img/back_bk.png);
            background-repeat: no-repeat;
            padding: 18px;
            margin-top: 6px;
        }

        .bk1 {
            background: #ffffff;
            height: 370px;
            background-image: url(img/back_bk1.png);
            background-repeat: no-repeat;
            padding: 18px;
            margin-top: 6px;
        }

        .ftitle2 {
            height: 55px;
            z-index: 3;
            position: relative;
        }

            .ftitle2 span {
                color: #ffffff;
                line-height: 55px;
                display: block;
                letter-spacing: 7px;
                font-size: 16px;
                margin-left: 60px;
                font-weight: bold;
                margin-top: -55px;
            }

        .ftitle img {
            display: block;
            float: left;
        }

        .ftitle1 {
            position: absolute;
            background-color: #f26666;
            height: 55px;
            width: 0px;
            margin-top: -55px;
            z-index: 2;
        }

        .ftitle1_1 {
            position: absolute;
            background-color: #f26666;
            height: 55px;
            width: 0px;
            margin-top: -55px;
            z-index: 2;
        }

            .ftitle1_1 span {
                line-height: 55px;
                color: #ffffff;
                display: block;
                float: right;
                margin-right: 12px;
                letter-spacing: 1px;
                font-size: 16px;
            }

        .bk:hover .ftitle1 {
            width: 283px;
            transition: width 0.6s linear;
            -moz-transition: width 0.6s linear;
            -webkit-transition: width 0.6s linear;
            -o-transition: width 0.6s linear;
        }

        .bk1:hover .ftitle1_1 {
            width: 624px;
            transition: width 1s linear;
            -moz-transition: width 1s linear;
            -webkit-transition: width 1s linear;
            -o-transition: width 1s linear;
        }

        .ftitle1 span {
            line-height: 55px;
            color: #ffffff;
            display: block;
            float: right;
            margin-right: 12px;
            letter-spacing: 1px;
            font-size: 14px;
        }

        .ftitle {
            width: 283px;
            height: 55px;
            background-color: #2F8CCF;
            position: absolute;
            z-index: 1;
            margin-top: -55px;
        }

        .ftitle_1 {
            width: 624px;
            height: 55px;
            background-color: #2F8CCF;
            position: absolute;
            z-index: 1;
            margin-top: -55px;
        }

        .lb_bt {
            height: 44px;
        }

            .lb_bt:hover {
                background-color: #EAEAEA;
            }

                .lb_bt:hover .img_s {
                    background-image: url(img/kjxn_sh.png);
                    background-repeat: no-repeat;
                }

                .lb_bt:hover .img_g {
                    background-image: url(img/kjqg_sh.png);
                    background-repeat: no-repeat;
                }

                .lb_bt:hover .img_h {
                    background-image: url(img/kjhm_sh.png);
                    background-repeat: no-repeat;
                }

                .lb_bt:hover .img_z {
                    background-image: url(img/zscq_sh.png);
                    background-repeat: no-repeat;
                }

                .lb_bt:hover .img_k {
                    background-image: url(img/zwgk_sh.png);
                    background-repeat: no-repeat;
                }

                .lb_bt:hover .lb_bt_sp {
                    font-weight: bold;
                    color: #f26666;
                }

                .lb_bt:hover .jiantou {
                    color: #f26666;
                }

        .img_s {
            width: 44px;
            height: 44px;
            float: left;
            margin-left: -13px;
            background-image: url(img/kjxn_s.png);
            background-repeat: no-repeat;
        }

        .img_h {
            width: 44px;
            height: 44px;
            float: left;
            margin-left: -13px;
            background-image: url(img/kjhm_s.png);
            background-repeat: no-repeat;
        }

        .img_k {
            width: 44px;
            height: 44px;
            float: left;
            margin-left: -13px;
            background-image: url(img/zwgk_s.png);
            background-repeat: no-repeat;
        }

        .img_z {
            width: 44px;
            height: 44px;
            float: left;
            margin-left: -13px;
            background-image: url(img/zscq_s.png);
            background-repeat: no-repeat;
        }

        .img_g {
            width: 44px;
            height: 44px;
            float: left;
            margin-left: -13px;
            background-image: url(img/kjqg_s.png);
            background-repeat: no-repeat;
        }

        .lb_bt_sp {
            line-height: 44px;
            letter-spacing: 1px;
            display: block;
            float: left;
            color: #616060;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            width: 225px;
            border-bottom: 1px solid #EDEDED;
        }

            .lb_bt_sp:hover {
                border-bottom: 1px solid #ffffff;
            }

        .jiantou {
            line-height: 44px;
            display: block;
            float: right;
            margin-right: 5px;
            font-weight: bold;
            color: #c8c7c7;
        }

        .bt_our1 {
            line-height: 80px;
            font-size: 15px;
            display: block;
            font-weight: bold;
            letter-spacing: 2px;
            color: #616060;
        }

        .bt_our2 {
            line-height: 46px;
            font-size: 15px;
            display: block;
            font-weight: bold;
            letter-spacing: 2px;
            color: #616060;
            margin-bottom: 6px;
        }

        .zxsb_span {
            color: #939191;
            font-size: 13px;
            width: 200px !important;
            margin-left: 0px !important;
            margin-top: -6px;
            letter-spacing: 2px;
            font-weight: bold;
        }

            .zxsb_span:hover {
                color: #f26666;
                font-size: 14px;
            }

        .sbgl {
            display: block;
            width: 200px;
            color: #A5A5A5;
            margin-top: -20px;
            letter-spacing: 2px;
            font-size: 13px;
        }

        .bsdt {
            margin-top: 8px;
            background-image: url(img/bsdt_back.png);
            background-repeat: no-repeat;
            background-position: center 0px;
        }

        .zxsb_div2 {
            height: 96px;
            width: 210px;
            float: left;
        }

            .zxsb_div2:hover .bt_our2 {
                color: #f26666;
            }

        .zxsb_div1 {
            width: 72px;
            height: 88px;
            background-image: url(img/zxsb1.png);
            background-repeat: no-repeat;
            float: left;
        }

        .zxsb_div1_hv {
            width: 72px;
            height: 0px;
            background-image: url(img/zxsb_hv.png);
            background-repeat: no-repeat;
            float: left;
            position: absolute;
        }

        .sbgl_div2 {
            height: 162px;
            width: 210px;
            float: left;
        }

            .sbgl_div2:hover .bt_our1 {
                color: #f26666;
            }

        .sbgl_div1 {
            width: 72px;
            height: 88px;
            background-image: url(img/xmsb1.png);
            background-repeat: no-repeat;
            float: left;
        }

        .sbgl_div1_hv {
            width: 72px;
            height: 0px;
            background-image: url(img/xmsb_hv.png);
            background-repeat: no-repeat;
            float: left;
            position: absolute;
        }

        .bsdta {
            height: 162px;
        }

            .bsdta:hover .sbgl_div1 {
                background-image: url(img/xmsb.png);
            }

            .bsdta:hover .sbgl_div1_hv {
                height: 88px;
                transition: height 0.6s linear;
                -moz-transition: height 0.6s linear;
                -webkit-transition: height 0.6s linear;
                -o-transition: height 0.6s linear;
            }

        .bsdtb {
            height: 102px;
            margin-top: 10px;
        }

            .bsdtb:hover .zxsb_div1 {
                background-image: url(img/zxsb.png);
            }

            .bsdtb:hover .zxsb_div1_hv {
                height: 88px;
                transition: height 1.5s linear;
                -moz-transition: height 1.5s linear;
                -webkit-transition: height 1.5s linear;
                -o-transition: height 1.5s linear;
            }

        .fengetu {
            width: 1000px;
            height: 160px;
            background-image: url(img/fengetu.png);
            background-repeat: no-repeat;
            background-position: center 0px;
            filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
            -moz-background-size: 100% 100%;
            background-size: 100% 100%;
        }

        .kd {
            width: 265px !important;
        }

        .shdp {
            width: 270px !important;
            height: 260px !important;
            margin-top: 10px !important;
        }

        .hdpsm p {
            margin-bottom: 20px !important;
        }

        .xsq {
            margin-top: 8px;
            background-image: url(img/xsq.png);
            background-repeat: no-repeat;
            width: 280px;
            height: 280px;
            background-position: center 0px;
        }

        .xsqt {
            height: 230px;
        }

        .xsqd {
            height: 45px;
            background-color: #2F8CCF;
            filter: alpha(opacity=70);
            -moz-opacity: 0.7;
            -khtml-opacity: 0.7;
            opacity: 0.7;
        }

            .xsqd:hover {
                background-color: #f26666;
            }

            .xsqd span {
                color: #ffffff;
                font-weight: bold;
                display: block;
                text-align: center;
                line-height: 45px;
                letter-spacing: 1px;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
            }

        .player {
            height: 178px;
            position: absolute;
            margin: 20px 0 0 14px;
        }

        .ts {
            background-color: #2f8ccf;
            height: 55px;
        }

        .ts_span1 {
            color: #ffffff;
            line-height: 55px;
            display: block !important;
            letter-spacing: 7px;
            font-size: 16px;
            margin-left: 5px !important;
            font-weight: bold;
            float: left !important;
            width: 245px !important;
        }

        .ts_span2 {
            color: #ffffff;
            line-height: 55px;
            display: block !important;
            letter-spacing: 1px;
            font-size: 14px;
            float: right !important;
            width: 40px !important;
        }

        .ts1 {
            height: 210px;
            margin-top: 10px;
        }

        .gdpic {
            float: left;
            margin-right: 10px;
            border: #FFFFFF 6px solid;
            filter: progid:DXImageTransform.Microsoft.Shadow(color=#CFCFCF,direction=120,strength=3); /*ie*/
            -moz-box-shadow: 3px 3px 6px #CFCFCF; /*firefox*/
            -webkit-box-shadow: 3px 3px 6px #CFCFCF; /*safari或chrome*/
            box-shadow: 3px 3px 6px #CFCFCF; /*opera或ie9*/
            border-radius: 3px;
        }

            .gdpic:hover .wzbtm {
                background-color: #f26666;
                color: #ffffff;
            }

            .gdpic img {
                width: 300px;
                height: 185px;
            }

        .wzbtm {
            display: block;
            position: relative;
            margin: -30px 0 0 0;
            text-align: center;
            width: 300px;
            height: 30px;
            line-height: 30px;
            background-color: #000000;
            color: #ffffff;
            filter: alpha(opacity=70);
            -moz-opacity: 0.7;
            -khtml-opacity: 0.7;
            opacity: 0.7;
            letter-spacing: 1px;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            font-weight: bold;
        }

        #colee_left1 {
            float: left;
            width: 1610px;
            overflow: hidden;
            height: 210px;
        }

        #colee_left2 {
            float: left;
            width: 1610px;
            overflow: hidden;
            height: 210px;
        }

        .yqlj {
            width: 100%;
            height: 470px;
            background-image: url(img/yqlj_back.jpg);
            background-repeat: no-repeat;
            background-position: center 0px;
            margin-top: 15px;
        }

        .yqljwz {
            height: 220px;
        }

            .yqljwz:hover .yqljimg {
                background-image: url(img/yqlj1.png);
            }

        .yqljfh {
            height: 110px;
        }

        .yqljbt {
            margin-top: 40px;
            height: 50px;
        }

            .yqljbt span {
                color: #ffffff;
                letter-spacing: 2px;
                font-size: 16px;
                font-weight: bold;
                line-height: 50px;
                display: block;
                float: left;
            }

        .yqljxq {
            width: 420px;
            margin-left: 33px;
            height: 165px;
        }

            .yqljxq span {
                display: block;
                float: left;
                line-height: 32px;
                color: #ffffff;
                width: 208px;
                letter-spacing: 1px;
            }

                .yqljxq span:hover {
                    letter-spacing: 2px;
                }

        .yqljimg {
            background-image: url(img/yqlj.png);
            background-repeat: no-repeat;
            width: 32px;
            height: 50px;
            float: left;
        }

        .fh {
            height: 33px;
        }

            .fh span {
                color: #ffffff;
                letter-spacing: 2px;
                line-height: 33px;
            }

        .ly {
            width: 460px;
            height: 60px;
        }

        .resetly {
            display: block;
            float: right;
            width: 130px;
            height: 45px;
            background-color: #f26666;
            text-align: center;
            line-height: 45px;
            color: #ffffff;
            letter-spacing: 2px;
            font-weight: bold;
            margin-right: -24px;
            border-radius: 5px;
        }

            .resetly:hover {
                background-color: #147BC7;
            }

        .tjly {
            display: block;
            float: right;
            width: 130px;
            height: 45px;
            background-color: #1bbc9b;
            text-align: center;
            line-height: 45px;
            color: #ffffff;
            margin-right: 20px;
            letter-spacing: 2px;
            font-weight: bold;
            border-radius: 5px;
        }

            .tjly:hover {
                background-color: #147BC7;
            }
        #input1 {
            width: 200px;
            float: right;
            display: block;
            margin-right: -28px;
            height: 30px;
            background-image:url(img/input1.png);
            background-repeat:no-repeat;        
        }

        #input2 {
            width: 200px;
            float: right;
            display: block;
            margin-right: 20px;
            height: 30px;
            background-image:url(img/input2.png);
            background-repeat:no-repeat;
        }

        #input3 {
            width: 434px;
            display: block;
            float: right;
            margin-right: -28px;
            height: 30px;
            background-image:url(img/input3.png);
            background-repeat:no-repeat;
        }

        #input4 {
            width: 433px;
            display: block;
            margin-left: 40px;
            height: 95px;
            resize: none;
            background-image:url(img/input4.png);
            background-repeat:no-repeat;
        }
    </style>

    <script type="text/javascript">
        var sas;
        var sbs;
        var scs;
        var tas;
        var tbs;
        var tcs;
        var sds;
        var canshu;
        var s1;
        var bfqtitle = "";
        var smallsp = "20151119.flv";
        var bigsp = "20151119big.flv";
        window.onload = function () {
            $('.carousel').carousel({
                interval: 6000
            })
            banner_height();
            setInterval("getCurDate()", 1000);
            bfqtitle = document.getElementById("bfq_title").innerHTML.replace(/\s+/g, "");
            bfq();
            link_bfq();
            firstStep();
            ly1();
            ly2();
            ly3();
            ly4();
            $('#myTabContent_sw').hover(function () {
                clearTimeout(sas);
                clearTimeout(sbs);
                clearTimeout(scs);
                clearTimeout(sds);
                clearTimeout(tas);
                clearTimeout(tbs);
                clearTimeout(tcs);
            },
                function () { sds = setTimeout("firstStep()", 5000); }
             );
            $('#myTab13').hover(function () {
                clearTimeout(sas);
                clearTimeout(sbs);
                clearTimeout(scs);
                clearTimeout(sds);
                clearTimeout(tas);
                clearTimeout(tbs);
                clearTimeout(tcs);
            },
                function () { sds = setTimeout("firstStep()", 5000); }
             );
            $('#st1').click(function () {
                setTimeout("title_add('qa2',1,1)", 600);
            });
            $('#st2').click(function () {
                setTimeout("title_add('qa3',1,1)", 600);
            });

            title_add_second("kjxn");
            title_add_second("kjqg");
            title_add_second("kjhm");
            title_add_second("zscq");
            title_add_second("zwgk");
            title_add_second("kjhz");
        }
        window.onresize = function () {
            banner_height();
        }

        function firstStep() {
            $('#myTab13 a[href="#qa1"]').tab('show');
            sas = setTimeout("secondStep()", 5000);
            tas = setTimeout("title_add('qa1',1,1)", 600);
        }
        function secondStep() {
            $('#myTab13 a[href="#qa2"]').tab('show');
            sbs = setTimeout("thirdStep()", 5000);
            tbs = setTimeout("title_add('qa2',1,1)", 600);
        }
        function thirdStep() {
            $('#myTab13 a[href="#qa3"]').tab('show');
            scs = setTimeout("firstStep()", 5000);
            tcs = setTimeout("title_add('qa3',1,1)", 600);
        }
        function title_add(iid, r, k) {
            var div1 = document.getElementById(iid);
            var div2 = div1.children[r];
            for (var i = 0 ; i < div2.children.length; i++) {
                var a = div2.children[i].children[k].scrollWidth;
                var b = div2.children[i].children[k].offsetWidth;
                if (a > b) {
                    div2.children[i].children[k].setAttribute("title", div2.children[i].children[r].innerHTML);
                }
            }
        }

        function title_add_second(iid) {
            var div1 = document.getElementById(iid);

            for (var i = 0 ; i < div1.children.length; i++) {
                var a = div1.children[i].children[1].scrollWidth;
                var b = div1.children[i].children[1].offsetWidth;

                if (a > b) {
                    div1.children[i].children[1].setAttribute("title", div1.children[i].children[1].innerHTML);
                }
            }
        }
        function bfq() {
            //jw_flv_player
            canshu = bigsp + "swkj" + bfqtitle;
            canshu = encodeURIComponent(canshu);
            s1 = new SWFObject("img/upload/flvplayer.swf", "single", "254", "178", "7");
            s1.addParam("allowfullscreen", "true");
            s1.addVariable("file", smallsp);
            s1.addVariable("width", "254");
            s1.addVariable("height", "178");
            s1.addVariable("overstretch", "true");
            s1.addVariable("bufferlength", "10");
            s1.addVariable("usefullscreen", "false");
            s1.addVariable("fsbuttonlink", "bfq.aspx?id=" + canshu);
            s1.write("players");
        }
        function link_bfq() {
            $('#bfq_title').click(function () {
                window.open("bfq.aspx?id=" + canshu, "_blank");
                s1 = null;
                bfq();
            });
        }
       
        function ly1() {
            $('#input1').focus(function () {
                $(this).css("background-image", "url(img/noly.png)");
            });
            $('#input1').blur(function () {
                if ($('#input1').attr("value") == "") {
                    $(this).css("background-image", "url(img/input1.png)");
                }
            });
        }
        function ly2() {
            $('#input2').focus(function () {
                $(this).css("background-image", "url(img/noly.png)");
            });
            $('#input2').blur(function () {
                if ($('#input2').attr("value") == "") {
                    $(this).css("background-image", "url(img/input2.png)");
                }
            });
        }
        function ly3() {
            $('#input3').focus(function () {
                $(this).css("background-image", "url(img/noly.png)");
            });
            $('#input3').blur(function () {
                if ($('#input3').attr("value") == "") {
                    $(this).css("background-image", "url(img/input3.png)");
                }
            });
        }
        function ly4() {
            $('#input4').focus(function () {
                $(this).css("background-image", "url(img/noly.png)");
            });
            $('#input4').blur(function () {
                if ($('#input4').attr("value") == "") {
                    $(this).css("background-image", "url(img/input4.png)");
                }
            });
        }
        function cx() {
            document.getElementById("input1").value= "";
            document.getElementById("input2").value = "";
            document.getElementById("input3").value = "";
            document.getElementById("input4").value = "";
            document.getElementById("input1").style.backgroundImage = "url(img/input1.png)";
            document.getElementById("input2").style.backgroundImage = "url(img/input2.png)";
            document.getElementById("input3").style.backgroundImage = "url(img/input3.png)";
            document.getElementById("input4").style.backgroundImage = "url(img/input4.png)";

        }
    </script>

</head>
<body>
    <uc1:head runat="server" ID="head" />
    <div style="width: 1000px; margin: auto">
        <div style="margin-top: 20px;">
            <div style="height: 280px;">
                <div style="width: 430px; height: 280px; float: left; margin-left: 2px;">
                    <div class="carousel slide" id="carousel-190616">
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#carousel-190616"></li>
                            <li data-slide-to="1" data-target="#carousel-190616"></li>
                            <li data-slide-to="2" data-target="#carousel-190616"></li>
                            <li data-slide-to="3" data-target="#carousel-190616"></li>
                            <li data-slide-to="4" data-target="#carousel-190616"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <img class="i1" alt="news_pic" src="img/lunbo_1.png" />
                                <div class="carousel-caption">
                                    <p title="这里是第一个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                        这里是第一个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                    </p>
                                </div>
                            </div>
                            <div class="item" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <img class="i1" alt="news_pic" src="img/lunbo_2.png" />
                                <div class="carousel-caption">
                                    <p title="这里是第二个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                        这里是第2个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                    </p>
                                </div>
                            </div>

                            <div class="item" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <img class="i1" alt="news_pic" src="img/lunbo_3.png" />
                                <div class="carousel-caption">
                                    <p title="这里是第三个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                        这里是第3个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                    </p>
                                </div>
                            </div>

                            <div class="item" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <img class="i1" alt="news_pic" src="img/lunbo_4.png" />
                                <div class="carousel-caption">
                                    <p title="这里是第四个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                        这里是第4个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                    </p>
                                </div>
                            </div>

                            <div class="item" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <img class="i1" alt="news_pic" src="img/lunbo_5.png" />
                                <div class="carousel-caption">
                                    <p title="这里是第五个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                        这里是第5个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="width: 550px; height: 280px; float: right;">
                    <div class="bs-docs-example">
                        <div class="morebc m2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"></div>
                        <ul id="myTab13" class="nav nav-tabs">
                            <li class="active"><a href="#qa1" data-toggle="tab"><span>科技前沿</span></a></li>
                            <li id="st1"><a href="#qa2" data-toggle="tab"><span>工作动态</span></a></li>
                            <li id="st2"><a href="#qa3" data-toggle="tab"><span>通知公告</span></a></li>
                        </ul>
                        <div id="myTabContent_sw" class="tab-content" style="height: 222px !important; overflow: hidden !important; background-image: url(img/hdright.jpg); background-repeat: no-repeat;">
                            <div class="tab-pane fade in active" id="qa1">
                                <div class="more m1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"></div>
                                <div style="margin-top: 2px">
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">第二十二届中国杨凌农业高新技术成果博览会的成果展示</span><span class="lb2">11-19</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">关于加强农业科技创新推广加快农业农村发展的目标</span><span class="lb2">11-18</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">开展中药材种植技术培训 科技助农增收致富 每个农民都非常有钱</span><span class="lb2">11-17</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">引进先进的生产技术、优良品种和管理方式，大力发展特色农业和标准化生产</span><span class="lb2">11-16</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">再获项目支撑 雨城区农村产业技术服务中心功能</span><span class="lb2">08-22</span></div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="qa2">
                                <div class="more m2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"></div>
                                <div style="margin-top: 2px">
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">关于加强农业科技创新推广</span><span class="lb2">11-18</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">第二十二届中国杨凌农业高新技术成果博览会的成果展示博览会的成果展示成果展示成果展示</span><span class="lb2">11-19</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">雨城区农村产业技术服务中心功能</span><span class="lb2">08-22</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">大力发展特色农业和标准化生产</span><span class="lb2">11-16</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">开展中药材种植技术培训</span><span class="lb2">11-17</span></div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="qa3">
                                <div class="more m3" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"></div>
                                <div style="margin-top: 2px">
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">科技助农增收致富</span><span class="lb2">11-17</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">关于加快农业农村发展的目标农村发展的目标农村发展的目标农业农村发农业农村发</span><span class="lb2">11-18</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">第二十二届中国杨凌农业高新技术成果</span><span class="lb2">11-19</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">再获项目支撑 雨城区农村产业技术服务中心功能</span><span class="lb2">08-22</span></div>
                                    <div class="divlb1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <div class="imgd"></div>
                                        <span class="lb1">引进先进的生产技术、优良品种和管理方式</span><span class="lb2">11-16</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row-fluid" style="height: 382px;">

                <div class="span4 bk">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <img src="img/kjxn.png" /><span>科技兴农</span>
                    </div>
                    <div class="ftitle1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span>更多</span></div>
                    <div class="ftitle"></div>
                    <div style="margin-top: 8px;" id="kjxn">
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_s"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_s"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_s"></div>
                            <span class="lb_bt_sp">这里是标题这里是标题这里是标题这里是标题这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_s"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_s"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_s"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                    </div>
                </div>

                <div class="span4 bk">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <img src="img/kjqg.png" /><span>科技强工</span>
                    </div>
                    <div class="ftitle1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span>更多</span></div>
                    <div class="ftitle"></div>
                    <div style="margin-top: 8px;" id="kjqg">
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_g"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_g"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_g"></div>
                            <span class="lb_bt_sp">这里是标题这里是标题这里是标题这里是标题这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_g"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_g"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_g"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                    </div>
                </div>

                <div class="span4 bk">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'">
                        <img src="img/bsdt.png" /><span>办事大厅</span>
                    </div>
                    <div class="ftitle1"><span>▼</span></div>
                    <div class="ftitle"></div>
                    <div class="bsdt">
                        <div class="bsdta" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="sbgl_div1"></div>
                            <div class="sbgl_div1_hv"></div>
                            <div class="sbgl_div2">
                                <span class="bt_our1">项目申报与管理</span>
                                <span class="sbgl">点击这里查看有关省级和市级科技计划项目申报与管理的相关政策、管理办法、实施意见及有关文件。</span>
                            </div>
                        </div>
                        <div class="bsdtb">
                            <div class="zxsb_div1"></div>
                            <div class="zxsb_div1_hv"></div>
                            <div class="zxsb_div2">
                                <span class="bt_our2">项目在线申报</span>
                                <span class="zxsb_span" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='http://xmgl.scst.gov.cn/index.html'">省科技计划项目在线申报 ></span>
                                <span class="zxsb_span" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='http://yakjj.tccxfw.com/'">市科技计划项目在线申报 ></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="fengetu"></div>

            <div class="row-fluid">

                <div class="span4 bk">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <img src="img/kjhm.png" /><span>科技惠民</span>
                    </div>
                    <div class="ftitle1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span>更多</span></div>
                    <div class="ftitle"></div>
                    <div style="margin-top: 8px;" id="kjhm">
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_h"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_h"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_h"></div>
                            <span class="lb_bt_sp">这里是标题这里是标题这里是标题这里是标题这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_h"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_h"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_h"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                    </div>
                </div>

                <div class="span4 bk">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <img src="img/zscq.png" /><span>知识产权</span>
                    </div>
                    <div class="ftitle1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span>更多</span></div>
                    <div class="ftitle"></div>
                    <div style="margin-top: 8px;" id="zscq">
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_z"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_z"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_z"></div>
                            <span class="lb_bt_sp">这里是标题这里是标题这里是标题这里是标题这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_z"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_z"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_z"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                    </div>
                </div>

                <div class="span4 bk">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <img src="img/spzs.png" /><span>视频展示</span>
                    </div>
                    <div class="ftitle1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span>更多</span></div>
                    <div class="ftitle"></div>
                    <div class="xsq">
                        <div class="xsqt">
                            <div id="players" class="player"></div>
                        </div>
                        <div class="xsqd"><span id="bfq_title" onmouseover="this.style.cursor='pointer'">雨城区知识产权强县试点专题片</span></div>
                    </div>
                </div>

            </div>

            <div class="row-fluid">

                <div class="span8 bk1">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <img src="img/kjhz.png" /><span>科技合作与交流</span>
                    </div>
                    <div class="ftitle1_1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span>更多</span></div>
                    <div class="ftitle_1"></div>
                    <div style="height: 270px; width: 300px; float: left; margin-top: 10px;">
                        <div class="carousel slide" id="carousel-190611">
                            <ol class="carousel-indicators" style="right: 40px !important">
                                <li class="active" data-slide-to="0" data-target="#carousel-190611"></li>
                                <li data-slide-to="1" data-target="#carousel-190611"></li>
                                <li data-slide-to="2" data-target="#carousel-190611"></li>
                                <li data-slide-to="3" data-target="#carousel-190611"></li>
                            </ol>
                            <div class="carousel-inner shdp">
                                <div class="item active" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                    <img class="i1" alt="news_pic" src="img/lunbo_1.png" />
                                    <div class="carousel-caption hdpsm">
                                        <p title="这里是第一个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                            这里是第一个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                        </p>
                                    </div>
                                </div>
                                <div class="item" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                    <img class="i1" alt="news_pic" src="img/lunbo_2.png" />
                                    <div class="carousel-caption hdpsm">
                                        <p title="这里是第二个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                            这里是第2个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                        </p>
                                    </div>
                                </div>

                                <div class="item" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                    <img class="i1" alt="news_pic" src="img/lunbo_3.png" />
                                    <div class="carousel-caption hdpsm">
                                        <p title="这里是第三个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                            这里是第3个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                        </p>
                                    </div>
                                </div>

                                <div class="item" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                    <img class="i1" alt="news_pic" src="img/lunbo_4.png" />
                                    <div class="carousel-caption hdpsm">
                                        <p title="这里是第四个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！">
                                            这里是第4个图片的标题，嗯是个标题！嗯是个标题！嗯是个标题！						
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="height: 270px; width: 323px; float: left; margin-top: 10px;">
                        <div id="kjhz">
                            <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <div class="img_z"></div>
                                <span class="lb_bt_sp kd">这里是标题</span><span class="jiantou">></span>
                            </div>
                            <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <div class="img_z"></div>
                                <span class="lb_bt_sp kd">这里是标题</span><span class="jiantou">></span>
                            </div>
                            <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <div class="img_z"></div>
                                <span class="lb_bt_sp kd">这里是标题这里是标题这里是标题这里是标题</span><span class="jiantou">></span>
                            </div>
                            <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <div class="img_z"></div>
                                <span class="lb_bt_sp kd">这里是标题</span><span class="jiantou">></span>
                            </div>
                            <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <div class="img_z"></div>
                                <span class="lb_bt_sp kd">这里是标题</span><span class="jiantou">></span>
                            </div>
                            <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                <div class="img_z"></div>
                                <span class="lb_bt_sp kd">这里是标题</span><span class="jiantou">></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="span4 bk">
                    <div class="ftitle2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <img src="img/zwgk.png" /><span>政务公开</span>
                    </div>
                    <div class="ftitle1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span>更多</span></div>
                    <div class="ftitle"></div>
                    <div style="margin-top: 8px;" id="zwgk">
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_k"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_k"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_k"></div>
                            <span class="lb_bt_sp">这里是标题这里是标题这里是标题这里是标题这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_k"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_k"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                        <div class="lb_bt" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <div class="img_k"></div>
                            <span class="lb_bt_sp">这里是标题</span><span class="jiantou">></span>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row-fluid" style="margin-top: 10px;">
                <div class="span12" style="height: 300px; background-image: url(img/back_bk2.png); background-repeat: no-repeat; padding: 18px;">
                    <div class="ts">
                        <img src="img/ts.png" style="float: left;" /><span class="ts_span1">特色农产品和支柱产业</span><span class="ts_span2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">更多</span>
                    </div>
                    <div class="ts1">
                        <div id="colee_left" style="overflow: hidden; width: 964px; height: 210px;">
                            <div style="width: 3220px;">
                                <div id="colee_left1">
                                    <div class="gdpic" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <img src="img/1.jpg" /><div class="wzbtm"><span>普通标题一个</span></div>
                                    </div>
                                    <div class="gdpic" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <img src="img/2.jpg" /><div class="wzbtm"><span>这里是标题 带空格</span></div>
                                    </div>
                                    <div class="gdpic" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <img src="img/3.jpg" /><div class="wzbtm"><span>这个是一个很长很长很长的标题，真的非常长！</span></div>
                                    </div>
                                    <div class="gdpic" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <img src="img/4.jpg" /><div class="wzbtm"><span>普通标题一个</span></div>
                                    </div>
                                    <div class="gdpic" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                        <img src="img/5.jpg" /><div class="wzbtm"><span>普通标题一个</span></div>
                                    </div>
                                </div>
                                <div id="colee_left2"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                //使用div时，请保证colee_left2与colee_left1是在同一行上.
                var speed = 40//速度数值越大速度越慢
                var colee_left2 = document.getElementById("colee_left2");
                var colee_left1 = document.getElementById("colee_left1");
                var colee_left = document.getElementById("colee_left");
                colee_left2.innerHTML = colee_left1.innerHTML
                function Marquee3() {
                    if (colee_left2.offsetWidth - colee_left.scrollLeft <= 0)//offsetWidth 是对象的可见宽度
                        colee_left.scrollLeft -= colee_left1.offsetWidth//scrollWidth 是对象的实际内容的宽，不包边线宽度
                    else {
                        colee_left.scrollLeft++
                    }
                }
                var MyMar3 = setInterval(Marquee3, speed)
                colee_left.onmouseover = function () { clearInterval(MyMar3) }
                colee_left.onmouseout = function () { MyMar3 = setInterval(Marquee3, speed) }
            </script>
        </div>
    </div>
    <div class="yqlj">
        <div style="width: 994px; margin: auto;">
            <div class="row-fluid">
                <div class="span6">
                    <div class="yqljwz">
                        <div class="yqljbt">
                            <div class="yqljimg"></div>
                            <span>友情链接及相关查询</span></div>
                        <div class="yqljxq">
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">国家知识产权局</span>
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">中国专利查询系统</span>
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">中国科技部</span>
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">四川省科学技术厅</span>
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">四川省知识产权局</span>
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">雨城之窗</span>
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">雅安科学技术和知识产权局</span>
                            <span onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">弘毅天承有限公司</span>
                        </div>
                    </div>
                    <div class="yqljfh">
                        <div class="fh">
                            <img src="img/b1.png" /><span>地址：四川省雅安市雨城区雅州大道387号</span></div>
                        <div class="fh">
                            <img src="img/b2.png" /><span>电话：0835-2822545</span></div>
                        <div class="fh">
                            <img src="img/b3.png" /><span>邮编：625000</span></div>
                    </div>
                </div>
                <div class="span6">
                    <div class="ly" style="margin-top: 60px;">
                        <input type="text" id="input1" tabindex="2" /><input type="text" id="input2" tabindex="1" /></div>
                    <div class="ly">
                        <input type="text" id="input3" tabindex="3" /></div>
                    <div class="ly" style="height: 135px !important">
                        <textarea id="input4" tabindex="4"></textarea></div>
                    <div class="ly"><span class="resetly" onmouseover="this.style.cursor='pointer'" onclick="cx()">重写留言</span><span class="tjly" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">提交留言</span></div>
                </div>
            </div>
        </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>
