<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=gb2312" language="java" isELIgnored="false"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>��Ʊ��ʷ��¼</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ���� Bootstrap -->
    <!--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">-->
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>����</th>
                    <th>����</th>
                    <th>����</th>
                    <th>��ǰ�۸�</th>
                    <th>��߼�</th>
                    <th>��ͼ�</th>
                    <th>���̼�</th>
                    <th>ǰ����</th>
                    <th>�ǵ���</th>
                    <th>�ǵ���</th>
                    <th>������</th>
                    <th>�ɽ���(��)</th>
                    <th>�ɽ����(��)</th>
                    <th>����ֵ</th>
                    <th>��ͨ��ֵ</th>
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
