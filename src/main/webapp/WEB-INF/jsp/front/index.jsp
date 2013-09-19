<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head id dir="ng-app" ng-app="front">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>test</title>
    <c:set var = "context" value = "<%=request.getContextPath()%>" />
    <script type="text/javascript" src="/${context}/static/js/angular.min.js"></script>
    <%--<script type="text/javascript" src="/${context}/static/js/front-service.js"></script>--%>
    <script type="text/javascript" src="/${context}/static/js/front-controller.js"></script>
</head>
<body>
<ul ng-controller="person">
    <li ng-repeat="person in personList">
        {{person.name}},{{person.nick}},{{person.pic}},{{person.comments}}
    </li>
</ul>
</body>
</html>