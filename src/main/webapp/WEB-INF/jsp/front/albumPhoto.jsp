<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<link rel="stylesheet" href="${staticPrefix}/css/front.blog.css">
<div class="content">
    <ul class="albums">
        <%--<c:forEach items="${albumPhotoList}" var="albumPhoto">--%>
            <%--<li class="span3">--%>
                <%--<div class="album">--%>
                    <%--<a class="popp" href="${staticPrefix}${albumPhoto.picPath}" title="${albumPhoto.comments}">--%>
                        <%--<img alt="${albumPhoto.comments}" data-original="${staticPrefix}/images/imgbg.gif" style="background-image: url('${staticPrefix}${albumPhoto.picPath}');" onclick="showImage('${staticPrefix}${albumPhoto.picPath}')" />--%>
                    <%--</a>--%>
                <%--</div>--%>
            <%--</li>--%>
        <%--</c:forEach>--%>
    </ul>
    <div class="ds-thread"></div>
</div>
<jsp:include page="../base/footer.jsp" />