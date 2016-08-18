<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/3
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!--Header-part-->
<div id="header">
    <h1><a href="">Aode Library</a></h1>
</div>
<!--close-Header-part-->

<!--top-Header-messaages-->
<div class="btn-group rightzero"> <a class="top_message tip-left" title="Manage Files"><i class="icon-file"></i></a> <a class="top_message tip-bottom" title="Manage Users"><i class="icon-user"></i></a> <a class="top_message tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a> <a class="top_message tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a> </div>
<!--close-top-Header-messaages-->

<!--top-Header-menu-->
<c:choose>
    <c:when test="${sessionScope.logged != null}">
        <div id="user-nav" class="navbar navbar-inverse"><ul class="nav">
            <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
        </ul>
        </div>
    </c:when>
    <c:otherwise>
        <div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav">
                <li class="" ><a title="" href="${pageContext.request.contextPath}/admin/loginUI"><i class="icon icon-user"></i> <span class="text">登录</span></a></li>
            </ul>
        </div>
    </c:otherwise>
</c:choose>

<div id="search">
    <input type="text" placeholder="Search here..."/>
    <button type="submit" class="tip-left" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-Header-menu-->
<!--left-menu-stats-sidebar-->
<div id="sidebar">
    <a href="#" class="visible-phone"><i class="icon icon-th-list"></i> Common Elements</a>
    <ul>
        <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>管理员列表</span></a></li>
        <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>图书馆简介</span></a> </li>
        <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Widgets</span></a> </li>
        <li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
        <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Forms</span> <span class="label">3</span></a>
            <ul>
                <li><a href="form-common.html">Basic Form</a></li>
                <li><a href="form-validation.html">Form with Validation</a></li>
                <li><a href="form-wizard.html">Form with Wizard</a></li>
            </ul>
        </li>
        <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
        <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>

        <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>图书中心</span> <span class="label">3</span></a>
            <ul>
                <li><a href="${pageContext.request.contextPath}/bookType/list">图书类型管理</a></li>
                <li><a href="${pageContext.request.contextPath}/book/list">图书信息管理</a></li>
            </ul>
        </li>

    </ul>

</div>
<!--close-left-menu-stats-sidebar-->