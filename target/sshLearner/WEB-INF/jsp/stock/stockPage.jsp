<%--
  Created by IntelliJ IDEA.
  User: 马睿
  Date: 2022/3/23
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>股票界面</title>
    <style type="text/css">
        a {
            text-decoration: none;
            font-size: 18px;
        }

        h3 {
            width: 280px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            border-radius: 4px;
        }

        h1{
            text-align: center;
        }
        h2{
            text-align: center;
        }
        form
        {
            text-align: center;
        }
    </style>
</head>
<body>
<h1>
    股票界面
</h1>
    <h2>
        按代码查询
    </h2>
    <form action="" name="stockIDForm">
        股票代码：<input type="text" name="StockID"><br>
        时间格式：YYYY-MM-DD<br>
        起始时间：<input type="text" name="StartDate"><br>
        终止时间：<input type="text" name="EndDate"><br>
        <input type="button" value="按时间查询" onclick="queryByIDDate()"><br>
        查询条数：<input type="text" name="Rows"><br>
        <input type="button" value="按条数查询" onclick="queryByIDNum()"><br>
    </form><br>
    <h2>
        按名称查询
    </h2>
    <form action="" name="stockNameForm">
        股票名称：<input type="text" name="StockName"><br>
        时间格式：YYYY-MM-DD<br>
        起始时间：<input type="text" name="StartDate"><br>
        终止时间：<input type="text" name="EndDate"><br>
        <input type="button" value="按时间查询" onclick="queryByNameDate()"><br>
        查询条数：<input type="text" name="Rows"><br>
        <input type="button" value="按条数查询" onclick="queryByNameNum()"><br>
    </form>


    <h2>
        实时股票行情查询
    </h2>

    <form action="" name="RealtimeStockForm">
        股票代码：<input type="text" name="StockID"><br>
        <input type="button" value="查询" onclick="queryByIDRealtime()"><br>
        <input type="button" value="时分k"  onclick="queryByIDRealtimePicMin()"><br>
        <input type="button" value="日k"  onclick="queryByIDRealtimePicDaily()"><br>
        <input type="button" value="周k"  onclick="queryByIDRealtimePicWeek()"><br>
        <input type="button" value="月k"  onclick="queryByIDRealtimePicMonth()"><br>
    </form>

    <h2>
        <a href="http://data.eastmoney.com/center/">实时所有股票行情</a>
    </h2>



    <script type="text/javascript">
        function queryByIDDate() {
            var form = document.forms[0];
            form.action = "${path}/stock/queryByIDDate";
            form.method = "post";
            form.submit();
        }
        function queryByIDNum() {
            var form = document.forms[0];
            form.action = "${path}/stock/queryByIDNum";
            form.method = "post";
            form.submit();
        }
        function queryByNameDate() {
            var form = document.forms[1];
            form.action = "${path}/stock/queryByNameDate";
            form.method = "post";
            form.submit();
        }
        function queryByNameNum() {
            var form = document.forms[1];
            form.action = "${path}/stock/queryByNameNum";
            form.method = "post";
            form.submit();
        }
        function queryByIDRealtime()
        {
            var form = document.forms[2];
            form.action = "${path}/stock/realtimeStock";
            form.method = "post";
            form.submit();
        }
        function queryByIDRealtimePicDaily()
        {
            var form = document.forms[2];
            form.action = "${path}/stock/realtimeStockPicDaily";
            form.method = "post";
            form.submit();
        }
        function queryByIDRealtimePicMin()
        {
            var form = document.forms[2];
            form.action = "${path}/stock/realtimeStockPicMin";
            form.method = "post";
            form.submit();
        }
        function queryByIDRealtimePicWeek()
        {
            var form = document.forms[2];
            form.action = "${path}/stock/realtimeStockPicWeek";
            form.method = "post";
            form.submit();
        }
        function queryByIDRealtimePicMonth()
        {
            var form = document.forms[2];
            form.action = "${path}/stock/realtimeStockPicMonth";
            form.method = "post";
            form.submit();
        }

    </script>

</body>
</html>
