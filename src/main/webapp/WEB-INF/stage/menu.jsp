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
        <li><a class="active" href="${pageContext.request.contextPath}/book/list"><i class="home"></i></a></li>
        <li><a href="videos.html"><div class="video"><i class="videos"></i><i class="videos1"></i></div></a></li>
        <li><a href="${pageContext.request.contextPath}/book/list"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
        <li><a href="404.html"><div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li>
        <li><a href="contact.html"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
    </ul>
</div>
