<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>동물 목록</title>
</head>
<body>
	<jsp:include page="menu_animal.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">동물목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
<%-- 			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Animal animal = listOfProducts.get(i);
			%> --%>
	<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "select * from product_animal";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
	%>
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("p_fileName")%>"width=200px height=300px>
				<h3><%=rs.getString("p_id")%></h3>
				<p><%=rs.getString("p_name")%>
				<p><%=rs.getString("p_UnitPrice")%>살
				<p><a href="./product_animal.jsp?id=<%=rs.getString("p_id")%>"class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
			</div>
			<%
			}%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
