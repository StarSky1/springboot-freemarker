<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="zh">
<head>
    <base id="base" href="${base}">
    <title>首页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${base}/static/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <script src="${base}/static/bootstrap-3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
Hello! ${name},glad to see you!
<script type="text/javascript">
    var base = document.getElementById("base").href;
    // 与后台交互
    _send = function(async, url, value, success, error) {
        $.ajax({
            async : async,
            url : base + '/' + url,
            contentType : "application/x-www-form-urlencoded; charset=utf-8",
            data : value,
            dataType : 'json',
            type : 'post',
            success : function(data) {
                success(data);
            },
            error : function(data) {
                error(data);
            }
        });
    };
</script>
</body>