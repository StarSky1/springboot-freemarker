<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="zh">
<head>
    <base id="base" href="${base}">
    <title>index1</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h1>List的指令</h1>
<h2>1，list常用指令</h2>
<div class="demo-div">
    <ul>
        <#assign myList=[2,3,4,5,1,8,9,8,7] />
        <#list myList?sort?reverse as item>
            ${item_index} : ${item}<br/>
        </#list>

        ${myList?size}<br/>
        ${myList[3]}<br/>
    </ul>
</div>
</body>
</html>