<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<style type="text/css">
    #ds-thread #ds-reset .ds-powered-by {
        display: none;
    }
    #ds-thread #ds-reset .ds-comment-body p{
        color:#AAA;
    }
    #ds-thread #ds-reset a.ds-like-thread-button{
        -moz-border-bottom-colors: none;
        -moz-border-left-colors: none;
        -moz-border-right-colors: none;
        -moz-border-top-colors: none;
        background:none;
        text-shadow: none;
        border-color: #CCCCCC #CCCCCC #AAAAAA;
        border-style: solid;
        border-width: 1px;
        margin-right: 15px;
        padding: 4px 8px;
    }
    #ds-thread #ds-reset a.ds-like-thread-button span{
        color:#aaa
    }
    #ds-reset span, #ds-reset strong, #ds-reset label, #ds-reset input{
        color:#aaa;
    }
    #ds-thread #ds-reset .ds-login-buttons p{
        color:#aaa
    }
    #ds-thread #ds-reset .ds-comments{
        background-color: #2D2D2D;
        border-bottom: 1px solid rgba(0, 0, 0, 0.13);
        width: 100%;
    }
</style>
<ul class="thumbnails">
    <c:forEach items="${photoList}" var="photo">
        <li class="span3" style="width:20%">
            <div class="thumbnail">
                <a href="#image-${photo.id}">
                    <img style="width:100%" alt="${photo.comments}" src="${photo.picPath}" />
                </a>
                <div class="lb-overlay" id="image-${photo.id}">
                    <img src="${photo.picPath}" alt="${photo.comments}" />
                    <div>
                        <a href="#image-${photo.id - 1}" class="lb-prev">上一张</a>
                        <a href="#image-${photo.id + 1}" class="lb-next">下一张</a>
                    </div>
                    <a href="#page" class="lb-close">x 关闭</a>
                </div>
            <%--<div class="caption">--%>
                    <%--<h5 style="text-shadow:none;display: inline;">${photo.comments}</h5>--%>
                <%--</div>--%>
            </div>
        </li>
    </c:forEach>
</ul>
<div class="ds-thread"></div>

<jsp:include page="../base/footer.jsp" />