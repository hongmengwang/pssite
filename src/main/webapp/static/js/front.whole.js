var duoshuoQuery = {short_name:"wanghongmeng"};

$(function() {
    $(window).resize(function(){front.resize();}).trigger('resize');
    $(".popp").colorbox({rel:'popp'});
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

            if(displayWidth <= 408){
                $(".banner").css("display","none");
                $(".topblank").css("display","none");
            }else{
                $(".banner").css("display","");
                $(".topblank").css("display","");
            }

            if(displayHeight <= 340){
                $(".footer").css("display","none");
            }else{
                $(".footer").css("display","");
            }

            var menuIconSize = 40;
            var newMenuIconSize = (Math.floor(menuIconSize * widthPercentage) - 1) * 2;
            newMenuIconSize = newMenuIconSize > menuIconSize ? menuIconSize : newMenuIconSize;
            $(".menu .ca-menu li a .ca-icon").css("font-size", newMenuIconSize + "px");

            var menuFontSize = 30;
            var newMenuFontSize = (Math.floor(menuFontSize * widthPercentage) - 1) * 2;
            newMenuFontSize = newMenuFontSize > menuFontSize ? menuFontSize : newMenuFontSize;
            $(".menu .ca-menu li a .ca-main").css("font-size", newMenuFontSize + "px");

            var menuHeight = 85;
            var newHeight = Math.floor(menuHeight * heightPercentage) - 1;
            newHeight = newHeight > menuHeight ? menuHeight : newHeight;
            $(".menu .ca-menu li").css("height", newHeight + "px");
            $(".menu .ca-menu li a .ca-icon").css("line-height", newHeight + "px");

//            var wrapImgHeight = 450;
//            var newWrapImgHeight = Math.floor(wrapImgHeight * heightPercentage * heightPercentage) - 1;
//            newWrapImgHeight = newWrapImgHeight > wrapImgHeight ? wrapImgHeight : newWrapImgHeight;
            var isMobile = $("#isMobile").val();
            if(isMobile != 1){
                $(".wrapper").css("height", widthPercentage * 100 + "%");
            }

        },
        goTop : function(){
            function getScrollTop(){
                return $(window).scrollTop();
            }
            function setScrollTop(value){
                $(window).scrollTop(value);
            }
            $(window).scroll(function(){
                getScrollTop() > 0 ? $("#gotop").css("display","") : $("#gotop").css("display","none");
            });
            $("#gotop").bind("click",function(){
                var gotop = setInterval(scrollMove,10);
                function scrollMove(){
                    setScrollTop(getScrollTop()/1.1);
                    if(getScrollTop()<1)clearInterval(gotop);
                }
            });
        },
        initHeight : function (){
            var height = $(".content").parent().parent().css("height");
            height = height.substr(0,height.length - 2  ) - 50;
            $("#Iframe").attr("height",height);
        }
    };
})();