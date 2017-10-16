<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 上午9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功</title>
</head>
<body>
<h1>恭喜, 上传成功🎉</h1>

<h2>用户名: ${username}</h2>
<h2>密码: ${password}</h2>

<h1>去Action属性, 直接按属性名获取</h1>
<s:property value="username"/><br>
<s:property value="password"/>

<hr>

<h1>取Request中的属性集合的某个key值</h1>
<s:property value="#attr.request_username"/>

<h1>取application中map的某个key值, 需要加application的前缀</h1>
<s:property value="#application.application_username"/>

<h1>取session中map的某个key值, 需要加session的前缀</h1>
<s:property value="#session.session_username"/>

<h1>取parameter中map的某个key值, 需要加parameter的前缀</h1>
<s:property value="#parameters.username"/>

<hr>
<h1>通过set 标签更改username变量的值, 在调用property获取一下它的值, 加 # 取</h1>
<s:set value="'张三'" var="username"/>
<s:property value="#username"/>

<h1>通过set 标签在session域中添加一个username属性</h1>
<s:set value="'王二'" var="username" scope="session"/>
<s:property value="#session.username"/>

<h1>通过set 标签在application域中添加一个username的属性, 取值用username;
    如果Value对应的值没有用单引号包裹起来, 则默认是一个变量,
    去action属性集合中查找有没有定义该变量
</h1>
<s:set value="'李四'" var="username" scope="application"/>
<s:property value="#application.username"/>


<hr>
<hr>
<h1>取request, session, application 中属性同名对象</h1> <br>
<s:property value="#attr.name"/><br>
<s:property value="#session.name"/><br>
<s:property value="#application.name"/><br>

<hr>
<h1># 构建 Map 对象</h1>

<s:set name="foobar" value="#{'foo1':'吃饭','foo2':'睡觉'}"/>
<s:property value="#foobar['foo1']"/>


<h1>#构建 List 集合</h1>
<s:property value="{'吃饭','睡觉','打豆豆'}"/>

<hr>
<h1>%{}将大括号中的内容认为是ognl表达式</h1>
<s:property value="%{姓名}"/>


</body>
</html>
