<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<link rel="stylesheet" href="${staticPrefix}/css/front.blog.css">
<div class="content">
    <ul class="albums">
        <%--<c:forEach items="${albumPhotoList}" var="albumPhoto">--%>
            <%--<li class="span3">--%>
                <%--<div class="album">--%>
                    <%--<a class="popp" href="${staticPrefix}${albumPhoto.picPath}" title="${albumPhoto.comments}">--%>
                        <%--<img alt="${albumPhoto.comments}" src="${staticPrefix}/images/imgbg.gif" style="background-image: url('${staticPrefix}${albumPhoto.picPath}');" />--%>
                    <%--</a>--%>
                <%--</div>--%>
            <%--</li>--%>
        <%--</c:forEach>--%>
    </ul>
    <div class="ds-thread"></div>
</div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript">
    $(function(){
        var nick = '${nick}';
        var albumId = ${albumId};
        var staticPrefix = '${staticPrefix}';
        var pageSize = 9;
        $('.albums').scrollPagination({
            'contentPage': '/front/' + nick + '/ajax/albumPhoto',
            'contentData': {'pageSize':pageSize,'albumId':albumId},
            'scrollTarget': $(window),
            'heightOffset': 10,
            'success' : function(data){
                if(data.length == 0){
                    $('.albums').stopScrollPagination();
                }else{
                    if(data.length < pageSize){
                        $('.albums').stopScrollPagination();
                    }
                    $.each(data,function(i,albumPhoto){
                        var li = $('<li />').attr('class','span3').appendTo('.albums');
                        var div = $('<div />').attr('class','album').appendTo($(li));
                        var href = $('<a />').attr('class','popp').attr('href',staticPrefix + albumPhoto.picPath).attr('title',albumPhoto.comments).appendTo($(div));
                        var img = $('<img />').attr('alt',albumPhoto.comments).attr('src',staticPrefix + '/images/imgbg.gif').css('background-image' ,'url(\'' + staticPrefix + albumPhoto.picPath + '\')').appendTo($(href));
                    });
                    $(".popp").colorbox({rel:'popp'});
                }
            }
        });
    });
</script>