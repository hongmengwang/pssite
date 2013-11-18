<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
        <input type="hidden" id="nick" value="${nick}" />
        <input type="hidden" id="staticPrefix" value="${staticPrefix}" />
        <input type="hidden" id="pageSize" value="${pageSize}" />
        <div class="content">
            <ul class="albums"></ul>
        </div>
        <div id="loading" class="loading">努力加载中。。。</div>
        <div id="noresult" class="loading">加载完毕</div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript" src="${staticPrefix}/js/front.ajax.album.js"></script>