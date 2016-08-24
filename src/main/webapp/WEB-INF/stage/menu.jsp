<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/23
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="menu">

    <ul>
        <font color="#9acd32" size="5px">登录</font>
        <li><a href="${pageContext.request.contextPath}/stage/loginUI"><div class="video"><i class="videos"></i><i class="videos1"></i></div></a></li>
        <br>
        <font color="#9acd32" size="5px">主页</font>
        <li><a class="active" href="${pageContext.request.contextPath}/stage/adLibrary"><i class="home"></i></a></li>
        <br>
        <font color="#9acd32" size="5px">图书列表</font>
        <li><a href="${pageContext.request.contextPath}/stage/bookList"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
        <li><a href="404.html"><div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li>
        <li><a href="contact.html"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
    </ul>
</div>
