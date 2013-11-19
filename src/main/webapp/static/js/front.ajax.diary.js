$(function(){
    var nick = $('#nick').val();
    var staticPrefix = $('#staticPrefix').val();
    var pageSize = parseInt($('#pageSize').val());
    $('.content').scrollPagination({
        'contentPage': '/front/' + nick + '/ajax/diary',
        'contentData': {"pageSize":pageSize},
        'scrollTarget': $(window),
        'heightOffset': 10,
        'beforeLoad':function(){
            $('#loading').fadeIn();
        },
        'success' : function(data){
            if(data.length == 0){
                $('.content').stopScrollPagination();
                $('#loading').fadeOut();
//                $("#noresult").fadeIn();
            }else{
                if(data.length < pageSize){
                    $('.content').stopScrollPagination();
                    $('#loading').fadeOut();
//                    $("#noresult").fadeIn();
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