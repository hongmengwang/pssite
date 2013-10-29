<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<ul class="thumbnails">
    <c:forEach items="${albumList}" var="album">
        <li class="span3" style="width:30%">
            <div class="thumbnail">
                <a href="album/${album.id}">
                    <img style="width: 100%;" alt="${album.albumName}" src="${album.albumCover}" />
                </a>
                <div class="caption">
                    <h5 style="text-shadow:none;display: inline;">${album.albumName}</h5>
                </div>
            </div>
        </li>
    </c:forEach>
</ul>
<jsp:include page="../base/footer.jsp" />