<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<iframe src="http://blog.wanghongmeng.com/${nick}" id="Iframe" frameborder="0" scrolling="auto" width="100%" height="540px" style="overflow-x: none;"></iframe>
<%--<iframe src="./ue.html" id="Iframe" frameborder="0" scrolling="no" style="border:0px;width:1000px;" onload="autoHeight();"></iframe>--%>
<%--<script type="text/javascript">--%>
    <%--function autoHeight(){--%>
        <%--var iframe = document.getElementById("Iframe");--%>
        <%--if(iframe.Document){//ie自有属性--%>
            <%--iframe.style.height = iframe.Document.documentElement.scrollHeight;--%>
        <%--}else if(iframe.contentDocument){//ie,firefox,chrome,opera,safari--%>
            <%--iframe.height = iframe.contentDocument.body.offsetHeight ;--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>
<jsp:include page="../base/footer.jsp" />