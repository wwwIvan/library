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
<div class="top-header">
    <div class="logo">
        <a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" /></a>
        <p>Aode Library</p>
        <a class="video" href="${pageContext.request.contextPath}/stage/loginUI"><i class="video1"></i>登录</a>
    </div>
    <div class="search">
        <form>
            <input type="text" value="Search.." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search..';}"/>
            <input type="submit" value="">
        </form>
    </div>
    <div class="clearfix"></div>
</div>