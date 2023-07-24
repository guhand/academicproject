<%-- 
    Document   : adoc
    Created on : Feb 16, 2020, 11:41:57 AM
    Author     : Bhuvana-PC
--%>

<%@page import="java.sql.*"%>
<%@page import="DB.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String pass = request.getParameter("password");
    String spe = request.getParameter("spe");
    try{
        Connection con = DB.Con();
        PreparedStatement prs = con.prepareStatement("insert into doctor (name,pass,mobile,email,spe) values ('"+name+"','"+pass+"','"+mobile+"','"+email+"','"+spe+"') ");
        prs.executeUpdate();
        out.println("<script>"
				+"alert('Doctor Details Added Successfully.')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/receptionist.jsp");
		rd.include(request, response);
    } catch(Exception e){
        out.println("<script>"
				+"alert('Not Added. Something went wrong.')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/receptionist.jsp");
		rd.include(request, response);
    }
%>
