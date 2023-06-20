<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加专业</title>
    <%-- 引入jquery文件: --%>
    <script src="jquery-1.8.0.min.js">
    </script>
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
    <h3 style="text-align:center">添加专业</h3>
    <form action="/add_major" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
        <table width="500" border="1">
            <tr>
                <td>专业名称</td>
                <td><input type="text" name="mname" id="mname"/></td>
            </tr>
            <tr>
                <td>学分</td>
                <td><input type="number" name="credit" id="credit"/></td>
            </tr>
            <tr>
                <td>毕业年限</td>
                <td><input type="number" name="lifeyear" id="lifeyear"/></td>
            </tr>
            <tr>
                <td>专业介绍</td>
                <td><textarea name="introduction" id="introduction" cols="55" rows="8"></textarea></td>
            </tr>
            <tr>
               <td>学院名称</td>
                <td>
                    <select id="college" name="college.cid">
                        <option value="">--请选择学院--</option>
                        <c:forEach items="${colleges}" var="college">
                            <option value="${college.cid}">${college.cname}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" valign="middle"><label>
                    <input type="submit" name="btnMajor" id="btnMajor" value="添加专业"/>
                    <input type="reset" name="btnCancel" id="btnCancel" value="重置"/>
                </label></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>