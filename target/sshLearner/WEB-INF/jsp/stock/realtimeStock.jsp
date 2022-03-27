<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=gb2312" language="java" isELIgnored="false"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>股票历史记录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <!--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">-->
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>日期</th>
                    <th>代码</th>
                    <th>名称</th>
                    <th>当前价格</th>
                    <th>最高价</th>
                    <th>最低价</th>
                    <th>开盘价</th>
                    <th>前收盘</th>
                    <th>涨跌额</th>
                    <th>涨跌幅</th>
                    <th>换手率</th>
                    <th>成交量(万)</th>
                    <th>成交金额(万)</th>
                    <th>总市值</th>
                    <th>流通市值</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${requestScope.get('date')}</td>
                        <td>${requestScope.get('id')}</td>
                        <td>${requestScope.get('name')}</td>
                        <td>${requestScope.get('dangqianjiage')}</td>
                        <td>${requestScope.get('zuigaojia')}</td>
                        <td>${requestScope.get('zuidijia')}</td>
                        <td>${requestScope.get('kaipanjia')}</td>
                        <td>${requestScope.get('qianshoupan')}</td>
                        <td>${requestScope.get('zhangdiee')}</td>
                        <td>${requestScope.get('zhangdiefu')}</td>
                        <td>${requestScope.get('huanshoulv')}</td>
                        <td>${requestScope.get('chengjiaoliang')}</td>
                        <td>${requestScope.get('chengjiaojine')}</td>
                        <td>${requestScope.get('zongshizhi')}</td>
                        <td>${requestScope.get('liutongshizhi')}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


</div>
