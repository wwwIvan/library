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
    <title>Reviews</title>
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
                    <div class="review">
                        <div class="movie-pic">
                            <a href="single.html"><img src="${pageContext.request.contextPath}/images/r4.jpg" alt="" /></a>
                        </div>
                        <div class="review-info">
                            <a class="span" href="single.html">Lorem  <i>Movie Review</i></a>
                            <p class="dirctr"><a href="">Reagan Gavin Rasquinha, </a>TNN, Mar 12, 2015, 12.47PM IST</p>
                            <p class="ratingview">Critic's Rating:</p>
                            <div class="rating">
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                            </div>
                            <p class="ratingview">
                                &nbsp;3.5/5
                            </p>
                            <div class="clearfix"></div>
                            <p class="ratingview c-rating">Avg Readers' Rating:</p>
                            <div class="rating c-rating">
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                            </div>
                            <p class="ratingview c-rating">
                                &nbsp; 3.3/5</p>
                            <div class="clearfix"></div>
                            <div class="yrw">
                                <div class="dropdown-button">
                                    <select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
                                        <option value="0">Your rating</option>
                                        <option value="1">1.Poor</option>
                                        <option value="2">1.5(Below average)</option>
                                        <option value="3">2.Average</option>
                                        <option value="4">2.5(Above average)</option>
                                        <option value="5">3.Watchable</option>
                                        <option value="6">3.5(Good)</option>
                                        <option value="7">4.5(Very good)</option>
                                        <option value="8">5.Outstanding</option>
                                    </select>
                                </div>
                                <div class="rtm text-center">
                                    <a href="#">REVIEW THIS MOVIE</a>
                                </div>
                                <div class="wt text-center">
                                    <a href="#">WATCH THIS TRAILER</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <p class="info">CAST:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Will Smith, Margot Robbie, Adrian Martinez, Rodrigo Santoro, BD Wong, Robert Taylor</p>
                            <p class="info">DIRECTION: &nbsp;&nbsp;&nbsp;&nbsp;Glenn Ficarra, John Requa</p>
                            <p class="info">GENRE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Crime</p>
                            <p class="info">DURATION:&nbsp;&nbsp;&nbsp; &nbsp; 1 hour 45 minutes</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
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

                    <div class="entertainment">
                        <h3>Featured Today in Entertainment</h3>
                        <ul>
                            <li class="ent">
                                <a href="single.html"><img src="images/f6.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="single.html">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="single.html"><img src="images/f5.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="single.html">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="single.html"><img src="images/f3.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="single.html">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="single.html"><img src="images/f4.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="single.html">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="single.html"><img src="images/f2.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="single.html">Watch ‘Bombay Velvet’ trailer during WC match</a>

                            </li>
                            <div class="clearfix"></div>
                        </ul>
                        <ul>
                            <li class="ent">
                                <a href="single.html"><img src="images/f1.jpg" alt="" /></a>
                            </li>
                            <li>
                                <a href="single.html">Watch ‘Bombay Velvet’ trailer during WC match</a>

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
                    <div class="grid-top">
                        <h4>Archives</h4>
                        <ul>
                            <li><a href="single.html">Lorem Ipsum is simply dummy text of the printing and typesetting industry. </a></li>
                            <li><a href="single.html">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</a></li>
                            <li><a href="single.html">When an unknown printer took a galley of type and scrambled it to make a type specimen book. </a> </li>
                            <li><a href="single.html">It has survived not only five centuries, but also the leap into electronic typesetting</a> </li>
                            <li><a href="single.html">Remaining essentially unchanged. It was popularised in the 1960s with the release of </a> </li>
                            <li><a href="single.html">Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing </a> </li>
                            <li><a href="single.html">Software like Aldus PageMaker including versionsof Lorem Ipsum.</a> </li>
                        </ul>
                    </div>
                    <!---->

                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <div class="review-slider">
            <ul id="flexiselDemo1">
                <li><img src="images/r1.jpg" alt=""/></li>
                <li><img src="images/r2.jpg" alt=""/></li>
                <li><img src="images/r3.jpg" alt=""/></li>
                <li><img src="images/r4.jpg" alt=""/></li>
                <li><img src="images/r5.jpg" alt=""/></li>
                <li><img src="images/r6.jpg" alt=""/></li>
            </ul>
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
                                visibleItems: 3
                            }
                        }
                    });
                });
            </script>
            <script type="${pageContext.request.contextPath}/text/javascript" src="js/jquery.flexisel.js"></script>
        </div>
        <%@ include file="footer.jsp"%>
    </div>
    <div class="clearfix"></div>
</div>
</body>
</html>