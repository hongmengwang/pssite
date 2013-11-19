<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
        <link rel="stylesheet" href="${staticPrefix}/css/front.blog.css">
        <input type="hidden" id="nick" value="${nick}" />
        <input type="hidden" id="albumId" value="${albumId}" />
        <input type="hidden" id="staticPrefix" value="${staticPrefix}" />
        <input type="hidden" id="pageSize" value="${pageSize}" />
        <div class="content">
            <ul class="albums"></ul>
            <div class="ds-thread"></div>
        </div>
        <div id="loading" class="loading">
            <img src="${staticPrefix}/images/loading.gif" />
        </div>
        <div id="noresult" class="loading">加载完毕</div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript" src="${staticPrefix}/js/front.ajax.albumPhoto.js"></script>