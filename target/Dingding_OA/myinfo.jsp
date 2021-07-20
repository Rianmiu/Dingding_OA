<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel="stylesheet" href="css/admin.css">
	<style>
		td:first-child{
			text-align: center;
		}
	</style>
</head>

<body>
<div class="admin-content-body"style="" >
	<div class="am-cf am-padding am-padding-bottom-0" >
		<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人信息</strong><small></small></div>
	</div>
	<hr>

	<div class="am-g" style="margin-top: 30px;">
		<div class="am-u-sm-4">
			<form class="am-form">
				<table class="am-table am-table-striped am-table-hover table-main">
					<tr>
						<th>员工编号</th>
						<td>${sessionScope.emp.eid}</td>
					</tr>
					<tr>
						<th>员工账号</th>
						<td>${sessionScope.emp.ename}</td>
					</tr>
					<tr>
						<th>真实姓名</th>
						<td>${sessionScope.emp.realname}</td>
					</tr>
					<tr>
						<th>员工性别</th>
						<td>${sessionScope.emp.esex==0?"男":"女"}</td>
					</tr>
					<tr>
						<th>入职时间</th>
						<td>${sessionScope.emp.entrydate}</td>
					</tr>
					<tr>
						<th>员工工资</th>
						<td>￥${sessionScope.emp.sal}元</td>
					</tr>
					<tr>
						<th>所属部门</th>
						<td>${sessionScope.emp.d.dname}</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
</div>
<!-- content end -->
</div>
</div>


</body>

</html>
