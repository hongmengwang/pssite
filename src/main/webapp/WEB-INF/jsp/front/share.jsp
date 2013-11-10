<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />

<style type="text/css">
    .article p {
        display: inline;
    }
</style>

<section id=wraper>
    <section id=main>
        <c:forEach items="${personShareList}" var="personShare">
            <article class='article'>
                <div class='border'>
                    <div class='jarakgrid'>
                        <p>
                            <a href="/front/${nick}/share/${personShare.id}" target="_blank">
                                <img style="display: inline;" src="${personShare.picPath}" />
                            </a>
                        </p>
                        <p style="position:absolute;">
                            <a style="font-size: 14px;" href="/front/${nick}/share/${personShare.id}" target="_blank">${personShare.shareComment}</a>
                        </p>
                        <p style="position:relative;font-size: 13px;">${personShare.entryDate}</p>
                    </div>
                </div>
            </article>
        </c:forEach>
    </section>
</section>

<jsp:include page="../base/footer.jsp" />