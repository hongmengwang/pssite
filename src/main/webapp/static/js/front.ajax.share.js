$(function(){
    var nick = $('#nick').val();
    var staticPrefix = $('#staticPrefix').val();
    var pageSize = parseInt($('#pageSize').val());
    $('.content').scrollPagination({
        'contentPage': '/front/' + nick + '/ajax/share',
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