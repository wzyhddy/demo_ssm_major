<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改页面</title>
  <script src="jquery-1.8.0.min.js"></script>
  <script type="text/javascript">
    function validateForm() {
      var mname = document.getElementById("mname").value;
      var credit = document.getElementById("credit").value;
      var lifeyear = document.getElementById("lifeyear").value;
      var collegeName = document.getElementById("college").value;
      if (mname == null || mname === "") {
        alert("专业名称不能为空");
        return false;
      }
      if (credit == null || credit === "" || credit < 0) {
        alert("学分必须为非负正整数");
        return false;
      }
      if (lifeyear == null || lifeyear === "" || lifeyear < 1) {
        alert("毕业年限必须大于等于1的正整数")
        return false
      }
      if (collegeName == null || collegeName === "" || collegeName === "--请选择学院--") {
        alert("请选择学院");
        return false;
      }
      return true;
    }
  </script>
</head>
<body>
<div style="width:500px; margin:0px auto">
  <h3 style="text-align:center">专业简介</h3>
<form action="/update_major" method="post" onsubmit="return validateForm()">
  <input type="hidden" name="id" value="${major.mid}">
  <table width="500" border="1">
    <tr>
      <td>专业名称</td>
      <td><input type="text" id="mname" name="mname" value="${major.mname}">
      </td>
    </tr>
    <tr>
      <td>学分</td>
      <td><input type="number" id="credit" name="credit" value="${major.credit}"></td>
    </tr>
    <tr>
      <td>毕业年限</td>
      <td><input type="number" id="lifeyear" name="lifeyear" value="${major.lifeyear}"></td>
    </tr>
    <tr>
      <td>专业介绍</td>
      <td><textarea id="introduction" name="introduction" style="width: 100%"> ${major.introduction}</textarea></td>
    </tr>
    <tr>
      <td>学院名称</td>
      <td><select id="college" name="college.cid">
        <option value="${major.college.cid}" selected>${major.college.cname}</option>
        <c:forEach items="${colleges}" var="college">
          <option value="${college.cid}">${college.cname}</option>
        </c:forEach>
      </select></td>
    </tr>
    <tr>
      <td colspan="2" align="center" valign="middle">
        <button type="submit">保存</button>
<%--        <button type="reset" name="btnCancel" id="btnCancel">重置</button>--%>
        <label>
        <a href="show_major">返回列表页</a>
      </label></td>
    </tr>
  </table>
</form>
</div>
</body>
</html>
