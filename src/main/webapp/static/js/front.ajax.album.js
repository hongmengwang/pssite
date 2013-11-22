$(function(){
    var nick = $('#nick').val();
    var staticPrefix = $('#staticPrefix').val();
    var pageSize = parseInt($('#pageSize').val());
    var isChrome = navigator.userAgent.toLowerCase().match(/chrome/) != null;
    $('.albums').scrollPagination({
        'contentPage': '/front/' + nick + '/ajax/album',
        'contentData': {"pageSize":pageSize},
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
//                   $("#noresult").fadeIn();
               }
               $.each(data,function(i,album){
                   var li = $('<li />').attr('class','span3').appendTo($('.albums'));
                   var albumDiv = $('<div />').attr('class','album').appendTo($(li));
                   var imgHref = $('<a />').attr('href','album/' + album.id).appendTo($(albumDiv));
                   var img;
                   if (isChrome) {
                       img = $('<img />').attr('alt',album.albumName).attr('src',staticPrefix + '/images/imgbg.gif').css('background-image','url(\'' + staticPrefix + album.albumCover + '\')').appendTo($(imgHref));
                   }else{
                       img = $('<img />').attr('alt',album.albumName).width('100%').height('100%').attr('src',staticPrefix + '/images/imgbg.gif').css('background-image','url(\'' + staticPrefix + album.albumCover + '\')').appendTo($(imgHref));
                   }
                   var captionDiv = $('<div />').attr('class','caption').appendTo($(albumDiv));
                   var span = $('<span />').attr('class','size14').appendTo($(captionDiv));
                   var nameHref = $('<a />').attr('href', 'album/' + album.id).html(album.albumName).appendTo($(span));
               });
            }
        }
    });
});