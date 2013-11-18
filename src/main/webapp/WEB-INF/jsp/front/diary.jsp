<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
        <link rel="stylesheet" href="${staticPrefix}/css/front.twitter.css">
        <div class="content"></div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript">
    $(function(){
        var nick = '${nick}';
        var staticPrefix = '${staticPrefix}';
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
                        var diaryDiv = $('<div />').attr('class','diary').appendTo($('.content'));
                        var h5 = $('<h5 />').html(personDiary.entryDate).appendTo($(diaryDiv));
                        var hr = $('<div />').attr('class','hr').appendTo($(diaryDiv));
                        var replyP = $('<p />').attr('class','size14').html(personDiary.content).appendTo($(diaryDiv));
                        var replyBtn = $('<a />').attr('class','combtn').attr('href','javascript:void(0)').html('回复').bind("click",function(){front.showReply('comDiv' + personDiary.id)}).appendTo($(replyP));
                        if(personDiary.picPath != null && personDiary.picPath != ''){
                            var imgP = $('<p />').appendTo($(diaryDiv));
                            var img = $('<img />').attr('src',staticPrefix + personDiary.picPath).appendTo($(imgP));

                        }
                        var comDiv = $('<div />').attr('id','comDiv' + personDiary.id).appendTo($(diaryDiv));
                        var duoshuoDiv = $('<div />').attr('class','ds-thread').attr('data-thread-key','diary' + personDiary.id).appendTo($(comDiv));
                    });
                }
            }
        });
    });
</script>