<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="zh">
<head>
    <base id="base" href="${base}">
    <title>首页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
Hello! ${name},glad to see you!<br/>
<h1>自定义函数</h1>
<h2>1，自定义函数（整数排序 sort_int）</h2>
<div class="demo-div">
    <ul>
        <#assign myList=[2,3,4,5,1,8,9,8,7]/>
        <li>未排序</li>
        <#list myList as item>
            ${item},
        </#list>

        <li>已排序</li>
        <#list sort_int(myList) as item>
            ${item},
        </#list>
    </ul>
</div>
${base}
</body>
</html>