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
        <c:choose>
            <c:when test="${sessionScope.userLogged eq null}">
                <font color="#9acd32" size="5px">登录</font>
                <li><a href="${pageContext.request.contextPath}/stage/loginUI">
                    <div class="video"><i class="videos"></i><i class="videos1"></i></div>
                </a>
                </li>
            </c:when>
            <c:otherwise>
                <font color="#9acd32" size="5px">注销</font>
                <li><a href="${pageContext.request.contextPath}/stage/logout">
                    <div class="video"><i class="videos"></i><i class="videos1"></i></div>
                </a>
                </li>
            </c:otherwise>
        </c:choose>
        <br>
        <font color="#9acd32" size="5px">主页</font>
        <li><a
                <c:if test="${requestScope.user == null && requestScope.bookList != null && requestScope.recommendation != null}">
                    class="active"
                </c:if>
                href="${pageContext.request.contextPath}/stage/adLibrary"><i class="home"></i></a></li>
        <br>
        <font color="#9acd32" size="5px">图书列表</font>
        <li><a
                <c:if test="${requestScope.user eq null && requestScope.bookList != null && requestScope.recommendation == null}">
                    class="active"
                </c:if>
                href="${pageContext.request.contextPath}/stage/bookList"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
        <br>
        <font color="#9acd32" size="5px">个人信息</font>
        <li><a
                <c:if test="${requestScope.user != null && requestScope.bookList == null}">
                    class="active"
                </c:if>
                href="${pageContext.request.contextPath}/stage/personal?userId=${sessionScope.userLogged.u_id}">
            <div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li>
    </ul>
</div>
