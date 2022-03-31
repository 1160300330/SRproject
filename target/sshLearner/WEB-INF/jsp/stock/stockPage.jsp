<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        body {
            margin: 0;
            padding:0;
        }
        /* 头部样式 */
        .header {
            background:url(tittle.png) no-repeat left;
            background-size: 90px;
            height: 100px;
            text-align: center;
        }
        .center{
            background-color: #43506C;
            height: 701px;
            margin:0;
            padding-top:1px;
        }


        /*.blur {-webkit-filter: blur(4px);filter: blur(4px);}*/
        /* 底部样式 */
        .footer {
            padding: 20px;
            text-align: right;
        }
        h1 {text-decoration:none;font-size: 50px;color:#333;text-align:left;font-family:"Times New Roman",Times,serif;padding-left:80px;padding-top:15px;}
        h2 {text-decoration:none;font-size: 30px;color:#E9E9EB;text-align:center;font-family:"Times New Roman",Times,serif;padding-top:15px;}
        p  {color:#43506C;font-family:黑体,Times,serif}

        form
        {
            text-align: center;
            color:#E9E9EB;
            font-size: 20px;
        }
        input{
            outline-style: none;
            border: 1px solid #ccc;
            border-radius: 3px;
            padding: 12px 12px;
            background-color:#E9E9EB;
        }
        input:focus{
            border-color: #FFFFFF;
            outline: 0;
            -webkit-box-shadow: inset 0 3px 3px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 3px 3px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            background-color: #FFFFFF;
        }













    </style>
</head>
<body>
<div class="header">
    <h1>股票模拟交易市场 </h1>
</div>


<div class="center">
    <div>
        <h2>
            按代码查询
        </h2>
        <form action="" name="stockIDForm">
            股票代码：<input type="text" placeholder="请输入数字" name="StockID"><br>
            时间格式：YYYY-MM-DD<br>
            起始时间：<input type="text" name="StartDate"><br>
            终止时间：<input type="text" name="EndDate"><br>
            <input type="button" value="按时间查询" onclick="queryByIDDate()"><br>
            查询条数：<input type="text" name="Rows"><br>
            <input type="button" value="按条数查询" onclick="queryByIDNum()"><br>
        </form>
    </div>

    <div>
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

    </div>

    <div>
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

    </div>








</div>

<div class="footer">
    <p style=“color:#43506C”>
        使啥浏览器都行，分辨率没什么要求。
    </p>
    <p>
        消费者投资热线： 400-8888-400
    </p>
</div>










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
