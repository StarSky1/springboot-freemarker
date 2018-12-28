<#assign base=request.contextPath />
<!DOCTYPE html>
<html lang="zh">
<head>
    <base id="base" href="${base}">
    <title>index3</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        div {
            font-size: 20px;
        }
        .demo-div ul li {
            font-weight: bold;
            font-size: 20px;
            margin: 15px 0px 5px 0px;
        }
    </style>
</head>
<body style="padding-left: 50px;">
<h1>macro nested return 实战demo</h1>
<h2>1，macro ：宏指令</h2>
<div class="demo-div">
    <ul>
        <li>栗子1：无参数的macro</li>
        <div>
            <#macro test>
                <font color="red">我是无参数的macro</font>
            </#macro>
            <@test/>
        </div>

        <li>栗子2：有参数的macro</li>
        <div>
            <#macro test1 param1 param2>
                <font color="red">我是有参数的macro，param1 = ${param1}，param2 = ${param2}</font>
            </#macro>
            <@test1 param1="java" param2="python" />
        </div>

        <li>栗子3：有默认值参数的macro</li>
        <div>
            <#macro test2 param1 param2="python">
                <font color="red">我是有参数的macro，param1 = ${param1},param2 = ${param2}</font>
            </#macro>
            <@test2 param1="java" />
        </div>

        <li>栗子4：有多个参数的macro</li>
        <div>
            <#macro test3 param1 param2="python" paramExt...>
                <font color="red">我是有参数的macro，param1 = ${param1}, param2 = ${param2}</font>
                <br/>
                <font color="red">${paramExt['param3']}</font><br/>
                <font color="red">${paramExt['param4']}</font>
            </#macro>
            <@test3 param1="java" param2="hello python" param3="javascript" param4="nodejs"/>
        </div>
    </ul>
</div>

<h2>2,nested</h2>
<div class="demo-div">
    <ul>
        <#macro test param1 = "java">
            ${param1}<br/>
            <#nested param1,"我的nested 参数"><br/>
        </#macro>

        <li>调用</li>
        <div>
            <@test param1="java"; loopVar1, loopVar2>
                <font color="red">hello ${loopVar1} , ${loopVar2}</font>
            </@test>

            <@test param1="python";loopVar1>
                hello ${loopVar1}<br/>
            </@test>
        </div>
    </ul>
</div>

<h2>3,函数</h2>
<div class="demo-div">
    <ul>
        <#function doAdd param1 param2>
            <#return param1+param2>
        </#function>
        <li>调用</li>
        <div>你好，我是调用 ${doAdd(100,100)}</div>
    </ul>
</div>

</body>
</html>