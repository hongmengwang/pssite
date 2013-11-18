<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
        <link rel="stylesheet" href="${staticPrefix}/css/front.blog.css">
        <div class="content">
            <div class='share'>
                <p>${personShare.shareLink}</p>
                <p class="size14">${personShare.shareComment}</p>
                <p class="size13">分享自:<a href="${personShare.shareSource}" target="_blank">${personShare.shareSource}</a></p>
            </div>
            <div class="ds-thread"></div>
        </div>
<jsp:include page="../base/footer.jsp" />