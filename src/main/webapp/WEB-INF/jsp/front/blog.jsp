<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
        <div class="content">
            <iframe onload="initHeight()" src="http://blog.wanghongmeng.com/${nick}" id="Iframe" frameborder="0" scrolling="auto" width="100%" style="overflow-x: none;"></iframe>
        </div>
<jsp:include page="../base/footer.jsp" />
<script type="text/javascript">
    function initHeight(){
        var height = $(".content").parent().parent().css("height");
        height = height.substr(0,height.length - 2  ) - 50;
        $("#Iframe").attr("height",height);
    }
</script>