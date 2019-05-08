<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<title>Insert title here</title>
</head>

<body>

	<form name="updatePurchase" action="/purchase/updatePurchase?tranNo=${purchase.tranNo }"
		method="post">

		������ ���� ���Ű� �Ǿ����ϴ�.

		<table border=1>
			<tr>
				<td>��ǰ��ȣ</td>
				<td>${purchase.purchaseProd.prodNo}</td>
				<td></td>
			</tr>
			<tr>
				<td>�����ھ��̵�</td>
				<td>${purchase.buyer.userId}</td>
				<td></td>
			</tr>
			<tr>
				<td>���Ź��</td>

		<c:set var="code" value="${fn:substring(purchase.paymentOption,0,1)}"/>
		
		<c:if test="${code eq 1 }">
				<td>���ݱ���</td>
		</c:if>
		<c:if test="${code eq 2 }">
				<td>�ſ뱸��</td>
		</c:if>
				<td></td>
								
			</tr>
			<tr>
				<td>�������̸�</td>
				<td>${purchase.receiverName}</td>
				<td></td>
			</tr>
			<tr>
				<td>�����ڿ���ó</td>
				<td>${purchase.receiverPhone}</td>
				<td></td>
			</tr>
			<tr>
				<td>�������ּ�</td>
				<td>${purchase.divyAddr}</td>
				<td></td>
			</tr>
			<tr>
				<td>���ſ�û����</td>
				<td>${purchase.divyRequest}</td>
				<td></td>
			</tr>
			<tr>
				<td>����������</td>
				<td>${purchase.divyDate}</td>
				<td></td>
			</tr>
		</table>
	</form>

</body>
</html>