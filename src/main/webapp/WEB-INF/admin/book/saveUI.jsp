<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/6
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Aode Library</title><meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/colorpicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/uniform.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-media.css" class="skin-color" />
</head>
<body>
<%@include file="../prelude.jsp"%>
<div id="content">
    <div id="content-header">
        <div id="breadcrumb">
            <a href="${pageContext.request.contextPath}/bookType/list" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>图书信息管理</a>
            <a>图书信息编辑</a>
        </div>
        <h1>图书信息编辑</h1>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>
								</span>
                        <h5>图书信息编辑</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="${pageContext.request.contextPath}/bookType/${ book.b_id == null ? 'add' : 'update' }" method="post" class="form-horizontal" id="book_form">
                            <div class="control-group">
                                <label class="control-label">图片添加:</label>
                                <div class="controls">
                                    <input type="file" name="picture"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">名字:</label>
                                <div class="controls"><input type="text" class="span3" placeholder="请输入类型名" name="name" id="name"/></div>
                                <span id="message"></span>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Normal textarea</label>
                                <div class="controls">
                                    <textarea class="span20"  placeholder="作品介绍" id="introduction" name="intro"></textarea>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">${ book.b_id == null ? '添加' : '修改'}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-colorpicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/maruti.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/maruti.form_common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/messages_zh.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
<script type="application/javascript">
    $(function () {
        $("#book_form").validate({
            rules:{
                name:{
                    required: true,
                }
            },
            messages:{
                name: {
                    required: "请输入类型名",
                }
            }
        })
    })
    CKEDITOR.replace( 'introduction',{
        height :'500',
        width :' 730',
        toolbar : [
            [ 'Preview','Maximize','Print', 'Image'],
            ['Cut', 'Copy', 'Paste', 'PasteText'],
            ['Link', 'Unlink', 'Anchor'],

            ['Bold', 'Italic', 'Underline', 'Strike', 'TextColor', 'BGColor'],

            ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
            ['Styles', 'Format', 'Font', 'FontSize','LineHeight']
        ],
        filebrowserImageUploadUrl: "${pageContext.request.contextPath}/admin/attachment/fileUpload"
    } );
</script>
</body>
</html>
