<%-- 
    Document   : converted
    Created on : Feb 16, 2020, 1:09:27 PM
    Author     : Bhuvana-PC
--%>

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
        String hgenesis = session.getAttribute("hgenesis").toString();
        String hsecond = session.getAttribute("hsecond").toString();
        String hthird = session.getAttribute("hthird").toString();
        String hfourth = session.getAttribute("hfourth").toString();
        String hfifth = session.getAttribute("hfifth").toString();        
        String tgenesis = session.getAttribute("tgenesis").toString();
        String tsecond = session.getAttribute("tsecond").toString();        
        String tthird = session.getAttribute("tthird").toString();
        String tfourth = session.getAttribute("tfourth").toString();
        String tfifth = session.getAttribute("tfifth").toString();
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
                        <li><a class="active" href="receptionist.jsp">Home</a></li>
                        <li><a data-scroll href="adddoctor.jsp">Add Doctor</a></li>
                        <li><a data-scroll href="viewdoctor.jsp">View Doctors</a></li>
                        <li><a class="active" data-scroll href="viewapp.jsp">View Appointment</a></li>
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
      <br><br><br><br><br>
      <!-- end section -->
      <hr class="hr1">
      <div style="margin-left: 260px;">
      <h1 style="color:greenyellow">Genesis Block</h1>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Hash Value </span><%=hgenesis%> <br>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Time Stamp </span><%=tgenesis%> <br><br>
            
      <h1 style="color:greenyellow">Second Block</h1>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Hash Value </span><%=hsecond%> <br>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Time Stamp </span><%=tsecond%> <br><br>
       
      <h1 style="color:greenyellow">Third Block</h1>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Hash Value </span><%=hthird%> <br>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Time Stamp </span><%=tthird%> <br><br>
            
      <h1 style="color:greenyellow">Fourth Block</h1>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Hash Value </span><%=hfourth%> <br>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Time Stamp </span><%=tfourth%> <br><br>
            
      <h1 style="color:greenyellow">Fifth Block</h1>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Hash Value </span><%=hfifth%> <br>
            &emsp;&emsp;<span style="font-weight: 600;font-size: 20px;color:black">Time Stamp </span><%=tfifth%> <br><br>
      </div>      
      <hr class="hr1">
      
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

