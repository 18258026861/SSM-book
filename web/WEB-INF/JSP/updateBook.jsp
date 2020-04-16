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
                        删除书籍
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
                    <li ><a href="${pageContext.request.contextPath}/book/findAllBook">书籍列表</a></li>
                    <li ><a href="${pageContext.request.contextPath}/book/addBookPage">新增书籍</a></li>
                    <li ><a href="${pageContext.request.contextPath}/book/queryBookPage">查询书籍</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/book/updateBookPage">修改书籍</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
