<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/comm.css"/>
</head>
<body>
<p class="path">当前位置:/夜鹰进销存系统/供应商管理/供应商列表 </p>          
<table border="0" cellspacing="0" cellpadding="0" class="tb tblist">
       <tr>
       	  <td style="width:150px;">姓名</td><td style="width:150px;">电话</td>
       	  <td>地址</td><td style="width:180px;">产品</td>
       	  <td style="width:100px;">数量</td>
       	  <td style="width:180px;">时间</td>
       	  <td style="width:80px;">操作</td> 
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		
       		<td><%=m.get("gname")%></td>
       		<td><%=m.get("gtel")%></td>
       		<td><%=m.get("gaddress")%></td>
       		<td><%=m.get("gproduct")%></td>
       		<td><%=m.get("gnumber")%></td>
       		<td><%=m.get("gtime")%></td>
       		<td><a href="gedit?id=<%=m.get("id")%>">修改</a></td>
       		
       </tr>
    	<% } %>
    </table>
    
    <div class="pager">
       		<%=pagestr%>
    </div>
  
   
</body>
</html>