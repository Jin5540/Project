<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	out.println(id);
	out.println(pw);
	
	if(id.equals("admin@admin.com") && pw.equals("1234")){
		session.setAttribute("id",id);
		response.sendRedirect("BoardServlet?command=board_list");
	}else{
		out.println("로그인실패");
		response.sendRedirect("error.jsp");
}
		%>
		

</body>
</html>