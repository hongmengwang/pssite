<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="${title},${keyword}" />
    <meta name="description" content="${description}" />
    <title>${title}</title>
    <style type="text/css">
        *{margin:0;padding:0;}
        html{height: 100%;}
        body{background-image: url("${staticPrefix}/images/bg_jehbs4cc.gif");color: #aaa;font-family: Helvetica,Arial,sans-serif;}
        a{color:#aaaaaa;}
        a:hover{color:#005580;}
        .size13{font-size: 14px;}
        .heads{margin: 60% 2% 2% 8%;position:absolute;}
        .heads .head{float: left;margin: 0 10px 0 0;width:45%;}
        .heads .head .album{display:block;padding:4px;line-height:20px;border:1px solid #ddd;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 1px 3px rgba(0, 0, 0, 0.055);-moz-box-shadow:0 1px 3px rgba(0, 0, 0, 0.055);box-shadow:0 1px 3px rgba(0, 0, 0, 0.055);-webkit-transition:all 0.2s ease-in-out;-moz-transition:all 0.2s ease-in-out;-o-transition:all 0.2s ease-in-out;transition:all 0.2s ease-in-out;}
        .heads .head .album img{width:100%  ;}
        .banner{width:100%;position:fixed;box-shadow: 0 50px 50px rgba(0, 0, 0, 0.4) inset;font-size: 16px;padding: 6px;margin:1px 0 10px 0;text-shadow: 0 1px #000000;top: 0;z-index: 20;}
        .banner .left{display:inline;}
        .banner .right{float:right;margin-right: 15px;}
        .footer{bottom: 0;height: 25px;position: fixed;width: 100%;z-index: 20;}
        .footer .comment{width:100%;box-shadow:0 50px 50px rgba(0,0,0,.4) inset;padding:6px; text-align:center;font-size:13px;}
        .topblank{height:40px;}
        #gotop {position: fixed;text-align: center;line-height: 30px;width: 30px;bottom: 35px;height: 33px;font-size: 12px;cursor: pointer;right: 0px;_position: absolute;_right: auto;z-index: 30;}
        .loader{width:70px;height:70px;position:fixed;top:50%;left:50%;margin:-35px 0px 0px -35px;opacity:0.7;z-index:1000;background:#fff url(${staticPrefix}/images/loader.gif) no-repeat center center;-moz-border-radius:15px;-webkit-border-radius:15px;border-radius:15px;-moz-box-shadow:0px 0px 5px #999;-webkit-box-shadow:0px 0px 5px #999;box-shadow:0px 0px 5px #999;}
        .bg_image img{position:fixed;top:0px;left:0px;width:100%;z-index:0;}
        .wrapper{height:40%;margin: 0 0 0 10%;z-index: 10;float:left;width:80%;position: absolute;max-height: 500px;}
        .wrapper .ps_container{display:none;margin:20px auto 0px auto;position:relative;height: 100%}
        .wrapper .ps_container .ps_image_wrapper{height:100%;overflow:hidden;position:relative;margin:0 auto;-moz-box-shadow:0px 0px 5px #999;-webkit-box-shadow:0px 0px 5px #999;box-shadow:0px 0px 5px #999;}
        .wrapper .ps_container .ps_image_wrapper img{position:absolute;left:0px;top:0px;width: 100%;}
        .wrapper .ps_container .ps_prev,.ps_next{width:50px;height:59px;position:absolute;top:50%;margin-top:-40px;cursor:pointer;opacity:0.5;}
        .wrapper .ps_container .ps_prev{background:transparent url(${staticPrefix}/images/prev.png) no-repeat top center;left:-50px;}
        .wrapper .ps_container .ps_next{background:transparent url(${staticPrefix}/images/next.png) no-repeat top center;right:-50px;}
        .wrapper .ps_container .ps_prev:hover,.ps_next:hover{opacity:0.9;}
        .wrapper .ps_container ul.ps_nav{list-style:none;margin:0;padding:0;width:170px;margin:20px auto;position:relative;}
        .wrapper .ps_container ul.ps_nav li{float:left;}
        .wrapper .ps_container ul.ps_nav li a{display:block;text-indent:-9000px;width:11px;height:11px;outline:none;padding:0px 3px;background:transparent url(${staticPrefix}/images/dot.png) no-repeat top center;}
        .wrapper .ps_container ul.ps_nav li a:hover,ul.ps_nav li.selected a{background-position:50% -11px;}
        .wrapper .ps_container ul.ps_nav li.ps_preview{display:none;width:85px;height:91px;top:-95px;left:-34.5px; position:absolute;}
        .wrapper .ps_container ul.ps_nav li.ps_preview span{background:transparent url(${staticPrefix}/images/triangle.png) no-repeat top center;width:15px;height:6px;position:absolute;top:85px;left:35px;}
        .wrapper .ps_container .ps_preview_wrapper{width:75px;height:75px;border:5px solid #fff;overflow:hidden;position:relative;-moz-box-shadow:0px 0px 5px #999;-webkit-box-shadow:0px 0px 5px #999;box-shadow:0px 0px 5px #999;}
        .wrapper .ps_container .ps_preview_wrapper img{position:absolute;top:0px;left:0px;}
    </style>
</head>
<body>
    <div id="gotop" style="display: none;">
        <img alt="返回顶部" onclick="front.goTop()" src="${staticPrefix}/images/lanren_top.jpg">
    </div>
    <div class="banner">
        <h5 class="left">欢迎光临小王的空间</h5>
        <h5 class="right">如果您发现bug或有什么建议，请<a href="mailto:wang_hongmeng@126.com?subject=向小王同志提意见">联系小王</a></h5>
    </div>
    <div class="topblank"></div>
    <input type="hidden" id="isMobile" value="${isMobile}" />
    <div id="loader" class="loader"></div>
    <div class="wrapper">
        <div id="ps_container" class="ps_container">
            <div class="ps_image_wrapper">
                <c:forEach items="${indexPhotoList}" var="albumPhoto" varStatus="status">
                    <c:if test="${status.count == 1}"><img src="${staticPrefix}${albumPhoto.picPath}"/></c:if>
                </c:forEach>
            </div>
            <div class="ps_next"></div>
            <div class="ps_prev"></div>
            <ul class="ps_nav">
                <c:forEach items="${indexPhotoList}" var="albumPhoto">
                    <li><a href="${staticPrefix}${albumPhoto.picPath}" rel="${staticPrefix}${albumPhoto.picPath}"></a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="heads">
        <c:forEach items="${personList}" var="person">
            <div class="head">
                <div class="album">
                    <a href="front/${person.nick}/diary">
                        <img alt="${person.name}" src="${staticPrefix}${person.picPath}" />
                    </a>
                    <div class="caption">
                        <span class="size13">
                            <a href="front/${person.nick}/diary">${person.name}</a> - ${person.comments}
                        </span>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
<jsp:include page="../base/footer.jsp" />