<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsshow.aspx.cs" Inherits="newsshow" %>

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
    <title>雨城区科技创新网（这里是当前文章的标题）</title>
    <style type="text/css">
        #maindiv {
            width: 1000px;
            margin: auto;
        }

        .sxpian {
            display: block !important;
            margin-top: 5px;
        }

        .showtitle {
            min-height: 35px;
            width: 1000px;
        }

            .showtitle span {
                line-height: 35px;
                font-size: 20px;
                letter-spacing: 2px;
                color: #F24D4D;
                font-weight: bold;
                width: 800px;
                display: block;
                margin-left: 100px;
                text-align:center;
            }

        a:hover {
            text-decoration: none !important;
        }

        a {
            letter-spacing: 2px !important;
        }

        li {
            letter-spacing: 2px !important;
        }

        .showtitle_sx {
            margin-top: -10px;
            height: 40px;
        }

        .sx1 {
            width: 700px;
            height: 30px;
            float: left;
        }

            .sx1 span {
                display: block;
                float: left;
                margin-left: 100px;
                line-height: 20px;
                letter-spacing: 1px;
                color: #8B8989;
            }

        .sx2 {
            width: 270px;
            float: left;
            margin-left: -15px;
        }

        .show_nr {
            font-family: 微软雅黑 !important;
            letter-spacing: 1px !important;
            width: 800px;
            margin: 20px 0 50px 100px;
            font-size: 16px;
            text-indent: 2em;
            text-align: justify !important;
        }

        .fxspan {
            width: 60px !important;
            line-height: 18px;
            display: block !important;
            float: left !important;
        }
    </style>

    <script type="text/javascript">
        window.onload = function () {
            banner_height();
            setInterval("getCurDate()", 1000);
            bodyheight();
        }
        window.onresize = function () {
            banner_height();
            bodyheight();
        }

        function bodyheight() {
            var llq_height;
            var top_height;
            var body_height;
            top_height = document.getElementById("topheight").clientHeight;
            llq_height = document.documentElement.clientHeight;
            body_height = llq_height - top_height - 110;
            document.getElementById("maindiv").style.minHeight = body_height + "px";
        }
    </script>
</head>
    <%-- 后台变量说明：　大类名称：BigClassName  大类id: BigClassId
                         新闻标题：Titles
        　　　　　　　　发布时间：FbTimes
        　　　　　　　　新闻内容：Contents
        　　　　　　　　上一篇：json_pre
        　　　　　　　　下一篇：json_next
        --%>
<body>
    <uc1:head runat="server" ID="head" />

    <div id="maindiv">
        <div class="row-fluid" style="margin-top: 10px">
            <div class="span12">
                <ul class="breadcrumb">
                    <li>
                        <a href="#">首页</a> <span class="divider">/</span>
                    </li>
                    <li>
                        <a href="#">当前大类</a> <span class="divider">/</span>
                    </li>
                    <li class="active">当前小类
				</li>
                </ul>
            </div>
        </div>

        <div class="row-fluid" style="margin-top: 10px">
            <div class="span12">
                <div class="showtitle"><span>这里是新闻标题，新闻标题新闻标题闻标题新闻标题闻标题新闻标题闻标题新闻标题闻标题新闻标题闻标题新闻标题闻标题新闻标题闻</span></div>
                <hr />
                <div class="showtitle_sx">
                    <div class="sx1"><span>发布时间：2015-11-29</span><span>发布者：网站管理员</span></div>
                    <div class="sx2">
                        <div class="bshare-custom">
                            <span class="fxspan">分享到：</span>
                            <a title="分享到QQ空间" class="bshare-qzone"></a>
                            <a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a>
                            <a title="分享到腾讯微博" class="bshare-qqmb" href="javascript:void(0);"></a>
                            <a title="分享到QQ好友" class="bshare-qqim" href="javascript:void(0);"></a>
                            <a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
                            <a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
                        </div>
                        <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=3&amp;lang=zh"></script>
                        <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
                    </div>
                </div>
                <div class="show_nr">
                    <p>在我市创建国家农业科技园区的关键时刻，8月25日，国家科技部副部长张来武在省科技厅厅长刘东和市委书记彭宇行，市委副书记、市长杨松柏的陪同下，冒雨深入内江农业科技园区，调研指导我市工作。</p><p>
第一站来到农业产业化龙头企业——资中永辉生态农业有限公司。“绿色生态、科技领先”，这是企业黑猪产业的发展理念，并利用“黑溜宝”这一品牌，不断延伸产业链条，打响品牌，特别是企业利用“电商平台”发展壮大，张来武赞赏“很有科技意识”，勉励企业利用科技手段做强主业、做大市场。
第二站是内江农业科技园区核心区。站在园区沙盘前，张来武认真听取园区情况汇报。内江农业科技园区，突出体现现代农业技术创新与示范、现代农业产业集聚与展示、农民以农富农示范与促进等“三大功能”，努力建设丘陵地区农业科技示范区、城乡统筹发展先行区、地理标志农产品保育区、农业循环经济技术创新区、绿色食品产业区“五个区”张来武对此给予肯定：“坚持创新驱动、注重城乡统筹，这些思路都十分正确。”
对园区展示的特色产品从“中国塔罗科血橙”、“黄老五”、“周萝卜”等，到“资中鲶鱼”、“甜城鳅鳗”等，张来武充分肯定了“内江造”的科技和市场潜力。内江农业园区与中国农大、北京大学、四川农大、中国农科院、四川省农科院、四川省植物工程研究院等高校和科研机构建立了合作关系、内江农科院在核心区建基地等等，张来武肯定了园区重视科技支撑、加大产学研合作的做法。
调研的最后一站是内江农业园区的四川千草生物技术股份有限公司，主要业务是铁皮石斛种苗的培育、销售和种植，目前已成为国内铁皮石斛种苗的第一供应商。该公司日前已成功登陆“新三板”。</p><p>“企业的科技支撑是什么？优势在哪里？”“主要优势是复制力。”在一问一答中，张来武了解到铁皮石斛作为我国传统名贵中药，有着“九大仙草之首”的美誉时，张来武勉励企业学习“冬虫夏草”的商业运作模式，加大营销力度；同时做大金线莲、蓝莓等特色品种产业，不断往产品下游拓展，延长产业链，提高产品附加值。
随同调研的刘东厅长充分肯定了内江农业科技和创建国家农业科技园区工作。</p>
　　<p>国家科技部农村科技司司长陈传宏、处长杨如，市委常委谢和友、副市长黄健，省科技厅副厅长周孟林、农村处处长吴彬陪同调研。</p>
                </div>
            </div>
        </div>

        <div class="row-fluid" style="margin-top: 10px">
            <div class="span12">
                <ul class="breadcrumb">
                    <li class="sxpian">
                        <span class="divider"><a href="#">上一篇： 中国共产党成立了一周年了</a></span>
                    </li>
                    <li class="sxpian">
                        <span class="divider"><a href="#">下一篇： 中国共产党成立了六周年了</a></span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>
