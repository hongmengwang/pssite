function showReply(id){
//    var comDiv = "#" + id;
//    if($(comDiv).css("display") == "none"){
//        $(comDiv).slideDown();
//    }else{
//        $(comDiv).slideUp()
//    }
    var toolbar = "#" + id + " .ds-toolbar";
    var raplybox = "#" + id + " .ds-replybox";
    if($(toolbar).css("display") == "none"){
        $(toolbar).slideDown();
    }else{
        $(toolbar).slideUp()
    }
    if($(raplybox).css("display") == "none"){
        $(raplybox).slideDown();
    }else{
        $(raplybox).slideUp()
    }
}