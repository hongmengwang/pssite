<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>test</title>
    <c:set var="context" value="<%=request.getContextPath()%>" scope="session" />
    <script type="text/javascript" src="${context}/static/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${context}/static/js/front.index.photo.js"></script>
    <link rel="stylesheet" href="${context}/static/css/front.index.photo.css">
    <link rel="stylesheet" href="${context}/static/css/front.whole.css">
</head>
<body>
<table style="margin-left: 100px;">
    <tr>
        <td>
            <div id="loader" class="loader"></div>
            <div class="wrapper">
                <div id="ps_container" class="ps_container">
                    <div class="ps_image_wrapper">
                        <c:forEach items="${photoList}" var="photo" varStatus="status">
                            <c:if test="${status.count == 1}"><img src="${photo.pic}"/></c:if>
                        </c:forEach>
                    </div>
                    <div class="ps_next"></div>
                    <div class="ps_prev"></div>
                    <ul class="ps_nav">
                        <c:forEach items="${photoList}" var="photo">
                            <li><a href="${photo.pic}" rel="${photo.pic}"></a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </td>
        <td>
            <div style="margin-left: 100px;margin-top: 20px;">
                <ul class="thumbnails">
                    <c:forEach items="${personList}" var="person">
                        <li class="span3">
                            <div class="thumbnail">
                                <a href="front/${person.nick}/diary">
                                    <img style="border: 0 none;height: auto;max-width: 100%;vertical-align: middle;" alt="${person.name}" src="${person.pic}" />
                                </a>
                                <div class="caption">
                                    <h4 style="text-shadow:none;line-height: 20px;display: inline;"><a href="front/${person.nick}/diary">${person.name}</a></h4>
                                    <h5 style="text-shadow:none;display: inline;">- ${person.comments}</h5>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
<jsp:include page="../base/footer.jsp" />