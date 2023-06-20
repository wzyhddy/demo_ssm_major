<%--
  Created by IntelliJ IDEA.
  User: 27837
  Date: 2023/4/15
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>专业详情显示页</title>
</head>
<body>
<div style="width:500px; margin:0px auto">
  <h3 style="text-align:center">专业简介</h3>
  <table width="500" border="1">
    <tr>
      <td>专业名称</td>
      <td>${major.mname}</td>
    </tr>
    <tr>
      <td>学分</td>
      <td>${major.credit}</td>
    </tr>
    <tr>
      <td>毕业年限</td>
      <td>${major.lifeyear}</td>
    </tr>
    <tr>
      <td>专业介绍</td>
      <td>${major.introduction}</td>
    </tr>
    <tr>
      <td>学院名称</td>
      <td>${major.college.cname}</td>
    </tr>
    <tr>
      <td colspan="2" align="center" valign="middle"><label>
        <a href="show_major">返回列表页</a>
      </label></td>
    </tr>
  </table>
</div>
</body>
</html>
