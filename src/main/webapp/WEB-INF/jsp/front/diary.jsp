<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/header.jsp" />
<jsp:include page="../base/menu.jsp" />
        <td>
            <input type="hidden" ng-model="nick" value="${nick}"/>
            <div class="container-fluid" ng-controller="getDiary">
                <div ng-repeat="diary in diaryList">
                    <div class="span12" style="margin-left: 0px;">
                        <div class="alert">
                            <h4>{{ diary.content }}</h4>
                            <img src="${context}/{{ diary.pic }}" width="600" ng-hide="diary.pic == ''"/>
                            <span class="label" style="margin-top:7px;">{{ diary.entryDate }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </td>
    </tr>
</table>
<jsp:include page="../base/footer.jsp" />