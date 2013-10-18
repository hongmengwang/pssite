<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<ul class="thumbnails">
    <c:forEach items="${photoList}" var="photo">
        <li class="span3" style="width:20%">
            <div class="thumbnail">
                <a href="album/${photo.id}">
                    <img style="width:100%" alt="${photo.comments}" src="${photo.picPath}" />
                </a>
                <%--<div class="caption">--%>
                    <%--<h5 style="text-shadow:none;display: inline;">${photo.comments}</h5>--%>
                <%--</div>--%>
            </div>
        </li>
    </c:forEach>
</ul>

<jsp:include page="../base/footer.jsp" />