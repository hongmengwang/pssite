<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<link rel="stylesheet" href="${staticPrefix}/css/front.twitter.css">
<div class="content">
    <c:forEach items="${personDiaryList}" var="personDiary">
        <div class='diary'>
            <h5>${personDiary.entryDate}</h5>
            <div class='hr'></div>
            <p class="size14">
                    ${personDiary.content}&nbsp;&nbsp;
                <a class="combtn" href="javascript:void(0)" onclick="front.showReply('comDiv${personDiary.id}')">回复</a>
            </p>
            <c:if test="${personDiary.picPath != null && personDiary.picPath != ''}">
                <a class="popp" href="${staticPrefix}${personDiary.picPath}"><img src="${staticPrefix}${personDiary.picPath}" /></a>
            </c:if>
            <div id="comDiv${personDiary.id}">
                <div class="ds-thread" data-thread-key="diary${personDiary.id}"></div>
            </div>
        </div>
    </c:forEach>
</div>
<jsp:include page="../base/footer.jsp" />