<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel="stylesheet" href="css/admin.css">
</head>
<body>

<script type="text/javascript">
	var msg = '${message}';
	if(msg != ''){
		alert(msg);
		window.location.href="departs";
	}
</script>
<div class="admin-content-body" style="">
	<div class="am-cf am-padding am-padding-bottom-0">
		<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">部门管理</strong><small></small></div>
	</div>
	<hr>
	<div class="am-g">
		<div class="am-u-sm-12 am-u-md-6">
			<div class="am-btn-toolbar">
				<div class="am-btn-group am-btn-group-xs" id="flag-btn">
					<button type="button" class="am-btn am-btn-default btnAdd">
						<span class="am-icon-plus"></span> 新增
					</button>
					<button id="youxiao" onclick="javascript:window.location.href='youxiao'" type="button" style="margin-left: 20px;" class="am-btn am-btn-default btnFindEnable">
						<span class="am-icon-archive"></span> 有效部门
					</button>
					<button id="wuxiao" onclick="javascript:window.location.href='wuxiao'" type="button" style="margin-left: 20px;" class="am-btn am-btn-default btnFindDisable">
						<span class="am-icon-archive"></span> 已撤销部门
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="am-g" style="margin-top: -30px;">
		<div class="am-u-sm-12">
			<form class="am-form">
				<table class="am-table am-table-striped am-table-hover table-main">
					<thead>
					<tr>
						<th class="table-check">
							<input id="chkAll" type="checkbox">
						</th>
						<th class="table-id">
							ID
						</th>
						<th class="table-title">
							部门名称
						</th>
						<th class="table-remark">
							备注
						</th>
						<th class="table-set">
							操作
						</th>
					</tr>
					</thead>
					<tbody id="tUser">
					<c:forEach items="${dlist}" var="depts">
					<tr>
						<td><input name="chks" value="27" type="checkbox"></td>
						<td>${depts.did}</td>
						<td>${depts.dname}</td>
						<td>${depts.duty}</td>
						<td>
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<button type="button" id="depart_27" name="${depts.did}" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit">
										<span class="am-icon-pencil-square-o"></span> 编辑
									</button>
									<button type="button" id="delBtn" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" onclick="deleteDepart('${depts.dname}','${depts.did}')">
										<span class="am-icon-trash-o"></span> 删除
									</button>
								</div>
							</div>
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>

<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="myplugs/js/plugs.js"></script>
<script>
	$(function() {
		$("#chkAll").chkAll({});
		$(".btnedit").click(function() {
			var did = $(this).attr("name");
			// alert(did)
			$.jq_Panel({
				title: "编辑部门",
				iframeWidth: 500,
				iframeHeight: 300,
				url: "editDepart.jsp?did="+did
			});
			//window.location.href = "editDepart?did=" + did;
		});
		$(".btnAdd").click(function() {

			$.jq_Panel({
				title: "添加部门",
				iframeWidth: 500,
				iframeHeight: 300,
				url: "addDepart.jsp"
			});
		});
	});

	function updateDepart(did) {
		window.location.href = "editDepart?did=" + did;
	}

	function deleteDepart(dname,did) {
		var b = confirm('确定删除【'+dname+'】？');
		if(b) {
			window.location.href='deleteDepart?did='+did;
		}
	}
</script>
</body>
</html>
