var duoshuoQuery = {short_name:"wanghongmeng"};
(function() {
    var ds = document.createElement('script');
    ds.type = 'text/javascript';ds.async = true;
    ds.src = 'http://static.duoshuo.com/embed.js';
    ds.charset = 'UTF-8';
    (document.getElementsByTagName('head')[0]
        || document.getElementsByTagName('body')[0]).appendChild(ds);
})();

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
        showShareDiv : function(){
            var shareDiv = "#shareDiv";
            if($(shareDiv).css("display") == "none"){
                $(shareDiv).slideDown();
            }else{
                $(shareDiv).slideUp()
            }
        },
        goTop : function(){
            var obj=document.getElementById("goTop");
            function getScrollTop(){
                return document.documentElement.scrollTop;
            }
            function setScrollTop(value){
                document.documentElement.scrollTop=value;
            }
            window.onscroll=function(){getScrollTop()>0?obj.style.display="":obj.style.display="none";}
            var goTop=setInterval(scrollMove,10);
            function scrollMove(){
                setScrollTop(getScrollTop()/1.1);
                if(getScrollTop()<1)clearInterval(goTop);
            }
        }
    };
})();
//
//function showReply(id){
////    var comDiv = "#" + id;
////    if($(comDiv).css("display") == "none"){
////        $(comDiv).slideDown();
////    }else{
////        $(comDiv).slideUp()
////    }
//    var toolbar = "#" + id + " .ds-toolbar";
//    var raplybox = "#" + id + " .ds-replybox";
//    if($(toolbar).css("display") == "none"){
//        $(toolbar).slideDown();
//    }else{
//        $(toolbar).slideUp()
//    }
//    if($(raplybox).css("display") == "none"){
//        $(raplybox).slideDown();
//        scroller(id,800);
//    }else{
//        $(raplybox).slideUp()
//    }
//}
//
//function showShareDiv(){
//    var shareDiv = "#shareDiv";
//    if($(shareDiv).css("display") == "none"){
//        $(shareDiv).slideDown();
//    }else{
//        $(shareDiv).slideUp()
//    }
//}