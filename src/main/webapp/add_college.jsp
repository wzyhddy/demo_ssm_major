<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学院专业发布系统</title>
  <%-- 引入jquery文件: --%>
  <script src="jquery-1.8.0.min.js"></script>
  <script type="text/javascript">
      //页面加载完成执行
       $(function(){
         //给文件对象绑定一个改变事件
         $("#cpic").change(function (event){
           //获取这个图片的路径:
           var imgSrc = URL.createObjectURL(event.target.files[0]);
           //创建图片的标签:
           var img = $("<img src='"+imgSrc+"' width='50px' height='50px'/>");
           //添加预览图片之前，把原有的图片删掉.
           $("#td>img").remove();
           //把图片添加添加的单元格中
           $("#td").append(img);
         });
       });
  </script>
</head>

<body>
<div style="width:500px; margin:0px auto">
<h3 style="text-align:center">添加学院信息</h3>
<form action="/addCollege" method="post" enctype="multipart/form-data">
<table width="500" border="1">
  <tr>
    <td align="left" valign="middle">学院名称</td>
    <td><label>
      <input type="text" name="cname" id="cname" />
    </label></td>
  </tr>
  <tr>
    <td align="left" valign="middle">学院地址</td>
    <td><input type="text" name="caddress" id="cname2" /></td>
  </tr>
  <tr>
    <td align="left" valign="middle">创办时间</td>
    <td><input type="text" name="createtime" id="cname3" />
      (YYYY年MM月DD日)</td>
  </tr>
  <tr>
    <td align="left" valign="middle">学院院徽</td>
    <td id="td"><label>
      <input type="file" name="cfile" id="cpic" />
    </label></td>
  </tr>
  <tr>
    <td height="45" colspan="2" align="center" valign="middle"><label>
      <input type="submit" name="btnAdd" id="btnAdd" value="添加学院信息" />
      <input type="reset" name="btnCacel" id="btnCacel" value="重置" />
    </label></td>
  </tr>
</table>
</form>
</div>
</body>
</html>
