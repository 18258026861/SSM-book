<%--
  Created by IntelliJ IDEA.
  User: Barcelona
  Date: 2020/4/16
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍页面</title>
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
                        新增书籍
                    </small>
                </h1>
            </div>
        </div>
    </div>
</div>

<form class="form-horizontal" role="form">
    <div class="form-group">
        <label for="bookID" class="col-sm-2 control-label">书籍编号</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="bookID" placeholder="请输入书籍编号">
        </div>
    </div>
    <div class="form-group">
        <label for="BookName" class="col-sm-2 control-label">书籍名称</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="BookName" placeholder="请输入书籍名称">
        </div>
    </div>
    <div class="form-group">
        <label for="BookCounts" class="col-md-2 control-label">书籍数量</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="BookCounts" placeholder="请输入书籍名称">
        </div>
    </div>
    <div class="form-group">
        <label for="detail" class="col-sm-2 control-label">书籍介绍</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="detail" placeholder="请输入书籍名称">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">增加</button>
        </div>
    </div>
</form>
</body>
</html>
