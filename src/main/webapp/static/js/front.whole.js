var duoshuoQuery = {short_name:"wanghongmeng"};
(function() {
    var ds = document.createElement('script');
    ds.type = 'text/javascript';ds.async = true;
    ds.src = 'http://static.duoshuo.com/embed.js';
    ds.charset = 'UTF-8';
    (document.getElementsByTagName('head')[0]
        || document.getElementsByTagName('body')[0]).appendChild(ds);
})();

$(function() {
    $(window).bind('resize', function(){
        front.resize();
    }).trigger('resize');
});

var front = (function(){
    return {
        showReply : function(id){
            var toolbar = "#" + id + " .ds-toolbar";
            var raplybox = "#" + id + " .ds-replybox";
            if($(toolbar).css("display") == "none"){
                $(toolbar).slideDown();
            }else{
                $(toolbar).slideUp()
            }
            if($(raplybox).css("display") == "none"){
                $(raplybox).slideDown();
                scroller(id,800);
            }else{
                $(raplybox).slideUp()
            }
        },
        resize : function(){
            var preferredWidth = 1366;
            var displayWidth = $(window).width();
            var widthPercentage = displayWidth / preferredWidth;

            var preferredHeight = 604;
            var displayHeight = $(window).height();
            var heightPercentage = displayHeight / preferredHeight;

            if(displayHeight<=430){
                $(".footer").css("display","none");
            }else{
                $(".footer").css("display","");
            }

            var iconSize = 40;
            var newIconSize = (Math.floor(iconSize * widthPercentage) - 1) * 2;
            newIconSize = newIconSize > iconSize ? iconSize : newIconSize;
            $(".menu .ca-menu li a .ca-icon").css("font-size", newIconSize + "px");

            var fontSize = 30;
            var newFontSize = (Math.floor(fontSize * widthPercentage) - 1) * 2;
            newFontSize = newFontSize > fontSize ? fontSize : newFontSize;
            $(".menu .ca-menu li a .ca-main").css("font-size", newFontSize + "px");

            var height = 85;
            var newHeight = Math.floor(height * heightPercentage) - 1;
            newHeight = newHeight > height ? height : newHeight;
            $(".menu .ca-menu li").css("height", newHeight + "px");
            $(".menu .ca-menu li a .ca-icon").css("line-height", newHeight + "px");
        },
        goTop : function(){
            var obj=document.getElementById("gotop");
            function getScrollTop(){
                return document.documentElement.scrollTop;
            }
            function setScrollTop(value){
                document.documentElement.scrollTop=value;
            }
            window.onscroll=function(){getScrollTop()>0?obj.style.display="":obj.style.display="none";}
            obj.onclick=function(){
                var goTop=setInterval(scrollMove,10);
                function scrollMove(){
                    setScrollTop(getScrollTop()/1.1);
                    if(getScrollTop()<1)clearInterval(goTop);
                }
            }
        }
    };
})();