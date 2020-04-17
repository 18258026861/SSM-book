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
                        查询书籍
                    </small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div  class="col-md-12 column-drag-header">
            <div align="center">
                <ul  class="nav nav-tabs">
                        <li ><a href="${pageContext.request.contextPath}/book/findAllBook">书籍列表</a></li>
                        <li ><a href="${pageContext.request.contextPath}/book/addBookPage">新增书籍</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/book/queryBookPage">查询书籍</a></li>
                </ul>
            </div>
        </div>
    </div>


            <form class="form-inline" action="${pageContext.request.contextPath}/book/findByName" class="form-horizontal" role="form">
                <div class="form-group">
<%--                              占据12格中的3格    右对齐--%>
                    <label class="col-md-3  control-label">书籍名称</label>
                    <div class="col-sm-6" >
                        <input type="text" class="form-control"  name="bookName" placeholder="请输入书籍名称" required >
                    </div>
                </div>
                <div class="form-group">
<%--                    相对于左侧偏移、推、拉 ,offset-4:在左侧补充4列--%>
                    <div class="col-sm-offset-4 col-sm-10">
                        <button type="submit" class="btn btn-default">查询</button>
                    </div>
                </div>
            </form>

<div class="row clearfix">
    <div class="col-md-12 column-drag-header">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍介绍</th>
                <th>操作</th>
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
                    <td>
                        <h3>
                                <%--          获取bookID的参数用于执行sql语句   --%>
                            <a href="${pageContext.request.contextPath}/book/updateBookPage?bookID=${book.bookID}">修改</a>
                            |
                            <a href="${pageContext.request.contextPath}/book/delete?bookID=${book.bookID}">删除</a>
                        </h3>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</div>




</body>
</html>
