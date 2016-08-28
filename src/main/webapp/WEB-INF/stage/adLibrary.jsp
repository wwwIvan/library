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
    <link href="${pageContext.request.contextPath}/resources/messenger/build/css/messenger.css"  rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/messenger/build/css/messenger-theme-air.css"  rel="stylesheet" type="text/css" />
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
                <c:choose>
                    <c:when test="${requestScope.recommendation != null}">
                        <h1>推荐图书</h1>
                        <p class="age"> ${requestScope.recommendation.name}</p>
                        <p class="review">出版日期	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;  ${requestScope.recommendation.publication_date}</p>
                        <p class="review reviewgo">作者	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp; ${requestScope.recommendation.author}</p>
                        <p class="review">类型 &nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;${requestScope.bookType.name}</p>
                        <p class="special">${requestScope.recommendation.intro}</p>
                        <a class="video" href="${pageContext.request.contextPath}/stage/subscibe?b_id=${requestScope.recommendation.b_id}&userId=${sessionScope.userLogged.u_id}&name=${requestScope.name}"><i class="video1"></i>订阅</a>
                    </c:when>
                    <c:otherwise>
                        <h1>暂无推荐图书</h1>
                    </c:otherwise>
                </c:choose>

            </div>
        </div>
        <br>
        <div class="review-slider">
            <ul id="flexiselDemo1">
                <c:forEach items="${requestScope.book}" var="book">
                    <li><img src="${pageContext.request.contextPath}/resources/file/book/${book.picture}" alt=""/></li>
                </c:forEach>
            </ul>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" ></a></div>
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
<script src="${pageContext.request.contextPath}/resources/messenger/build/js/messenger.min.js"></script>
</body>
<c:if test="${result!=null}">
    <script>
        $().ready(function(){
            var success=${result.success};
            var msg='${result.msg}';
            var type="error";
            if(success=true){
                type="success"
            }
            Messenger.options = {
                extraClasses: 'messenger-fixed messenger-theme-air messenger-on-top',
                theme: 'future'
            }
            $.globalMessenger().post({  message:"提示："+ msg,
                type: 'success',
                showCloseButton: true})
        })
    </script>
</c:if>
</html>
