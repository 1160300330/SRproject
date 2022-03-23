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
    </style>
</head>
<body>
<h1>
    股票界面
</h1>


    <form action="" name="stockForm">
        股票代码：<input type="text" name="StockID",value="sh600000"><br><br><br>
        <input type="button" value="查询10条记录" onclick="queryByID()">
    </form>

    <script type="text/javascript">
        function queryByID() {
            var form = document.forms[0];
            form.action = "${path}/stock/stockHistory";
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
