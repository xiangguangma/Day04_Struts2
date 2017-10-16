<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 上午9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
  </head>
  <body>


  <a href="upload.jsp">单文件上传</a><br><br><br>
  <a href="uploadMore.jsp">多文件上传</a><br><br><br>
  <a href="download.action?fileName=4.jpg">点击下载4.jpg</a><br><br>
  <a href="download.action?fileName=投资的常识.jpg">点击下载投资的常识.jpg</a><br><br><br>

  <a href="login.jsp">点击去登录</a><br><br>

  <%--显示错误信息--%>
  <s:actionerror/>
  <s:fielderror/>
  </body>
</html>
