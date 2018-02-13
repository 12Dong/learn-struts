<%--
  Created by IntelliJ IDEA.
  User: FX50J
  Date: 2018/2/1
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>ÁôÑÔ°åĞÅÏ¢</title>
</head>
<body>

    <s:set name="user" value="#session['user']"/>
    <s:if test='user==null'>
        user is null
    </s:if>
    <s:else>
        user not null
    </s:else>
    <s :property value="#user.username"/>, ÄãºÃ!»¶Ó­µÇÂ¼ÁôÑÔ°å.
</body>
</html>
