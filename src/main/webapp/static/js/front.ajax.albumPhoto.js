$(function(){
    var nick = $('#nick').val();
    var albumId = $('#albumId').val()
    var staticPrefix = $('#staticPrefix').val();
    var pageSize = parseInt($('#pageSize').val());
    var isChrome = navigator.userAgent.toLowerCase().match(/chrome/) != null;
    $('.albums').scrollPagination({
        'contentPage': '/front/' + nick + '/ajax/albumPhoto',
        'contentData': {'pageSize':pageSize,'albumId':albumId},
        'scrollTarget': $(window),
        'heightOffset': 10,
        'beforeLoad':function(){
            $('#loading').fadeIn();
        },
        'success' : function(data){
            if(data.length == 0){
                $('.albums').stopScrollPagination();
                $('#loading').fadeOut();
//                $("#noresult").fadeIn();
            }else{
                if(data.length < pageSize){
                    $('.albums').stopScrollPagination();
                    $('#loading').fadeOut();
//                    $("#noresult").fadeIn();
                }
                $.each(data,function(i,albumPhoto){
                    var li = $('<li />').attr('class','span3').appendTo($('.albums'));
                    var div = $('<div />').attr('class','album').appendTo($(li));
                    var href = $('<a />').attr('class','popp').attr('href',staticPrefix + albumPhoto.picPath).attr('title',albumPhoto.comments).appendTo($(div));
                    var img;
                    if(isChrome){
                        img = $('<img />').attr('alt',albumPhoto.comments).attr('src',staticPrefix + '/images/imgbg.gif').css('background-image' ,'url(\'' + staticPrefix + albumPhoto.picPath + '\')').appendTo($(href));
                    }else{
                        img = $('<img />').attr('alt',albumPhoto.comments).width('100%').height('100%').attr('src',staticPrefix + '/images/imgbg.gif').css('background-image' ,'url(\'' + staticPrefix + albumPhoto.picPath + '\')').appendTo($(href));
                    }
                });
                $(".popp").colorbox({rel:'popp'});
            }
        }
    });
});