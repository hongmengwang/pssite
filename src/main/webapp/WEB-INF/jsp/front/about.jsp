<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="../base/menu.jsp" />
<div class="content">
    <section id=wraper>
        <section id=main>
            <c:forEach items="${personAboutList}" var="personAbout">
                <article class='article'>
                    <div class='border'>
                        <div class='jarakgrid'>
                            <h6>${personAbout.item}</h6>
                            <div class='hr'></div>
                            <p>
                                <c:if test="${fn:contains(personAbout.item,'标签')}">
                                    <c:set value="${fn:split(personAbout.content, ',') }" var="tags" />
                                    <c:forEach items="${tags}" var="tag">
                                        <span class="label">${tag}</span>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${!fn:contains(personAbout.item,'标签')}">
                                    ${personAbout.content}
                                </c:if>
                            </p>
                        </div>
                    </div>
                </article>
            </c:forEach>
        </section>
    </section>
</div>
<jsp:include page="../base/footer.jsp" />
