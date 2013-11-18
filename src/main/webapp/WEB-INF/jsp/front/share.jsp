<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
        <input type="hidden" id="nick" value="${nick}" />
        <input type="hidden" id="staticPrefix" value="${staticPrefix}" />
        <input type="hidden" id="pageSize" value="${pageSize}" />
        <div class="content"></div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript" src="${staticPrefix}/js/front.ajax.share.js"></script>