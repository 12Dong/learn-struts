<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: FX50J
  Date: 2018/1/30
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>简易留言板</title>
</head>
<body>
    <s:form action="main" method="post" theme="simple">
        <table>
            <caption>用户登陆</caption>
            <tr>
                <td>用户名:<s:textfield name="user.username" size="20"/></td>
            </tr>
            <tr>
                <td>密&nbsp;&nbsp;码<s:password name="user.password" size="21"/></td>
            </tr>
            <tr>
                <td>
                    <s:submit value="登录"/>
                    <s:reset value="重置"/>
                </td>
            </tr>
        </table>
    </s:form>
    如果没有注册单机<a href="">这里</a>注册!
</body>
</html>
