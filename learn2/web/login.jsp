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
    <title>�������԰�</title>
</head>
<body>
    <s:form action="main" method="post" theme="simple">
        <table>
            <caption>�û���½</caption>
            <tr>
                <td>�û���:<s:textfield name="user.username" size="20"/></td>
            </tr>
            <tr>
                <td>��&nbsp;&nbsp;��<s:password name="user.password" size="21"/></td>
            </tr>
            <tr>
                <td>
                    <s:submit value="��¼"/>
                    <s:reset value="����"/>
                </td>
            </tr>
        </table>
    </s:form>
    ���û��ע�ᵥ��<a href="">����</a>ע��!
</body>
</html>
