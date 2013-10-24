<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<section id=wraper>
    <section id=main>
        <c:forEach items="${aboutList}" var="about">
            <article class='article'>
                <div class='border'>
                    <div class='jarakgrid'>
                        <h6>${about.item}</h6>
                        <div class='hr'></div>
                        <p>
                            <c:if test="${fn:contains(about.item,'标签')}">
                                <c:set value="${fn:split(about.content, ',') }" var="tags" />
                                <c:forEach items="${tags}" var="tag">
                                    <span class="label">${tag}</span>
                                </c:forEach>
                            </c:if>
                            <c:if test="${!fn:contains(about.item,'标签')}">
                                ${about.content}
                            </c:if>
                        </p>
                    </div>
                </div>
            </article>
        </c:forEach>
    </section>
</section>
<jsp:include page="../base/footer.jsp" />
