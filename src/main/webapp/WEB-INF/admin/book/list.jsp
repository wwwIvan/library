<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/2
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Aode Library</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/uniform.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-media.css" class="skin-color" />
</head>
<body>
<%@include file="../prelude.jsp"%>
<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">图书管理</a> </div>
        <h1>图书管理</h1>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
                        <span class="icon"><i class="icon-th"></i></span>
                        <h5>图书管理</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <table class="table table-bordered data-table">
                            <thead>
                            <tr>
                                <th>名称</th>
                                <th>作者</th>
                                <th>类型</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.book}" var="book">
                                    <tr class="gradeX">
                                        <td>${book.name}</td>
                                        <td>${book.author}</td>
                                        <td>
                                            <c:forEach items="${requestScope.bookType}" var="bookType">
                                                <c:if test="${book.bt_id == bookType.bt_id}">
                                                    ${bookType.name}
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td class="center">
                                            <a href="${pageContext.request.contextPath}/book/updateUI?id=${book.b_id}">修改</a>
                                            <a href="${pageContext.request.contextPath}/book/delete?id=${book.b_id}">删除</a>
                                        </td>
                                    </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/addUI">添加</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row-fluid">
    <div id="footer" class="span12"> 2012 &copy; Marutii Admin. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/maruti.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/maruti.tables.js"></script>
</body>
</html>

