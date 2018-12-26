<#assign base=request.contextPath />
<!DOCTYPE html>
<html>

<head>
    <base id="base" href="${base}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SpringBoot - 登录</title>
    <meta name="keywords" content="springboot">
    <meta name="description" content="SpringBoot">

    <link rel="shortcut icon" href="${base}/static/images/favicon.ico">
    <link href="${base}/static/css/bootstrap-3.3.7.css" rel="stylesheet" type="text/css">
    <link href="${base}/static/css/font-awesome.css" rel="stylesheet">

    <!-- Sweet Alert -->
    <#--<link href="/static/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">-->

    <#--<link href="/static/css/animate.css" rel="stylesheet">-->
    <#--<link href="/static/css/style.css?v=4.1.0" rel="stylesheet">-->
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
    <script>if (window.top !== window.self) {
        window.top.location = window.location;
    }</script>
</head>

<body class="gray-bg" style="margin-left: 70px;margin-right: 70px;margin-top: 50px;">

    <form class="form-horizontal container" role="form">
        <h2 class="col-sm-12" style="text-align: center">
            欢迎使用Springboot
        </h2>

        <div class="form-group">
            <label for="username" class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="username"
                       placeholder="请输入用户名">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="password"
                       placeholder="请输入密码">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12" style="text-align: center">
                <button type="submit" class="btn btn-default"  onclick="login()">登录</button>
            </div>
        </div>

        <p class="text-muted text-center"><a href="login.ftl#">
            <small>忘记密码了？</small>
        </a> | <a href="register.html">注册一个新账号</a>
        </p>
</form>

<!-- 全局js -->
<script src="${base}/static/js/jquery-3.3.1.js"></script>
<script src="${base}/static/js/bootstrap-3.3.7.js"></script>

<!-- Sweet alert -->
<script src="${base}/static/js/sweetalert.min.js"></script>

<script>

    // 登录
    function login() {
        var userAccount = $("#userAccount").val();
        var userPassword = $("#userPassword").val();
        if (userAccount == "") {
            return false;
        }
        if (userPassword == "") {
            return false;
        }
        // 登录
        $.ajax({
            url: "/v1/login",
            type: "GET",
            data: {
                userAccount: userAccount,
                userPassword: userPassword
            },
            success: function (data) {
                if ("SUCCESS" == data.type) {
                    // 成功
                    swal({
                        title: "登录成功",
                        timer: 1000,
                        type: "success",
                        showConfirmButton: false
                    });
                } else if ("FAIL" == data.type) {
                    // 失败
                    swal({
                        title: data.msg,
                        timer: 1000,
                        type: "error",
                        showConfirmButton: false
                    });
                }
            }
        })
    }

</script>

</body>

</html>
