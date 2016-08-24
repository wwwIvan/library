<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/23
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Aode Library</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- header-section-starts -->
<div class="full">
    <%@include file="menu.jsp"%>
    <div class="main">
        <div class="header">
            <%@include file="top-header.jsp"%>
            <div class="header-info">
                <h1>BIG HERO 6</h1>
                <p class="age"><a href="#">All Age</a> Don Hall, Chris Williams</p>
                <p class="review">Rating	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;  8,5/10</p>
                <p class="review reviewgo">Genre	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp; Animation, Action, Comedy</p>
                <p class="review">Release &nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp; 7 November 2014</p>
                <p class="special">The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.</p>
                <a class="video" href="#"><i class="video1"></i>WATCH TRAILER</a>
                <a class="book" href="#"><i class="book1"></i>BOOK TICKET</a>
            </div>
        </div>
        <br>
        <div class="review-slider">
            <ul id="flexiselDemo1">
                <c:forEach items="${requestScope.book}" var="book">
                    <li><img src="${pageContext.request.contextPath}/resources/file/book/${book.picture}" alt=""/></li>
                </c:forEach>
            </ul>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费模板</a></div>
            <script type="text/javascript">
                $(window).load(function() {
                    $("#flexiselDemo1").flexisel({
                        visibleItems: 6,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: false,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint:480,
                                visibleItems: 2
                            },
                            landscape: {
                                changePoint:640,
                                visibleItems: 3
                            },
                            tablet: {
                                changePoint:768,
                                visibleItems: 4
                            }
                        }
                    });
                });
            </script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>
        </div>
        <div class="video">
        </div>
        <%@ include file="footer.jsp"%>
    </div>
</div>
<div class="clearfix"></div>
</body>
</html>
