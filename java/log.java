/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DB.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bhuvana-PC
 */
public class log extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String uname,pass,type;
        uname=request.getParameter("name");
        pass=request.getParameter("password");   
        type=request.getParameter("type");
        HttpSession session = request.getSession();
        session.setAttribute("uname", uname);
        Connection con = DB.Con();
        if(type.equals("Receptionist")){
            if(uname.equals("Re") && pass.equals("Re")) { 
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Welcome "+type+"\")");
                out.println("</script>");		
                RequestDispatcher rd=request.getRequestDispatcher("receptionist.jsp");    
                rd.include(request, response);
            } else {
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Please Check Receptionist Username and Password.\")");
                out.println("</script>");		
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");    
                rd.include(request, response);                    
            } 
        } else if(type.equals("Doctor")){
            try {
                PreparedStatement prs = con.prepareStatement("select * from doctor where name='"+uname+"' and pass='"+pass+"' ");
                ResultSet rs = prs.executeQuery();
                if(rs.next()){
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Welcome "+type+"\")");
                    out.println("</script>");		
                    RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");    
                    rd.include(request, response);
                } else {
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Please Check Your Username and Password.\")");
                    out.println("</script>");		
                    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");    
                    rd.include(request, response);                    
                }
            } catch(Exception ex){
                System.out.println(ex);
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Error Occured..\")");
                out.println("</script>");
            }              
        } else if(type.equals("Patient")){
             try {
                PreparedStatement prs = con.prepareStatement("select * from patient where name='"+uname+"' and mobile='"+pass+"' ");
                ResultSet rs = prs.executeQuery();
                if(rs.next()){
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Welcome "+type+"\")");
                    out.println("</script>");		
                    RequestDispatcher rd=request.getRequestDispatcher("patient.jsp");    
                    rd.include(request, response);
                } else {
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"Please Check Your Username and Password.\")");
                    out.println("</script>");		
                    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");    
                    rd.include(request, response);                    
                }
            } catch(Exception ex){
                System.out.println(ex);
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Error Occured..\")");
                out.println("</script>");
            }
        }               
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
