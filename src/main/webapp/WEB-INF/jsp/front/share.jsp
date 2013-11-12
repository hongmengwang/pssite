<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<div class="content">
    <c:forEach items="${personShareList}" var="personShare">
        <div class='share'>
            <a href="/front/${nick}/share/${personShare.id}" target="_blank">
                <img style="display: inline;" src="${staticPrefix}${personShare.picPath}" />
            </a>
            <a class="comment" href="/front/${nick}/share/${personShare.id}" target="_blank">${personShare.shareComment}</a>
            <span class="size13">${personShare.entryDate}</span>
        </div>
    </c:forEach>
</div>
<jsp:include page="../base/footer.jsp" />