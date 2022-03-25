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
            color: black;
            font-size: 18px;
        }

        h3 {
            width: 280px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }

        h1{
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
    <form action="" name="stockIDForm">
        股票代码：<input type="text" name="StockID"><br>
        起始时间：<input type="text" name="StartDate"><br>
        终止时间：<input type="text" name="EndDate"><br>
        <input type="button" value="按时间查询" onclick="queryByIDDate()"><br>
        查询条数：<input type="text" name="Rows"><br>
        <input type="button" value="按条数查询" onclick="queryByIDNum()"><br>
    </form><br>

    <form action="" name="stockNameForm">
        股票名称：<input type="text" name="StockName"><br>
        起始时间：<input type="text" name="StartDate"><br>
        终止时间：<input type="text" name="EndDate"><br>
        <input type="button" value="按时间查询" onclick="queryByNameDate()"><br>
        查询条数：<input type="text" name="Rows"><br>
        <input type="button" value="按条数查询" onclick="queryByNameNum()"><br>
    </form>

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
    </script>





<h3>
    <a href="${path }/stock/realtimeStock">实时交易情况</a>
</h3>
<h3>
    <a href="${path }/stock/allStock">实时所有股票</a>
</h3>
</body>
</html>
