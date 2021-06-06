<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test = "${menu.equals('manage')}">
	<input type="hidden" name="menu" value="manage"/>
</c:if>
<c:if test= "${menu.equals('search')}">
	<input type="hidden" name="menu" value="search"/>
</c:if>



<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
		�� ����
</c:if>
<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
		<a href="javascript:fncGetList('${ resultPage.currentPage-1}')">�� ����</a>
</c:if>

<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
	<a href="javascript:fncGetList('${ i }');">${ i }</a>
</c:forEach>

<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
		���� ��
</c:if>
<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
		<a href="javascript:fncGetList('${resultPage.endUnitPage+1}')">���� ��</a>
</c:if>