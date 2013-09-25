<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<section id=wraper>
    <section id=main>
        <c:forEach items="${diaryList}" var="diary">
            <article class='article'>
                <div class='border'>
                    <div class='jarakgrid'>
                        <h6>${diary.entryDate}</h6>
                        <div class='hr'></div>
                        <p>${diary.content}</p>
                        <c:if test="${diary.pic != null || diary.pic != ''}">
                            <p><img src="${context}/${diary.pic}" width="500" /></p>
                        </c:if>
                    </div>
                </div>
            </article>
         </c:forEach>
    </section>
</section>
<jsp:include page="../base/footer.jsp" />