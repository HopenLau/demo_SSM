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
		pageContext.setAttribute("myVar", "屬性：頁內有效");
		request.setAttribute("myVar", "屬性：請求有效");
		session.setAttribute("myVar", "屬性：會話有效");
		java.io.Reader reader1 = new java.io.StringReader("<h2>含有特殊字符嘅文本</h2>");
		pageContext.setAttribute("myReader1", reader1);
		java.io.Reader reader2 = new java.io.StringReader("<font color=\"red\">含有特殊字符嘅文本</font>");
		pageContext.setAttribute("myReader2", reader2);
	%>

	<c:out value="常量字符串輸出：" />
	<c:out value="鄭州 2013" />
	<br>
	<c:out value="表達式輸出：" />
	<c:out value="${2013+100}" />
	<br>
	<c:out value="默認值輸出：" />
	<c:out value="${param.name}" default="冇輸入name參數" />
	<br>
	<c:out value="重名屬性輸出：" />
	<c:out value="${myVar}" />
	<br>
	<c:out value="特殊字符輸出：" />
	<br>

	<!-- 將會輸出特殊標記 -->
	(escapeXml=true):
	<c:out value="${myReader1}" />
	<br>
	<!-- 將會輸出紅色字符串 -->
	(escapeXml=false):
	<c:out value="${myReader2}" escapeXml="false" />
	<br>

	<c:out value="${customer.address}" />

</BODY>
</HTML>
