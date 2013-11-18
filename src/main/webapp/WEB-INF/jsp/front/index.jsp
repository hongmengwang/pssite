<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/head.jsp" />
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
        <div class="head">
            <ul class="albums">
                <c:forEach items="${personList}" var="person">
                    <li>
                        <div class="album">
                            <a href="front/${person.nick}/diary">
                                <img alt="${person.name}" src="${staticPrefix}${person.picPath}" />
                            </a>
                            <div class="caption">
                                <span class="size14">
                                    <a href="front/${person.nick}/diary">${person.name}</a> - ${person.comments}
                                </span>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
<jsp:include page="../base/footer.jsp" />