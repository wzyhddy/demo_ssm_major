<%--
  Created by IntelliJ IDEA.
  User: 27837
  Date: 2023/4/15
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>专业信息列表展示页</title>
  <script src="jquery-1.8.0.min.js"></script>
  <script>

    // function firstPage(pageNow) {
    //   //判断当前页是否是第一页
    //   if (pageNow == 1) {
    //     alert("当前页已经是第一页!!!")
    //   }else{
    //     location.href="/search?pageNow=" + pageNow;
    //   }
    // }
    //
    // //下一页:
    // function nextPage(pageNow, pageSum) {
    //   //判断当前页是否是最后一页
    //   if (pageNow == pageSum) {
    //     alert("当前页已经是最后一页了!!!");
    //   }else {
    //     location.href="/search?pageNow=" + parseInt((pageNow)+1);
    //   }
    // }
    //
    // //上一页
    // function upPage(pageNow) {
    //   if (pageNow <= 1) {
    //     alert("没有上一页了!!!");
    //   }else {
    //     location.href="/search?pageNow="+(pageNow - 1);
    //   }
    // }
    //
    // //末页
    // function lastPage(pageNow, pageSum) {
    //   if (pageNow == pageSum) {
    //     alert("当前页已经是最后一页了!!!");
    //   }else {
    //     location.href="/search?pageNow=" + pageSum;
    //   }
    // }
    //
    // function linkPage(pageNow, pageSum) {
    //   //获取文本框中的数据值:
    //   var num = document.getElementById("txt").value;
    //   //定义一个数字的正则表达式:
    //   var regex=/^[0-9]*$/;
    //   //判断num是否满足正则表达式
    //   if(num.match(regex)){//满足正则表达式
    //     //判断当前页是否为输入的页数:
    //     if(pageNow !== num){
    //       //判断num是否大于总页数:
    //       if(num > 0 &&num <=pageSum){
    //         location.href="/search_detail?pageNow="+num;
    //       }else{
    //         alert("此页面不存在!!!");
    //       }
    //     }else{
    //       alert("当前页面已经是此页面!");
    //     }
    //   }else{
    //     alert("输入的页数有误，无法跳转");
    //   }
    // }
  </script>
</head>
<body>
<form>
  <table width="1500" border="1">
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
<%--    <tr>--%>
<%--      <td colspan="10">--%>
<%--        <input type="button" value="首页" onclick="firstPage(${page.pageNow})"/>--%>
<%--        <input type="button" value="下一页" onclick="nextPage(${page.pageNow},${page.pageSum})">--%>
<%--        ${page.pageNow} / ${page.pageSum}--%>
<%--        <input type="button" value="上一页" onclick="upPage(${page.pageNow})">--%>
<%--        <input type="button" value="末页" onclick="lastPage(${page.pageNow},${page.pageSum})">--%>
<%--        <input type="text" style="width: 30px" id="txt">--%>
<%--        <a href="javascript:linkPage(${page.pageNow},${page.pageSum})">跳转</a>--%>
<%--      </td>--%>
<%--    </tr>--%>
  </table>
</form>
</body>
</html>
