<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Licenta._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >

    
     <!-- Template Main CSS File -->
  <link href="Content/style.css" rel="stylesheet">

<body>
      <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-left">

    <div class="container">
      <div class="row">
        <div class="col-lg-4 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
          <h1>O solutie creativa si eleganta</h1>
          
          <div class="d-flex">
                   <style>

.form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #80bdff;
    outline: 0;
    box-shadow: 0 0 0 0rem rgba(0, 123, 255, .25)
}

.btn-secondary:focus {
    box-shadow: 0 0 0 0rem rgba(108, 117, 125, .5)
}

.close:focus {
    box-shadow: 0 0 0 0rem rgba(108, 117, 125, .5)
}

.mt-200 {
    margin-top: 30px
}

.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
    </style>
    <body>
        
        <link href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/smart_wizard.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/smart_wizard_theme_arrows.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/jquery.smartWizard.min.js"></script>
        <script src="bootstrap4-input-clearer.js"></script>
<div class="container">
    <div class="row d-flex justify-content-center mt-200"> 
         <asp:Button runat="server" class="btn btn-get-started" ID="Button1" Text="Aplica aici" OnClick="ButtonRedirect_Click" />
    </div> 
    </div>
         
    </body>
   
            <%--<a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>--%>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img">
          <img src="hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section>
    <!-- End Hero -->
        <%--<h1 style="width: 881px">ASP.NET</h1>
        <p class="lead" style="margin-left: 203">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
        <p>&nbsp;</p>--%>
    
   <%-- <link href="Content/Default.css" rel="stylesheet" />
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-2"></div>
        <div class="col-sm-2"> </div>
        <div class="col-sm-2"> </div>
        <div class="col-md-4">
           
            <h2 style="width: 400px" style="font-family:'Encode Sans'">Start your journey
            </h2>

        </div>
    </div>
    <div class="row">
        <div class="col-sm-2"> </div>
        <div class="col-sm-2"> </div>
        <div class="col-sm-2"> </div>
        <div class="col-sm-2"> </div>
        <div class="col-sm-2">
            <p>
                    <head>
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <style>
                    bodyy {
                      font-family: 'Courier New';
                    }

                    .flip-card {
                      background-color: transparent;
                      width: 150px;
                      height: 80px;
                      perspective: 1000px;
                    }

                    .flip-card-inner {
                      position: relative;
                      width: 100%;
                      height: 100%;
                      text-align: center;
                      transition: transform 0.6s;
                      transform-style: preserve-3d;
                      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                    }

                    .flip-card:hover .flip-card-inner {
                      transform: rotateY(180deg);
                    }

                    .flip-card-front, .flip-card-back {
                      position: absolute;
                      width: 100%;
                      height: 100%;
                      -webkit-backface-visibility: hidden;
                      backface-visibility: hidden;
                    }

                    .flip-card-front {
                      background-color: #bbb;
                      color: black;
                    }

                    .flip-card-back {
                      background-color: #ffffff;
                      color: black;
                      transform: rotateY(180deg);
                    }
                    </style>
                    </head>
                    <bodyy>
                        
  
                    <div class="flip-card" style="margin-left: 500">
                      <div class="flip-card-inner">
                        <div class="flip-card-front">
                          <img src="pf.png" alt="Avatar" style="width:150px;height:80px;">
                        </div>
                        <div class="flip-card-back">
                           <br><p>PERSONAL</p>
                                <p>PLAN</p>
                        </div>
                      </div>
                    </div>
                         
            </p>
           
        </div>
        <div class="col-sm-2">
            <p>
                    <head>
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <style>
                    bodyy {
                      font-family: 'Courier New' ;
                    }

                    .flip-card {
                      background-color: transparent;
                      width: 150px;
                      height: 80px;
                      perspective: 1000px;
                    }

                    .flip-card-inner {
                      position: relative;
                      width: 100%;
                      height: 100%;
                      text-align: center;
                      transition: transform 0.6s;
                      transform-style: preserve-3d;
                      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                    }

                    .flip-card:hover .flip-card-inner {
                      transform: rotateY(180deg);
                    }

                    .flip-card-front, .flip-card-back {
                      position: absolute;
                      width: 100%;
                      height: 100%;
                      -webkit-backface-visibility: hidden;
                      backface-visibility: hidden;
                    }

                    .flip-card-front {
                      background-color: #bbb;
                      color: black;
                    }

                    .flip-card-back {
                      background-color: #ffffff;
                      color: black;
                      transform: rotateY(180deg);
                    }
                        .auto-style9 {
                            width: 415px;
                            height: 357px;
                        }
                    </style>
                    </head>
                    <bodyy>

  
                    <div class="flip-card" style="margin-left: 500">
                      <div class="flip-card-inner">
                        <div class="flip-card-front">
                          <img src="pj.png" alt="Avatar" style="width:150px;height:80px;">
                        </div>
                        <div class="flip-card-back">
                          <br><p>BUSINESS</p> 
                              <p>PLAN</p>
                        </div>
                      </div>
                    </div>
            </p>

        </div>
      
        <%--<div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>--%>
 <%--   </div>
      <div class="row">
        <div class="col-sm-2"> </div>
        <div class="col-sm-2"> </div>
        <div class="col-sm-2"> </div>
        <div class="col-sm-2"> </div>
        <div class="col-sm-4">
            <img src="choice.png" class="auto-style9">
        </div>
       
     </div>--%>
</body>
</asp:Content>
