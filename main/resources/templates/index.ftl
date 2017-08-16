<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>项目组列表</title>
</head>
<body>
        <h1>项目组列表</h1>

        <table>
            <tr>
                <td>项目组id</td>
                <td>项目组名称</td>
            </tr>
        <#list groups as g>
           <tr>
                <td>${g.gid}</td>
                <td>${g.gname}</td>
           </tr>
        </#list>

    </table>


</body>
</html>