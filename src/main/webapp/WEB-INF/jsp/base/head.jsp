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
        <link rel="stylesheet" href="${staticPrefix}/css/front.whole.css">
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