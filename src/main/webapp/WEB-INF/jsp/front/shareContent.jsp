<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<section id=wraper>
    <section id=main>
        <article class='article'>
            <div class='border'>
                <div class='jarakgrid' style="padding: 0;">
                    <p>${personShare.shareLink}</p>
                    <p style="font-size: 14px;  ">${personShare.shareComment}</p>
                    <p style="font-size: 13px;">分享自:<a href="${personShare.shareSource}" target="_blank">${personShare.shareSource}</p>
                </div>
            </div>
        </article>
    </section>
</section>
<jsp:include page="../base/footer.jsp" />