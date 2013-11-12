<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/head.jsp" />
    <div id="loader" class="loader"></div>
    <div class="wrapper" style="margin: 0 0 0 100px;z-index: 10;float:left">
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
    <div style="margin:0 0 0 100px;">
        <ul class="thumbnails">
            <c:forEach items="${personList}" var="person">
                <li class="span3" style="margin-left: 200px;margin-top: 20px;">
                    <div class="thumbnail">
                        <a href="front/${person.nick}/diary">
                            <img style="border: 0 none;height: auto;max-width: 100%;vertical-align: middle;" alt="${person.name}" src="${staticPrefix}${person.picPath}" />
                        </a>
                        <div class="caption">
                            <h5 style="text-shadow:none;line-height: 20px;display: inline;">
                                <a href="front/${person.nick}/diary">${person.name}</a>
                            </h5>
                            <h5 style="text-shadow:none;display: inline;">- ${person.comments}</h5>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>
<jsp:include page="../base/footer.jsp" />