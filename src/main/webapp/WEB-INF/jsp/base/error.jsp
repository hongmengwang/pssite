<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="menu.jsp" />
        <div class="content">
            <span class="error">
                不要瞎搞!!
            </span>
        </div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript">
    function index(){
        window.location.href='http://wanghongmeng.com';
    }
    window.setTimeout("index()",3000);
</script>