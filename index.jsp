<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test</title>
</head>
<body>
	<p>こんにちは！</p>
	<% out.println(new java.util.Date()); %>
	
	<p style="font-weight:bold;">演習1</p>
	<%!
	static int add(int a,int b){
		return a+b;
	}
	%>
	<p>1+2=<%=add(1,2) %></p>
	<p>1+2=<%=add(3,4) %></p>
	
	<p style="font-weight:bold;">演習2</p>
	<%!	static int countA=0; %>
	<%
		int countB=0;
		countA++;
		countB++;
	%>
	<p>宣言による変数 countA=<%=countA %></p>
	<p>スクリプトレットによる変数 countB=<%=countB %></p>
	
	<p style="font-weight:bold;">演習3</p>
	<p><% out.println(Math.random()); %></p>
	<p><%=Math.random() %></p>
	
	<p style="font-weight:bold;">演習4</p>
	<form method="post" action="greeting-out.jsp">
		<input type="text" name="user">
		<input type="submit" value="確定">
	</form>
	
</body>
</html>