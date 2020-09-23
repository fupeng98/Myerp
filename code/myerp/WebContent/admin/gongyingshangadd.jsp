<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		<style type="text/css">
        select {
            width: 100px;
           
            font-size:16px;
        }
    </style>
		
		
	</head>
	<body>
		<form action="../gongyingshangadd" method="post" >
			<p class="path">当前位置：夜鹰进销存系统/供应商管理/新增供应商</p>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				
				<tr><td class="lable">供应商</td><td><input type="text" name="gname"/></td></tr>
				<tr><td class="lable">电话</td><td><input type="text" name="gtel"/></td></tr>
				<tr><td class="lable">地址</td><td><input type="text" name="gaddress"/></td></tr>
				
				<tr><td class="lable">产品</td><td><input type="text" name="gproduct"/></td></tr>
				<tr><td class="lable">数量</td><td><input type="text" name="gnumber"/></td></tr>
				<tr><td class="lable">时间</td><td><input type="datetime-local" name="gtime"/></td></tr>
				
				
				
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
		</form>
	<script>	
			

    </script>

	</body>
</html>