<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="zh">
<head>
    <base id="base" href="${base}">
    <title>index2</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h1>自定义指令</h1>
<h2>1，用户123456是否拥有admin角色，并且返回admin的权限</h2>
<div class="demo-div">
    <ul>
        <@role user='123456' role='admin'; result1 , result2>
            <#if result1>
                我的角色是<font color="red">admin</font><br/>
            </#if>
            我拥有的权限是：<font color="red">
            <#list result2 as item>
                ${item},
            </#list>
        </font><br/>
        </@role>
    </ul>
</div>
</body>
</html>