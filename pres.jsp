<%-- 
    Document   : pres
    Created on : Feb 16, 2020, 2:24:40 PM
    Author     : Bhuvana-PC
--%>

<%@page import="java.sql.*"%>
<%@page import="DB.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String pres = request.getParameter("pres");
    try{
        Connection con = DB.Con();
        PreparedStatement prs = con.prepareStatement("update patient set pres='"+pres+"',dstatus='Complete' where id='"+id+"' ");
        prs.executeUpdate();
        out.println("<script>"
				+"alert('Prescription Updated Successfully.')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/doctor.jsp");
		rd.include(request, response);
    } catch(Exception e){
        out.println("<script>"
				+"alert('Not updated. Something went wrong.')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/doctor.jsp");
		rd.include(request, response);
    }
%>
