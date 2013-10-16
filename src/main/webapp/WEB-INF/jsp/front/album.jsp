<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<ul class="thumbnails">
    <c:forEach items="${albumList}" var="album">
        <li class="span3" style="width:30%">
            <div class="thumbnail">
                <a href="front/${nick}/album/${album.id}">
                    <img style="border: 0 none;height: auto;max-width: 100%;vertical-align: middle;" alt="${album.albumName}" src="${album.albumCover}" />
                </a>
                <div class="caption">
                    <h4 style="text-shadow:none;line-height: 20px;display: inline;"><a href="front/${nick}/albumy/${album.id}">${album.albumName}</a></h4>
                    <h5 style="text-shadow:none;display: inline;">- ${album.entryDate}</h5>
                </div>
            </div>
        </li>
    </c:forEach>
</ul>

<jsp:include page="../base/footer.jsp" />