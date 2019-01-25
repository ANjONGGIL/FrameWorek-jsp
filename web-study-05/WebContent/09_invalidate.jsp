<%@ page import = "java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("s_name1", "세션값 1");
session.setAttribute("s_name2", "세션값 2");
session.setAttribute("s_name3", "세션값 3");

out.println("<h3> >> 세션값을 삭제하기 전 << </h3>");
Enumeration names;
names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value=session.getAttribute(name).toString();
	out.println(name+" : "+value+"<br>");
}	

// 이름을 지정하여 세션에 저장된 객체를 제거합니다.
session.invalidate();

out.print("<hr><h3> >>세션값을 삭제한 후<< <h3>");
out.print(" Q : 과연 세션 아이디는 유효 할까요?<br> ");
if(request.isRequestedSessionIdValid()==true){
	out.print(" A : 세션아이디는 유효합니다. <hr>");
}else 
	out.print(" A : 세션아이디가 유효하지 않습니다. <hr>");
%>
</body>
</html>