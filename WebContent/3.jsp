<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.model.UserModel"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index3</title>
</head>
<body>
<% 
UserModel user = (UserModel)request.getSession().getAttribute("user"); 
String userid = "";
String username = "";
if (user != null) {
	userid = user.getUserid();
	username = user.getUsername();
}
%>
UserModel.userid: <%=userid %><br/>
UserModel.username: <%=username %>
<br/><br/>
Session.ID: <%=request.getSession().getId() %> 
<br/><br/>
<a href="index.jsp">index</a><br/><br/>
<a href="2.jsp">index2</a><br/><br/>

	服务器信息:

    <%
      System.out.println("["+request.getLocalAddr()+":"+ request.getLocalPort()+"]");
      out.println("<br>["+request.getLocalAddr()+":" +request.getLocalPort()+"] <br>"); 
    %>
    
    session分发:
    <%
        session.setAttribute("name","dennisit");
        System.out.println("[session分发] session id:"+session.getId());
        out.println("<br>[session分发] session id： " + session.getId()+"<br>");
    %>
    
</body>
</html>