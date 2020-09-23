<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
   Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>供销商</title>
<link rel="stylesheet" type="text/css" href="css/comm.css"/>
</head>
<body>
<p class="path">当前位置：夜鹰进销存管理系统/供销商管理/修改</p>
<form action="gedit" method="post">
<input type="hidden" name="id" value="<%=objbyid.get("id")%>"/>
<table class="tb">
	<tr><td class="lable">供销商</td><td><input type="text" name="gname" value="<%=objbyid.get("gname")%>"/></td></tr>
	<tr><td class="lable">电话</td><td><input type="text" name="gtel" value="<%=objbyid.get("gtel")%>"/></td></tr>
	<tr><td class="lable">地址</td><td><input type="text" name="gaddress" value="<%=objbyid.get("gaddress")%>"/></td></tr>
	<tr><td class="lable">产品</td><td><input type="text" name="gproduct" value="<%=objbyid.get("gproduct")%>"/></td></tr>
	<tr><td class="lable">数量</td><td><input type="text" name="gnumber" value="<%=objbyid.get("gnumber")%>"/></td></tr>
	<tr><td class="lable">时间</td><td><input type="datetime-local" name="gtime" value="<%=objbyid.get("gtime")%>"/></td></tr>
	<tr><td class="lable">&nbsp;</td><td><input type="submit" id="btnsave" value="保存" /></td></tr>
</table>
</form>

</body>
</html>