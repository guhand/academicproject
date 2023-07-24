<%-- 
    Document   : myreport
    Created on : Feb 16, 2020, 2:35:17 PM
    Author     : Bhuvana-PC
--%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <!-- Basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- Mobile Metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- Site Metas -->
   <title>Life Care - Block Chain</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- Site Icons -->
   <link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
   <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <!-- Site CSS -->
   <link rel="stylesheet" href="style.css">
   <!-- Colors CSS -->
   <link rel="stylesheet" href="css/colors.css">
   <!-- ALL VERSION CSS -->
   <link rel="stylesheet" href="css/versions.css">
   <!-- Responsive CSS -->
   <link rel="stylesheet" href="css/responsive.css">
   <!-- Custom CSS -->
   <link rel="stylesheet" href="css/custom.css">
   <!-- Modernizer for Portfolio -->
   <script src="js/modernizer.js"></script>
   <!-- [if lt IE 9] -->
   </head>
   <body class="clinic_version">
       <%
        String uname = session.getAttribute("uname").toString();
        session.setAttribute("uname",uname);
        Connection con= DB.Con();
        PreparedStatement ps1=con.prepareStatement("select * from patient where name='"+uname+"' and dstatus='Complete'  ");
        ResultSet rs=ps1.executeQuery();
        String name="",mobile="",email="",date="",time="",spe="",des="",pres="",dstatus="";
        if(rs.next()){
            name=rs.getString("name");
            mobile=rs.getString("mobile");
            email=rs.getString("email");
            date=rs.getString("datee");
            time=rs.getString("timee");
            spe=rs.getString("spe");
            des=rs.getString("des");
            pres=rs.getString("pres");
            dstatus = rs.getString("dstatus");
        }
        String email1 = new String(Base64.decode(email));
        String date1 = new String(Base64.decode(date));
        String time1 = new String(Base64.decode(time));
        String spe1 = new String(Base64.decode(spe));
        String des1 = new String(Base64.decode(des));
    %>
      <!-- LOADER -->
      <div id="preloader">
         <img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
      </div>
      <!-- END LOADER -->
      <header>
         <div class="header-top wow fadeIn">
            <div class="container">
               <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
               <div class="right-header">
                  <div class="header-info">
                     <div class="info-inner">
                        <span class="iconcont" style="font-size:25px;color: black;">Block Chain Based Implementation of Electronic Medical Health Record</span>	
                     </div>                     
                  </div>
               </div>
            </div>
         </div>
         <div class="header-bottom wow fadeIn">
            <div class="container">
               <nav class="main-menu">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  </div>
				  
                  <div id="navbar" class="navbar-collapse collapse">
                     <ul class="nav navbar-nav">
                        <li><a href="patient.jsp">Home</a></li>
                        <li><a class="active" data-scroll href="myreport.jsp">My Report</a></li>
                        <li><a data-scroll href="logout.jsp">Logout</a></li>
                     </ul>
                  </div>
               </nav>
               <div class="serch-bar">
                  <div id="custom-search-input">
                     <div class="input-group col-md-12">
                        <input type="text" class="form-control input-lg" placeholder="Search" />
                        <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                        <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                        </span>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <div>
          <hr class="hr1">
          <center><br><br><br><h1>View Report</h1></center>
          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12" style="margin-left: 430px;"> 
        
                     <div class="form">
                         <%
                            if(dstatus.equals("Complete")) {
                            %>
                           <form action="pres.jsp" method="post">
                           <fieldset>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <input type="text" readonly="" id="name"  name="name" value="<%=name%>" required=""/>
                                    </div>
                                 </div>
                              </div>
                               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <input type="text" name="mobile" readonly="" id="mobile" value="<%=mobile%>" required=""/>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <input type="email" name="email" value="<%=email1%>" readonly="" required=""/>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                           <input type="text" id="spe" name="spe" value="<%=spe1%>" readonly="" required=""/>
                                    </div>
                                 </div>
                              </div><br>                               
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <textarea rows="4" name="des" readonly="" id="textarea_message" class="form-control"><%=des1%></textarea>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <textarea rows="4" name="pres" required="" id="textarea_message" class="form-control" readonly=""><%=pres%></textarea>
                                    </div>
                                 </div>
                              </div>
                           </fieldset>
                        </form> 
                            <%
                            } else {
                           %>
                           <br><br><br> <br><br> <h2>No Data Found</h2><br><br><br><br>
                         <% 
                            }
                         %>
                        
                     </div>
        <br><br><br><br><br>
      </div>
      </center>    
      </div>
      <!-- end section -->
           
      
      <div class="copyright-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="footer-text">
                     <p>© 2020 Lifecare. All Rights Reserved.</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="social">
                     <ul class="social-links">
                        <li><a href=""><i class="fa fa-rss"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                        <li><a href=""><i class="fa fa-youtube"></i></a></li>
                        <li><a href=""><i class="fa fa-pinterest"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end copyrights -->
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- all js files -->
      <script src="js/all.js"></script>
      <!-- all plugins -->
      <script src="js/custom.js"></script>
      <!-- map -->
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
   </body>
</html>

