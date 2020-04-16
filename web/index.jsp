<%--
  Created by IntelliJ IDEA.
  User: Barcelona
  Date: 2020/4/15
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主页</title>
    <style>
<%--      为h3标签设计样式--%>
      a{
        /*取消下划线*/
        text-decoration: none;
        color: black;
        font-size: larger;
      }
      h3{
          width: 180px;
          height: 38px;
          /*距离顶部高度*/
          margin:100px auto;
          text-align: center;
        /行高和字体高度一样*/
          line-height: 38px;
        /*背景颜色*/
        background: blueviolet;

      /*  圆角边框*/
        border-radius: 5px;
      }
    </style>
  </head>
  <body>
  <h3>
    <a href="${pageContext.request.contextPath}/book/findAllBook">查看所有书籍</a>
  </h3>

  </body>
</html>
