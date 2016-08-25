<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/25
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Single</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Cinema Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- header-section-starts -->
<div class="full">
    <%@include file="menu.jsp"%>
    <div class="main">
        <div class="single-content">
            <%@include file="top-header.jsp"%>
            <div class="reviews-section">
                <h3 class="head">个人信息</h3>
                <div class="col-md-9 reviews-grids">
                    <div class="reply-section">
                        <div class="blog-form">
                            <form action="${pageContext.request.contextPath}/stage/registerUI" method="post">
                                姓名：<input type="text" class="text" value="${requestScope.user.userName}" readonly="readonly">
                                账号：<input type="text" class="text" value="${requestScope.user.account}" readonly="readonly">
                                密码：<input type="text" class="password" value="${requestScope.user.password}" readonly="readonly">
                                身份证：<input type="text" class="text" value="${requestScope.user.idCard}" readonly="readonly">
                                还可订阅（最多同时订阅三本书）：<input type="text" class="text" value="${requestScope.user.existing}" readonly="readonly">
                                <input type="button" value="修改">
                            </form>
                        </div>
                    </div>
                    <div class="review">
                        订阅图书：
                        <c:forEach items="${requestScope.books.bookList}" var="bookList">
                            <div class="story-review">
                                <div class="movie-pic">
                                    <a href="single.html"><img src="${pageContext.request.contextPath}/resources/file/book/${bookList.picture}" alt=""/></a>
                                </div>
                                <div class="review-info">
                                    <a class="span" href="single.html"><i>${bookList.name}</i></a>
                                    <p class="dirctr">${bookList.publication_date}</p>
                                    <p class="ratingview">作者:</p>
                                    <div class="rating">
                                            ${bookList.author}
                                    </div>
                                    <p class="info">${bookList.intro}</p>
                                    <div class="yrw">
                                        <div class="wt text-center">
                                            <a href="${pageContext.request.contextPath}/stage/">取消订阅</a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <%@include file="footer.jsp"%>
    </div>
    <div class="clearfix"></div>
</div>
</body>
</html>
