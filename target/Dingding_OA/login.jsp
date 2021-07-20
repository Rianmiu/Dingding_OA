<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>钉钉办公管理系统——登录</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.3.min.js"></script>
</head>
<script>
    var msg = '${msg}';
    if(msg != ''){
        alert(msg);
    }
</script>
<body>
<div id="web">
<p style="height:180px;"></p>
<p align="center"><img src="img/logzi.png" /></p>
<p style="height:40px;"></p>
<div class="login">
   <div class="banner">
   <iframe id="frame_banner" src="sban/banner.html" height="218" width="100%"  allowtransparency="true" title="test"  scrolling="no" frameborder="0"></iframe>
   </div>
    <form action="employeeLogin" id="loginForm" method="post">
       <div class="logmain">
          <h1>&nbsp;</h1>
          <div class="logdv">
             <span class="logzi">账 号：</span>
            <input name="username" type="text" id="userName" class="ipt" />
          </div>
          <div class="logdv">
          <span class="logzi">密 码：</span>
            <input name="password" type="password" id="passWord" class="ipt" />
          </div>
          <div class="logdv">
            <p class="logzi">&nbsp;</p>
            <a href="#" class="more">忘记密码</a>
            <input name="" type="checkbox" value=""  class="cex"/>记住密码
          </div>
          <div class="logdv" style="height:40px;">
            <p class="logzi">&nbsp;</p>
              <input name="提交" type="button" id="btn" class="btnbg" value="点击登录"/>
          </div>
          <div>
            <a href="#" class="more">注册</a>
          </div>
       </div>
    </form>

    <script>
        $(function () {

            // 设置用户名失去焦点事件
            $('#userName').blur(function () {

                var zh = $(this).val();

                // 发送Ajax异步查询账号是否存在
                // $.get(url,function (),returnType);
                // $.post(url,data,function (),returnType);

                $.get('queryZH?username='+zh,function (data) {
                    if(data == "0"){
                        alert("该账号不存在!请重新输入!")
                    }
                },"text");



            });


            $('#btn').click(function () {
                var zh = $('#userName').val();
                var mm = $('#passWord').val();

                var zz = /^[A-Za-z0-9]{6,20}$/;


                if(zh.length<6 || zh.length>20){
                    alert("账号的长度必须是6~20之间")
                }else if(mm.length<6 || mm.length>20){
                    alert("密码的长度必须是6~20之间")
                }else if(!zz.test(zh) || !zz.test(mm)){
                    alert("账号和密码必须由字母或数字组成!")
                }else{
                    $('#loginForm').submit();
                }


            });
        })
    </script>


</div>
<p style="height:100px;"></p>
<!--<p align="center">技术支持:xxxxxxxxxx</p>-->
</div>
</body>
</html>
