/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import BlockChain.Block;
import DB.DB;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class update extends HttpServlet {

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
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String spe = request.getParameter("spe");
        String desc = request.getParameter("des");
        String doctor = request.getParameter("docid");
        String id = request.getParameter("id");
        email = secureData(email);
        date = secureData(date);
        time = secureData(time);
        spe =  secureData(spe);
        desc = secureData(desc);
        Block genesisBlock = new Block(email, "0");
        Block secondBlock = new Block(date, genesisBlock.hash);
        Block thirdBlock = new Block(time, secondBlock.hash);
        Block fourthBlock = new Block(spe, thirdBlock.hash);
        Block fifthBlock = new Block(desc, fourthBlock.hash);
        Connection con = DB.Con();
        HttpSession session = request.getSession();
        session.setAttribute("hgenesis", genesisBlock.hash);
        session.setAttribute("hsecond", secondBlock.hash);
        session.setAttribute("hthird", thirdBlock.hash);
        session.setAttribute("hfourth", fourthBlock.hash);
        session.setAttribute("hfifth", fifthBlock.hash);
        session.setAttribute("tgenesis", genesisBlock.getTimeStamp());
        session.setAttribute("tsecond", secondBlock.getTimeStamp());
        session.setAttribute("tthird", thirdBlock.getTimeStamp());
        session.setAttribute("tfourth", fourthBlock.getTimeStamp());
        session.setAttribute("tfifth", fifthBlock.getTimeStamp());
        try {
            PreparedStatement prs = con.prepareStatement("update patient set email='"+email+"',datee='"+date+"',timee='"+time+"',spe='"+spe+"',des='"+desc+"',doctor='"+doctor+"', status='Converted' where id='"+id+"' ");
            prs.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
                  out.println("alert(\"Datas converted successfully...\")");
                  out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/converted.jsp");
		rd.include(request, response); 
        } catch (SQLException ex) {
            Logger.getLogger(update.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
            out.println("<script type=\"text/javascript\">"); 			
                  out.println("alert(\"Datas Not converted. Something went wrong...\")");
                  out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/receptionist.jsp");
		rd.include(request, response); 
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

    private static String secureData(String spe) {
        return Base64.encode(spe.getBytes());
    }
}
