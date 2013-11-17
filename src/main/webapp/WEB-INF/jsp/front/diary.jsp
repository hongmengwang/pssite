<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<link rel="stylesheet" href="${staticPrefix}/css/front.twitter.css">
<div class="content">
    <%--<c:forEach items="${personDiaryList}" var="personDiary">--%>
        <%--<div class='diary'>--%>
            <%--<h5>${personDiary.entryDate}</h5>--%>
            <%--<div class='hr'></div>--%>
            <%--<p class="size14">--%>
                    <%--${personDiary.content}&nbsp;&nbsp;--%>
                <%--<a class="combtn" href="javascript:void(0)" onclick="front.showReply('comDiv${personDiary.id}')">回复</a>--%>
                <%--<a class="combtn" href="javascript:void(0)" onclick="front.showReply('comDiv11')">回复</a>--%>
            <%--</p>--%>
            <%--<c:if test="${personDiary.picPath != null && personDiary.picPath != ''}">--%>
                <%--<p><img data-original="${staticPrefix}${personDiary.picPath}" /></p>--%>
            <%--</c:if>--%>
            <%--<div id="comDiv${personDiary.id}">--%>
                <%--<div class="ds-thread" data-thread-key="diary${personDiary.id}"></div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
</div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript">
    $(function(){
        var nick = "${nick}";
        var staticPrefix = "${staticPrefix}";
        var pageSize = 5;
        $('.content').scrollPagination({
            'contentPage': '/front/' + nick + '/ajax/diary',
            'contentData': {"pageSize":pageSize},
            'scrollTarget': $(window),
            'heightOffset': 10,
            'success' : function(data){
                if(data.length == 0){
                    $('.content').stopScrollPagination();
                }else{
                    if(data.length < pageSize){
                        $('.content').stopScrollPagination();
                    }
                    $.each(data,function(i,personDiary){
                        var diaryStr = '<div class="diary"><h5>' + personDiary.entryDate + '</h5><div class="hr"></div>';
                        diaryStr += '<p class="size14">' + personDiary.content + '&nbsp;&nbsp;';
                        diaryStr += '<a class="combtn" href="javascript:void(0)" onclick="front.showReply(\'comDiv' + personDiary.id + '\')">回复</a></p>';
                        if(personDiary.picPath != null && personDiary.picPath != ''){
                            diaryStr += '<p><img src="' + staticPrefix + personDiary.picPath + '" /></p>';

                        }
                        diaryStr += '<div id="comDiv' + personDiary.id + '"><div class="ds-thread" data-thread-key="diary' + personDiary.id + '"></div></div></div>';
                        $(".content").append(diaryStr);
                    });
                }
            }
        });
    });
</script>