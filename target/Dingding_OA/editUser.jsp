<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>

			<link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<style>
			.admin-main{
				padding-top: 0px;
			}
		</style>
	</head>
	<body>

		<div class="am-cf admin-main">
			<!-- content start -->
			<div class="admin-content">
				<div class="admin-content-body">
					<div class="am-g">
						<form class="am-form am-form-horizontal" target="_parent" action="editUser" method="post" style="padding-top: 30px;">
							<input value="${param.get('eid')}" name="eid" type="hidden">
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									员工姓名
								</label>
								<div class="am-u-sm-9">
									<input id="roleName" required="" placeholder="请输入员工姓名" value="" name="realname" type="text">
									<small id="helpRole">输入员工姓名。</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="username" class="am-u-sm-3 am-form-label">
									用户名
								</label>
								<div class="am-u-sm-9">
									<input type="text" name="ename" placeholder="请输入用户用户名"  />
									<small>输入用户名。</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									密码
								</label>
								<div class="am-u-sm-9">
									<input type="password" name="epass" placeholder="请输入用户密码"  />
									<small>输入密码。</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									性别
								</label>
								<div class="am-u-sm-9">
									<input type="radio" name="esex" value="0" checked="checked" /> 男
									<input type="radio" name="esex" value="1" style="margin-left: 30px;"/> 女<br>
									<small>选择性别。</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									所在部门
								</label>
								<div class="am-u-sm-9">
									<select placeholder="请选择所在部门" name="d.did">
										<option value="4">开发部</option>
										<option value="8">销售部</option>
										<option value="10">财务部</option>
										<option value="3">人事部</option>
									</select>
									<!--<textarea rows="" cols="50" placeholder="请输入用户密码" name="roleDesc"></textarea>-->
									<small>选择所在部门。</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									用户角色
								</label>
								<div class="am-u-sm-9">
									<select placeholder="请选择用户角色" name="position">
										<option value="2">普通员工</option>
										<option value="1">部门主管</option>
									</select>
									<small>请选择用户角色。</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input id="addRole" class="am-btn am-btn-success" value="编辑员工" type="submit">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
