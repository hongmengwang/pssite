<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="../base/menu.jsp" />
        <div class="content">
            <c:forEach items="${personAboutList}" var="personAbout">
                <div class='about'>
                    <h5>${personAbout.item}</h5>
                    <div class='hr'></div>
                    <c:if test="${fn:contains(personAbout.item,'标签')}">
                        <c:set value="${fn:split(personAbout.content, ',') }" var="tags" />
                        <c:forEach items="${tags}" var="tag">
                            <span class="label">${tag}</span>
                        </c:forEach>
                    </c:if>
                    <c:if test="${fn:contains(personAbout.item,'小说')}">
                        <c:set value="${fn:split(personAbout.content, ',') }" var="novels" />
                        <c:forEach items="${novels}" var="novel">
                            <span>${novel}</span>
                        </c:forEach>
                    </c:if>
                    <c:if test="${!fn:contains(personAbout.item,'标签')&&!fn:contains(personAbout.item,'小说')}">
                        <p class="size14">${personAbout.content}</p>
                    </c:if>
                </div>
            </c:forEach>
        </div>
<jsp:include page="../base/footer.jsp" />
