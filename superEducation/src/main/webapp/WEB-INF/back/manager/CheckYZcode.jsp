<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String rand = (String)session.getAttribute("rand");
	String yzm=request.getParameter("yzm");
	if(yzm.equalsIgnoreCase(rand)){
		out.print(1);
	}else{
		out.print(0);
	}
%>