<%@ page contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<HTML>
<HEAD>
<TITLE>FLOCK</TITLE>
</HEAD>
<BODY>
	&lt;c:out&gt;
	<br>
	<%
		pageContext.setAttribute("myVar", "���ԣ�퓃���Ч");
		request.setAttribute("myVar", "���ԣ�Ո����Ч");
		session.setAttribute("myVar", "���ԣ���Ԓ��Ч");
		java.io.Reader reader1 = new java.io.StringReader("<h2>���������ַ����ı�</h2>");
		pageContext.setAttribute("myReader1", reader1);
		java.io.Reader reader2 = new java.io.StringReader("<font color=\"red\">���������ַ����ı�</font>");
		pageContext.setAttribute("myReader2", reader2);
	%>

	<c:out value="�����ַ���ݔ����" />
	<c:out value="���� 2013" />
	<br>
	<c:out value="���_ʽݔ����" />
	<c:out value="${2013+100}" />
	<br>
	<c:out value="Ĭ�Jֵݔ����" />
	<c:out value="${param.name}" default="��ݔ��name����" />
	<br>
	<c:out value="��������ݔ����" />
	<c:out value="${myVar}" />
	<br>
	<c:out value="�����ַ�ݔ����" />
	<br>

	<!-- ����ݔ�������ӛ -->
	(escapeXml=true):
	<c:out value="${myReader1}" />
	<br>
	<!-- ����ݔ���tɫ�ַ��� -->
	(escapeXml=false):
	<c:out value="${myReader2}" escapeXml="false" />
	<br>

	<c:out value="${customer.address}" />

</BODY>
</HTML>
