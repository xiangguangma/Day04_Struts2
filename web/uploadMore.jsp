<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 下午5:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>多文件上传</title>
</head>
<body>
<form action="doubleUpload.action" method="post" enctype="multipart/form-data">
    选择文件: <input type="file" name="photo" multiple="multiple"><br>
    <input type="submit" value="上传">

</form>

<%--显示错误信息--%>
<s:actionerror/>
</body>
</html>
