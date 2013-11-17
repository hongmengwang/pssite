<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <div class="footer">
            <div class="comment">
                <h4>
                    CopyRight&nbsp;&nbsp;&copy;2013&nbsp;&nbsp;<a href="http://wanghongmeng.com" title="wanghongmeng.com">wanghongmeng.com</a>
                    <a href="http://www.miitbeian.gov.cn/" target="_blank" title="京ICP备13042493号">京ICP备13042493号</a>
                </h4>
            </div>
        </div>
        <script type="text/javascript" src="${staticPrefix}/js/jquery-1.4.4.min.js"></script>
        <script type="text/javascript" src="${staticPrefix}/js/jquery.scrollpagination.js"></script>
<script type="text/javascript">
    $(function(){
        var nick = "${nick}";
        var albumId = ${albumId};
        var staticPrefix = "${staticPrefix}";
        var pageSize = 9;
        $('.albums').scrollPagination({
            'contentPage': '/front/' + nick + '/ajax/albumPhoto',
            'contentData': {"pageSize":pageSize,"albumId":albumId},
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
                        var albumStr = ' <li class="span3"><div class="album"><a class="popp" href="' + staticPrefix + albumPhoto.picPath + '" title="' + albumPhoto.comments + '">';
                        albumStr += '<img alt="' + albumPhoto.comments + '" src="' + staticPrefix + '/images/imgbg.gif" style="background-image: url(\'' + staticPrefix + albumPhoto.picPath +'\');"  onclick="showImage(\'' + staticPrefix + albumPhoto.picPath + '\')" />';
                        albumStr += '</a></div></li>';
                        $(".albums").append(albumStr);
                    });
                }
            }
        });
    });
</script>
        <script type="text/javascript" src="${staticPrefix}/js/front.index.photo.js"></script>
        <script type="text/javascript" src="${staticPrefix}/js/front.person.photo.js"></script>
        <script type="text/javascript" src="${staticPrefix}/js/front.alubm.js"></script>
        <script type="text/javascript" src="${staticPrefix}/js/front.whole.js"></script>
        <script type="text/javascript" src="${staticPrefix}/js/front.anchor.js"></script>
        <script type="text/javascript">front.goTop();</script>
    </body>
</html>