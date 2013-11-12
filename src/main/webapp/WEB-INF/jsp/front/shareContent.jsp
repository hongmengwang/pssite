<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<div class="content">
    <div id=wraper>
        <div id=main>
            <div class='article'>
                <div class='border'>
                    <div class='jarakgrid' style="padding: 0;">
                        <p>${personShare.shareLink}</p>
                        <p style="font-size: 14px;  ">${personShare.shareComment}</p>
                        <p style="font-size: 13px;">分享自:<a href="${personShare.shareSource}" target="_blank">${personShare.shareSource}</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../base/footer.jsp" />