<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<div class="content">
    <ul class="albums">
        <c:forEach items="${albumList}" var="album">
            <li class="span3">
                <div class="album">
                    <a href="album/${album.id}">
                        <img alt="${album.albumName}" src="${staticPrefix}/images/imgbg.gif" style="background-image: url('${staticPrefix}${album.albumCover}');"/>
                    </a>
                    <div class="caption">
                        <h5 >
                            <a href="album/${album.id}">
                                ${album.albumName}
                            </a>
                        </h5>
                    </div>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<jsp:include page="../base/footer.jsp" />