<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/23
  Time: 23:47
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Cinema Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- header-section-starts -->
<div class="full">
    <%@ include file="menu.jsp"%>
    <div class="main">
        <div class="review-content">
            <%@ include file="top-header.jsp"%>
            <div class="reviews-section">
                <h3 class="head">图书总览</h3>
                <div class="col-md-9 reviews-grids">
                <c:forEach items="${requestScope.books}" var="books">
                    <div class="review">
                        <div class="movie-pic">
                            <a href="single.html"><img src="${pageContext.request.contextPath}/resources/file/book/${books.picture}" alt="" /></a>
                        </div>
                        <div class="review-info">
                            <a class="span" href="single.html"><i>${books.name}</i></a>
                            <p class="dirctr">${books.publication_date}</p>
                            <p class="ratingview">作者:</p>
                            <div class="rating">
                                ${books.author}
                            </div>
                            <div class="clearfix"></div>
                            <p class="info">${books.intro}</p>
                            <div class="yrw">
                                <div class="rtm text-left">
                                    <a href="${pageContext.request.contextPath}/stage/subscibe?b_id=${books.b_id}&userId=${sessionScope.userLogged.u_id}">订阅</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    </c:forEach>
                    <div class="pagenation">
                        <ul>
                            <li><font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第${page.pageNow} 页</font></li>
                            <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=1">首页</a></li>
                            <c:choose>
                                <c:when test="${page.pageNow - 1 > 0}">
                                    <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=${page.pageNow - 1}">上一页</a></li>
                                </c:when>
                                <c:when test="${page.pageNow - 1 <= 0}">
                                    <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=1">上一页</a></li>
                                </c:when>
                            </c:choose>
                            <c:choose>
                                <c:when test="${page.totalPageCount==0}">
                                    <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=${page.pageNow}">下一页</a></li>
                                </c:when>
                                <c:when test="${page.pageNow + 1 < page.totalPageCount}">
                                    <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=${page.pageNow + 1}">下一页</a></li>
                                </c:when>
                                <c:when test="${page.pageNow + 1 >= page.totalPageCount}">
                                    <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=${page.totalPageCount}">下一页</a></li>
                                </c:when>
                            </c:choose>
                            <c:choose>
                                <c:when test="${page.totalPageCount==0}">
                                    <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=${page.pageNow}">尾页</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="${pageContext.request.contextPath}/stage/${requestScope.name eq null ? 'bookList' : 'search'}?pageNow=${page.totalPageCount}">尾页</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-3 side-bar">
                    <div class="featured">
                        <h3>Featured Today in Movie Reviews</h3>
                        <ul>
                            <li>
                                <a href="single.html"><img src="images/f1.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="single.html"><img src="images/f2.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="single.html"><img src="images/f3.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="single.html"><img src="images/f4.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="single.html"><img src="images/f5.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <li>
                                <a href="single.html"><img src="images/f6.jpg" alt="" /></a>
                                <p>lorem movie review</p>
                            </li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="might">
                        <h4>You might also like</h4>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="single.html"><img src="images/mi.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="single.html">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="single.html"><img src="images/mi1.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="single.html">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="single.html"><img src="images/mi2.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="single.html">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="might-grid">
                            <div class="grid-might">
                                <a href="single.html"><img src="images/mi3.jpg" class="img-responsive" alt=""> </a>
                            </div>
                            <div class="might-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="single.html">Lorem Ipsum <i> </i></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!---->
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <%@ include file="footer.jsp"%>
    </div>
    <div class="clearfix"></div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
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