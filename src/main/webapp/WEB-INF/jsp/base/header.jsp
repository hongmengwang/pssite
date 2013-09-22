<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>test</title>
        <c:set var="context" value="<%=request.getContextPath()%>" scope="session" />
        <script type="text/javascript" src="${context}/static/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${context}/static/css/bootstrap.min.css">
        <link rel="stylesheet" href="${context}/static/css/style2.css">
        <link rel="stylesheet" href="${context}/static/css/whole.css">
    </head>
    <body>