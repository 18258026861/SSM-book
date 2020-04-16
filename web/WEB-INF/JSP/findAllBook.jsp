<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Barcelona
  Date: 2020/4/16
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
<%--    导入BootStrap --%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /*div{
            width: 2000px;
        }*/
    </style>
</head>
<body>
<%--栅格--%>
<div class="container">
<%--        清除浮动--%>
    <div class="row clearfix">
<%--            把一行分成12格--%>
        <div class="col-md-12 column-drag-header">
            <div class="page-header" align="center">
                <h1>
                    <small>
                            书籍列表
                    </small>
                </h1>
            </div>
        </div>
    <div class="row clearfix">
        <div  class="col-md-12 column-drag-header">
            <div align="center">
                <ul  class="nav nav-tabs">
                <%--                    class=active表示这个选项即为点前页面，不可点击--%>
                <li class="active"><a href="#">书籍列表</a></li>
                <li ><a href="#">删除书籍</a></li>
                <li ><a href="#">Practice Editor </a></li>
                <li ><a href="#">Gallery</a></li>
            </ul></div>

        </div>
    </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column-drag-header">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍介绍</th>
                    </tr>
                </thead>
                <tbody>
        <%--                    数据从数据库中查出来，还要遍历foreach--%>
                    <c:forEach var="book" items="${book}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
