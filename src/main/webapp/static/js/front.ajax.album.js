$(function(){
    var nick = $('#nick').val();
    var staticPrefix = $('#staticPrefix').val();
    var pageSize = parseInt($('#pageSize').val());
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
                   var li = $('<li />').attr('class','span3').appendTo('.albums');
                   var albumDiv = $('<div />').attr('class','album').appendTo($(li));
                   var imgHref = $('<a />').attr('href','album/' + album.id).attr('target','_blank').appendTo($(albumDiv));
                   var img = $('<img />').attr('alt',album.albumName).attr('src',staticPrefix + '/images/imgbg.gif').css('background-image','url(\'' + staticPrefix + album.albumCover + '\')').appendTo($(imgHref));
                   var captionDiv = $('<div />').attr('class','caption').appendTo($(albumDiv));
                   var span = $('<span />').attr('class','size14').appendTo($(captionDiv));
                   var nameHref = $('<a />').attr('href', 'album/' + album.id).attr('target','_blank').html(album.albumName).appendTo($(span));
               });
            }
        }
    });
});