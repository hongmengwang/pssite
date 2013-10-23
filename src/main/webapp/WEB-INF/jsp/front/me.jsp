<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<div id="usual1" class="usual">
    <ul>
        <li><a href="#tab1" class="selected">Tab 1</a></li>
        <li><a href="#tab2">Tab 2</a></li>
        <li><a href="#tab3">Tab 3</a></li>
    </ul>
    <div id="tab1">This is tab 1.</div>
    <div id="tab2">More content in tab 2.</div>
    <div id="tab3">Tab 3 is always last!</div>
</div>

<script type="text/javascript">
    $("#usual1 ul").idTabs();
</script>
<jsp:include page="../base/footer.jsp" />
