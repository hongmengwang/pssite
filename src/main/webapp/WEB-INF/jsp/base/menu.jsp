<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="${title},${keyword}" />
    <meta name="description" content="${description}" />
    <title>${title}</title>
    <link rel="stylesheet" href="${staticPrefix}/css/front.index.photo.css">
    <link rel="stylesheet" href="${staticPrefix}/css/front.menu.css">
    <link rel="stylesheet" href="${staticPrefix}/css/front.person.photo.css">
    <link rel="stylesheet" href="${staticPrefix}/css/front.whole.css">
    <link rel="stylesheet" href="${staticPrefix}/css/front.album.css">
    <script type="text/javascript" src="${staticPrefix}/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${staticPrefix}/js/front.index.photo.js"></script>
    <script type="text/javascript" src="${staticPrefix}/js/front.person.photo.js"></script>
    <script type="text/javascript" src="${staticPrefix}/js/front.alubm.js"></script>
    <script type="text/javascript" src="${staticPrefix}/js/front.whole.js"></script>
</head>
<body>
<table style="margin-top: 10px;width:100%">
    <tr style="vertical-align: top;">
        <td style="width:25%;">
            <div style="width: 25%;position: fixed;_position: absolute;_top: expression(documentElement.scrollTop + 'px');">
                <ul class="ca-menu">
                    <li>
                        <a href="/">
                            <span class="ca-icon">Z</span>
                            <div class="ca-content">
                                <h2 class="ca-main">首页</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/front/${nick}/diary" <c:if test="${catagory == 'diary'}">class="active"</c:if>>
                            <span class="ca-icon">N</span>
                            <div class="ca-content">
                                <h2 class="ca-main">心情日记</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/front/${nick}/album" <c:if test="${catagory == 'album'}">class="active"</c:if>>
                            <span class="ca-icon">I</span>
                            <div class="ca-content">
                                <h2 class="ca-main">照片墙</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/front/${nick}/share" <c:if test="${catagory == 'share'}">class="active"</c:if>>
                            <span class="ca-icon">R</span>
                            <div class="ca-content">
                                <h2 class="ca-main">分享</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/front/${nick}/me" <c:if test="${catagory == 'me'}">class="active"</c:if>>
                            <span class="ca-icon">Q</span>
                            <div class="ca-content">
                                <h2 class="ca-main">关于我</h2>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </td>
        <td style="width:100%;">