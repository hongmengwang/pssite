<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>test</title>
    <c:set var="context" value="<%=request.getContextPath()%>" scope="session" />
    <script type="text/javascript" src="${context}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${context}/static/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${context}/static/js/jquery.transform-0.8.0.min.js"></script>
    <script type="text/javascript" src="${context}/static/js/cufon-yui.js"></script>
    <script type="text/javascript" src="${context}/static/js/Note_this_400.font.js"></script>
    <script type="text/javascript" src="${context}/static/js/front.person.photo.js"></script>
    <script type="text/javascript" src="${context}/static/js/front.whole.js"></script>
    <%--<link rel="styleshee    t" href="${context}/static/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="${context}/static/css/front.menu.css">
    <link rel="stylesheet" href="${context}/static/css/front.person.photo.css">
    <link rel="stylesheet" href="${context}/static/css/front.whole.css">
</head>
<body>
<table style="margin-top: 10px;width:100%">
    <tr style="vertical-align: top;">
        <td style="width:25%;">
            <div style="width: 100%;position: fixed;_position: absolute;_top: expression(documentElement.scrollTop + 'px');">
                <ul class="ca-menu">
                    <li>
                        <a href="${context}/">
                            <span class="ca-icon">Z</span>
                            <div class="ca-content">
                                <h2 class="ca-main">首页</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${context}/front/${nick}/diary" <c:if test="${catagory == 'diary'}">class="active"</c:if>>
                            <span class="ca-icon">N</span>
                            <div class="ca-content">
                                <h2 class="ca-main">心情日记</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${context}/front/${nick}/album" <c:if test="${catagory == 'album'}">class="active"</c:if>>
                            <span class="ca-icon">I</span>
                            <div class="ca-content">
                                <h2 class="ca-main">照片墙</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${context}/front/${nick}/share" <c:if test="${catagory == 'share'}">class="active"</c:if>>
                            <span class="ca-icon">R</span>
                            <div class="ca-content">
                                <h2 class="ca-main">分享</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${context}/front/${nick}/me" <c:if test="${catagory == 'me'}">class="active"</c:if>>
                            <span class="ca-icon">Q</span>
                            <div class="ca-content">
                                <h2 class="ca-main">关于我</h2>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </td>
        <td style="width:100%">