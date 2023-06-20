<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>信息列表显示</title>
    <%-- 引入jquery文件: --%>
    <script src="jquery-1.8.0.min.js"></script>
    <script>
        function validateForm() {
            const creditFrom = parseInt(document.getElementsByName("credit_from")[0].value);
            const creditTo = parseInt(document.getElementsByName("credit_to")[0].value);
            if (creditFrom < 0) {
                alert("学分不能小于0，请重新输入!");
                return false;
            }
            if (creditTo <= creditFrom) {
                alert("右边必须大于左边，范围输入有误，请重新输入!");
                return false;
            }
            return true;
        }

        function firstPage(pageNow) {
            //判断当前页是否是第一页
            if (pageNow == 1) {
                alert("当前页已经是第一页!!!")
            } else {
                location.href = "/page?pageNow=" + 1;
            }
        }
        //下一页:
        function nextPage(pageNow, pageSum) {
            //判断当前页是否是最后一页
            if (pageNow == pageSum) {
                alert("当前页已经是最后一页了!!!");
            } else {
                location.href = "/page?pageNow=" + parseInt((pageNow) + 1);
            }
        }

        //上一页
        function upPage(pageNow) {
            if (pageNow <= 1) {
                alert("没有上一页了!!!");
            } else {
                location.href = "/page?pageNow=" + (pageNow - 1);
            }
        }

        //末页
        function lastPage(pageNow, pageSum) {
            if (pageNow == pageSum) {
                alert("当前页已经是最后一页了!!!");
            } else {
                location.href = "/page?pageNow=" + pageSum;
            }
        }

        function linkPage(pageNow, pageSum) {
            //获取文本框中的数据值:
            var num = document.getElementById("txt").value;
            //定义一个数字的正则表达式:
            var regex = /^[0-9]*$/;
            //判断num是否满足正则表达式
            if (num.match(regex)) {//满足正则表达式
                //判断当前页是否为输入的页数:
                if (pageNow !== num) {
                    //判断num是否大于总页数:
                    if (num > 0 && num <= pageSum) {
                        location.href = "/page?pageNow=" + num;
                    } else {
                        alert("此页面不存在!!!");
                    }
                } else {
                    alert("当前页面已经是此页面!");
                }
            } else {
                alert("输入的页数有误，无法跳转");
            }
        }

    </script>
</head>

<body>
<h2>Hello ${college.cname}!</h2>
<%--<img src="/upload/${college.cpic}"/>--%>
<form action="/search" onsubmit="return validateForm()">
    学院名称<input id="cname" name="cname"/>
    专业名称:<input id="mname" name="mname"/>
    学分:<input type="number" name="credit_from" max="1000" placeholder="默认为0"> - <input type="number" name="credit_to" max="1000" placeholder="默认为1000"/>
    <button type="submit">查询</button>
</form>
<form>
    <a href="add_major">添加专业</a>
    <table width="1600" border="1">
        <tr>
            <th>专业编号</th>
            <th>专业名称</th>
            <th>学制</th>
            <th>学分</th>
            <th>学院名称</th>
            <th>专业介绍</th>
            <th>删除</th>
            <th>详细</th>
            <th>修改</th>
        </tr>

        <c:forEach var="major" items="${majors}">
            <tr>
                <td>${major.mid}</td>
                <td>${major.mname}</td>
                <td>${major.lifeyear}</td>
                <td>${major.credit}</td>
                <td>${major.college.cname}</td>
                <td>${major.introduction}</td>
                <td><a href="/delete?id=${major.mid}">删除</a></td>
                <td><a href="/detail?id=${major.mid}">详细</a></td>
                <td><a href="/edit_major?id=${major.mid}">修改</a></td>
            </tr>
        </c:forEach>

        <tr>
            <td colspan="10">
                <input type="button" value="首页" onclick="firstPage(${page.pageNow})"/>
                <input type="button" value="下一页" onclick="nextPage(${page.pageNow},${page.pageSum})">
                ${page.pageNow} / ${page.pageSum}
                <input type="button" value="上一页" onclick="upPage(${page.pageNow})">
                <input type="button" value="末页" onclick="lastPage(${page.pageNow},${page.pageSum})">
                <input type="text" style="width: 30px" id="txt">
                <a href="javascript:linkPage(${page.pageNow},${page.pageSum})">跳转</a>
            </td>
        </tr>
    </table>

</form>
</body>
</html>
