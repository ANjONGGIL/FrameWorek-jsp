<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="id" class="com.saeyan.javabeans.Memberbean"/>
◎ 자바 빈 객체 생성 후 저장된 정보 출력하기<br><br>
이름 : <%=id.getName() %><br>
아이디 : <%=id.getUserid() %>
<hr>
◎  자바 변경한 후 변경된 정보 출력하기 <br><br>
<%
id.setName("안종길");
id.setUserid("qws458");
%>
이름 :<%=id.getName() %><br>
아이디 : <%=id.getUserid() %>
</body>
</html>