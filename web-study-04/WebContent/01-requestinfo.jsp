<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
컨택스트 패스 : <%=request.getContextPath() %>
요청 방식 : <%=request.getMethod() %>
요청한 URL : <%= request.getRequestURL() %>
요청한 URI : <%=request.getRequestURI() %>
서버의 이름 : <%=request.getServerName() %>
프로토콜 : <%=request.getProtocol() %>
</body>
</html>