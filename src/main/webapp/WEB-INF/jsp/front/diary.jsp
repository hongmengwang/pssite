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
    #ds-thread #ds-reset a.ds-thread-liked{
        background:none;
    }
    #ds-reset span, #ds-reset strong, #ds-reset label, #ds-reset input{
        color:#aaa;
    }
    #ds-thread #ds-reset .ds-login-buttons p{
        color:#aaa
    }

    #ds-thread #ds-reset .ds-comments-info{
        display: none;
    }
    #ds-thread #ds-reset .ds-toolbar{
        display: none;
    }
    #ds-thread #ds-reset .ds-replybox{
        display: none;
    }
    #ds-thread #ds-reset .ds-comments{
        background-color: #2D2D2D;
        border-bottom: 1px solid rgba(0, 0, 0, 0.13);
        width: 100%;
    }
</style>
<section id=wraper>
    <section id=main>
        <c:forEach items="${diaryList}" var="diary">
            <article class='article'>
                <div class='border'>
                    <div class='jarakgrid'>
                        <h6>${diary.entryDate}</h6>
                        <div class='hr'></div>
                        <p>${diary.content}</p>
                        <c:if test="${diary.pic != null && diary.pic != ''}">
                            <p><img src="${context}/${diary.pic}" width="500" /></p>
                        </c:if>
                        <div class="comdiv"><a class="combtn" href="javascript:void(0)" onclick="showReply('comDiv${diary.id}')">评论</a></div>
                        <div id="comDiv${diary.id}">
                            <div class="ds-thread" data-thread-key="diary${diary.id}"></div>
                        </div>
                    </div>
                </div>
            </article>
         </c:forEach>
    </section>
</section>
</script>
<jsp:include page="../base/footer.jsp" />