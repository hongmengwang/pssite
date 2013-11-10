<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp" />
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
            <a href="/front/${nick}/blog" <c:if test="${catagory == 'blog'}">class="active"</c:if>>
                <span class="ca-icon">A</span>
                <div class="ca-content">
                    <h2 class="ca-main">博客</h2>
                </div>
            </a>
        </li>
        <li>
            <a href="/front/${nick}/share" <c:if test="${catagory == 'share'}">class="active"</c:if>>
                <span class="ca-icon">M</span>
                <div class="ca-content">
                    <h2 class="ca-main">分享</h2>
                </div>
            </a>
        </li>
        <li>
            <a href="/front/${nick}/about" <c:if test="${catagory == 'me'}">class="active"</c:if>>
                <span class="ca-icon">Q</span>
                <div class="ca-content">
                    <h2 class="ca-main">关于我</h2>
                </div>
            </a>
        </li>
    </ul>
</div>
