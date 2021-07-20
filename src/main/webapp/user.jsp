<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<script type="text/javascript">
		var msg = '${msg}';
		if(msg!=''){
			alert(msg);
			window.location.href='users';
		}
	</script>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong><small></small></div>
			</div>
			<hr>
			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default btnAdd"><span class="am-icon-plus"></span> 新增</button>
							<button onclick="javascript:window.location.href='zaizhi'" type="button" style="margin-left: 20px;" class="am-btn am-btn-default btnIn">
								<span class="am-icon-child"></span> 在职员工
							</button>
							<button onclick="javascript:window.location.href='lizhi'" type="button" style="margin-left: 20px;" class="am-btn am-btn-default btnOut">
								<span class="am-icon-child"></span> 离职员工
							</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">
				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm" style="margin-right: 30px;">
						<input type="text" id="realname" class="am-form-field" placeholder="请输入用户姓名">
						<span class="am-input-group-btn">
							<button class="am-btn am-btn-default" onclick="javascript:window.location.href='queryByName?realname='+$('#realname').val()" type="button">搜索</button>
						</span>
					</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox" id="chkAll"></th>
									<th class="table-id" style="width:100px;">ID</th>
									<th class="table-title">姓名</th>
									<th class="table-type">用户名</th>
									<th class="table-author am-hide-sm-only">性别</th>
									<th class="table-dname">所在部门</th>
									<th class="table-role">用户角色</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${emps.list}" var="emp">
									<tr>
										<td><input type="checkbox" name="chk"></td>
										<td>${emp.eid}</td>
										<td>
											<a href="#">${emp.realname}</a>
										</td>
										<td>${emp.ename}</td>
										<td class="am-hide-sm-only"><span class="am-badge  am-badge-danger ">
											<c:if test="${emp.esex==0}">
												男
											</c:if>
											<c:if test="${emp.esex==1}">
												女
											</c:if>
										</span></td>
										<td>${emp.d.dname}</td>
										<td>
											<c:if test="${emp.position==0}">boss</c:if>
											<c:if test="${emp.position==1}">部门主管</c:if>
											<c:if test="${emp.position==2}">普通员工</c:if>
										</td>
										<td>
											<div class="am-btn-toolbar">
												<div class="am-btn-group am-btn-group-xs">
													<button type="button" name="${emp.eid}" id="depart_24" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit">
														<span class="am-icon-pencil-square-o"></span>
														编辑
													</button>
													<button onclick="javascript:if(confirm('是否删除员工[${emp.realname}]?'))window.location.href='delUser?eid='+${emp.eid}" name="${emp.eid}" type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only">
														<span class="am-icon-trash-o"></span>
														删除
													</button></div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="am-cf" style="margin-right: 30px;">
							共 ${emps.total} 条记录
							<div class="am-fr">
								<ul class="am-pagination">
									<c:if test="${emps.hasPreviousPage==false}">
										<li class="am-disabled">
											<a href="#">«</a>
										</li>
									</c:if>
									<c:if test="${emps.hasPreviousPage==true}">
										<li>
											<a href="#" pageNum="${emps.pageNum}" id="to_pre_page">«</a>
										</li>
									</c:if>
									<c:forEach items="${emps.navigatepageNums}" var="page">
										<c:if test="${emps.pageNum == page}">
											<li class="am-active">
												<a href="#">${page}</a>
											</li>
										</c:if>
										<c:if test="${emps.pageNum != page}">
											<li>
												<a href="#" id="to_pages" pageNum="${page}" onclick="javascript:window.location.href='users?pageNum='+${page}">${page}</a>
											</li>
										</c:if>
									</c:forEach>
									<c:if test="${emps.hasNextPage==false}">
										<li class="am-disabled">
											<a href="#">»</a>
										</li>
									</c:if>
									<c:if test="${emps.hasNextPage==true}">
										<li>
											<a href="#" pageNum="${emps.pageNum}" id="to_next_page">»</a>
										</li>
									</c:if>
								</ul>
							</div>
						</div>
						<hr>
					</form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
		<script type="text/javascript" src="myplugs/js/plugs.js" ></script>
		<script>
			$(function() {
				$(".btnAdd").click(function() {
					$.jq_Panel({
						title: "添加员工",
						iframeWidth: 600,
						iframeHeight: 560,
						url: "addUser.jsp"
					});
				});
				$(".btnedit").click(function() {
					$.jq_Panel({
						title: "编辑员工",
						iframeWidth: 600,
						iframeHeight: 560,
						url: "editUser.jsp?eid="+$(this).attr('name')
					});
				});
			});

			$('#to_next_page').click(function () {
				var pageNum = parseInt($(this).attr('pageNum'))+1;
				window.location.href='users?pageNum='+pageNum;
			});

			$('#to_pre_page').click(function () {
				var pageNum = parseInt($(this).attr('pageNum'))-1;
				window.location.href='users?pageNum='+pageNum;
			});

		</script>
	</body>

</html>
