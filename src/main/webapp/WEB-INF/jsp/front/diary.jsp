<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/header.jsp" />
<jsp:include page="../base/menu.jsp" />
        <td>
            <div class="container-fluid">
                <c:forEach items="${diaryList}" var="diary">
                    <div>
                        <div class="span12" style="margin-left: 0px;">
                            <div class="alert">
                                <h4>${diary.content}</h4>
                                <c:if test="${diary.pic != null && diary.pic != ''}">
                                    <img src="${context}/${diary.pic}" width="400"/>
                                </c:if>
                                <span class="label" style="margin-top:7px;">${diary.entryDate}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </td>
    </tr>
</table>
<jsp:include page="../base/footer.jsp" />