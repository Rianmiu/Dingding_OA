<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">请假管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default btnAdd"><span class="am-icon-plus"></span>申请请假</button>
							<button type="button" style="margin-left: 20px;" class="am-btn am-btn-default btnFindNotes"><span class="am-icon-archive"></span> 请假记录 </button>
							<button type="button" style="margin-left: 20px;" class="am-btn am-btn-default btnFindNoCheck"><span class="am-icon-archive"></span> 待审批</button>
							<button type="button" style="margin-left: 20px;" class="am-btn am-btn-default btnFindCheck"><span class="am-icon-archive"></span> 已审批 </button>
						</div>
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
									<th class="table-title">申请人</th>
									<th class="table-title">请假标题</th>
									<th class="table-type">事由说明</th>
									<th class="table-dname">请假开始日期</th>
									<th class="table-role">请假结束日期</th>
									<th class="table-role">主管审批状态</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" name="chk"></td>
									<td>1</td>
									<td>周芷若</td>
									<td>旅游</td>
									<td>外面世界很大，想出去走走</td>
									<td class="am-hide-sm-only"><span class="am-badge  am-badge-danger ">2019-06-22</span></td>
									<td>2019-06-25</td>
									<td>同意</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" id="depart_24" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 同意</button>
												<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" onclick="deleteDepart(24,1)"><span class="am-icon-trash-o"></span> 打回</button>
												<button type="button" id="depart_24" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 不同意</button>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="chk"></td>
									<td>2</td>
									<td>周芷若</td>
									<td>旅游</td>
									<td>外面世界很大，想出去走走</td>
									<td class="am-hide-sm-only"><span class="am-badge  am-badge-danger ">2019-06-22</span></td>
									<td>2019-06-25</td>
									<td>同意</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" id="depart_24" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 同意</button>
												<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" onclick="deleteDepart(24,1)"><span class="am-icon-trash-o"></span> 打回</button>
												<button type="button" id="depart_24" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 不同意</button>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="chk"></td>
									<td>3</td>
									<td>周芷若</td>
									<td>旅游</td>
									<td>外面世界很大，想出去走走</td>
									<td class="am-hide-sm-only"><span class="am-badge  am-badge-danger ">2019-06-22</span></td>
									<td>2019-06-25</td>
									<td>同意</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" id="agree" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 同意</button>
												<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only"><span class="am-icon-trash-o"></span> 打回</button>
												<button type="button" id="unagree" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 不同意</button>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="chk"></td>
									<td>4</td>
									<td>周芷若</td>
									<td>旅游</td>
									<td>外面世界很大，想出去走走</td>
									<td class="am-hide-sm-only"><span class="am-badge  am-badge-danger ">2019-06-22</span></td>
									<td>2019-06-25</td>
									<td>同意</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" id="depart_24" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 同意</button>
												<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger amt-hide-sm-only" onclick="deleteDepart(24,1)"><span class="am-icon-trash-o"></span> 打回</button>
												<button type="button" id="depart_24" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 不同意</button>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="am-cf" style="margin-right: 30px;">
							共 4 条记录
							<div class="am-fr">
								<ul class="am-pagination">
									<li class="am-disabled">
										<a href="#">«</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">»</a>
									</li>
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
						title: "申请请假",
						iframeWidth: 600,
						iframeHeight: 560,
						url: "addLeave.html"
					});
				});
			});
		</script>
	</body>

</html>
