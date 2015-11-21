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
    <title>雨城区科技创新网-文章详情页面</title>
    <style type="text/css">
    </style>

    <script type="text/javascript">
        window.onload = function () {
            banner_height();
            setInterval("getCurDate()", 1000);
        }
    </script>
</head>

<body>
    <uc1:head runat="server" ID="head" />

    <div style="width: 1000px; margin: auto">
        <div class="row-fluid" style="margin-top: 10px">
        </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>
