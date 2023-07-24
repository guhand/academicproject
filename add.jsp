<%-- 
    Document   : add
    Created on : Feb 16, 2020, 10:53:55 AM
    Author     : Bhuvana-PC
--%>

<%@page import="java.sql.*"%>
<%@page import="DB.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String spe = request.getParameter("spe");
    try{
        Connection con = DB.Con();
        PreparedStatement prs = con.prepareStatement("insert into patient (name,mobile,email,datee,timee,spe,status) values ('"+name+"','"+mobile+"','"+email+"','"+date+"','"+time+"','"+spe+"','Initial') ");
        prs.executeUpdate();
        out.println("<script>"
				+"alert('Appointment Sent Successfully.')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
		rd.include(request, response);
    } catch(Exception e){
        out.println("<script>"
				+"alert('Appointment Not Sent. Something went wrong.')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
		rd.include(request, response);
    }
%>
