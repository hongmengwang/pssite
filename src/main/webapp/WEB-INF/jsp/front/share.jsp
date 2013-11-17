<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<div class="content">
    <%--<c:forEach items="${personShareList}" var="personShare">--%>
        <%--<div class='share'>--%>
            <%--<a href="/front/${nick}/share/${personShare.id}" target="_blank">--%>
                <%--<img style="display: inline;" data-original="${staticPrefix}${personShare.picPath}" />--%>
            <%--</a>--%>
            <%--<a class="comment" href="/front/${nick}/share/${personShare.id}" target="_blank">${personShare.shareComment}</a>--%>
            <%--<span class="size13">${personShare.entryDate}</span>--%>
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
            'contentPage': '/front/' + nick + '/ajax/share',
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
                    $.each(data,function(i,personShare){
                        var shareStr = '<div class="share">';
                        shareStr += '<a href="/front/' + nick + '/share/' + personShare.id + '" target="_blank">';
                        shareStr += '<img style="display: inline;" src="' + staticPrefix + personShare.picPath + '" /></a>';
                        shareStr += '<a class="comment" href="/front/' + nick + '/share/' + personShare.id + '" target="_blank">' + personShare.shareComment +'</a>';
                        shareStr += '<span class="size13">' + personShare.entryDate + '</span></div>';
                        $(".content").append(shareStr);
                    });
                }
            }
        });
    });
</script>