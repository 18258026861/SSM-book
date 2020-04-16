<%--
  Created by IntelliJ IDEA.
  User: Barcelona
  Date: 2020/4/16
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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
                        修改书籍
                    </small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div  class="col-md-12 column-drag-header">
            <div align="center">
                <ul  class="nav nav-tabs">
                    <%--                    class=active表示这个选项即为点前页面，不可点击--%>
                    <li class="active"><a href="${pageContext.request.contextPath}/book/findAllBook">书籍列表</a></li>
                    <li ><a href="${pageContext.request.contextPath}/book/addBookPage">新增书籍</a></li>
                    <li ><a href="${pageContext.request.contextPath}/book/queryBookPage">查询书籍</a></li>
                    <li ><a href="${pageContext.request.contextPath}/book/updateBookPage">修改书籍</a></li>
                </ul></div>
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
                <c:forEach var="book" items="${updatebook}">
                    <tr>
                        <td>${updatebook.bookID}</td>
                        <td>${updatebook.bookName}</td>
                        <td>${updatebook.bookCounts}</td>
                        <td>${updatebook.detail}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<form action="${pageContext.request.contextPath}/book/update" class="form-horizontal" role="form">
    <div class="form-group">
        <label class="col-sm-2 control-label">书籍id</label>
        <div class="col-sm-10">
            <input type="text" class="form-control"  name="bookID" value="${updatebook.bookID}" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">书籍名称</label>
        <div class="col-sm-10">
            <input type="text" class="form-control"  name="bookName" value="${updatebook.bookName}" required>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-md-2 control-label">书籍数量</label>
        <div class="col-sm-10">
            <input type="text" class="form-control"  name="BookCounts" value="${updatebook.bookCounts}"  required>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">书籍介绍</label>
        <div class="col-sm-10">
            <input type="text" class="form-control"  name="detail" value="${updatebook.detail}" required>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">修改</button>
        </div>
    </div>
</form>
</body>
</html>
