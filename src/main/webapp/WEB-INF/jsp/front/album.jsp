<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<div class="content">
    <ul class="albums">
        <%--<c:forEach items="${albumList}" var="album">--%>
            <%--<li class="span3">--%>
                <%--<div class="album">--%>
                    <%--<a href="album/${album.id}">--%>
                        <%--<img alt="${album.albumName}" data-original="${staticPrefix}/images/imgbg.gif" style="background-image: url('${staticPrefix}${album.albumCover}');"/>--%>
                    <%--</a>--%>
                    <%--<div class="caption">--%>
                        <%--<span class="size14">--%>
                            <%--<a href="album/${album.id}">--%>
                                <%--${album.albumName}--%>
                            <%--</a>--%>
                        <%--</span>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</li>--%>
        <%--</c:forEach>--%>
    </ul>
</div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript">
    $(function(){
        var nick = "${nick}";
        var staticPrefix = "${staticPrefix}";
        var pageSize = 9;
        $('.albums').scrollPagination({
            'contentPage': '/front/' + nick + '/ajax/album',
            'contentData': {"pageSize":pageSize},
            'scrollTarget': $(window),
            'heightOffset': 10,
            'success' : function(data){
                if(data.length == 0){
                    $('.albums').stopScrollPagination();
                }else{
                    if(data.length < pageSize){
                        $('.albums').stopScrollPagination();
                    }
                    $.each(data,function(i,album){
                        var albumStr = ' <li class="span3"><div class="album"><a href="album/' + album.id + '">';
                        albumStr += '<img alt="' + album.albumName + '" src="' + staticPrefix + '/images/imgbg.gif" style="background-image: url(\'' + staticPrefix + album.albumCover +'\');"/>';
                        albumStr += '</a><div class="caption"><span class="size14"><a href="album/' + album.id + '">' + album.albumName + '</a></span></div></div></li>';
                        $(".albums").append(albumStr);
                    });
                }
            }
        });
    });
</script>