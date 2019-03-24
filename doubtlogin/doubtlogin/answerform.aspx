<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="answerform.aspx.cs" Inherits="doubtlogin.answerform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Content\bootstrap.min.css" />
</head>

<body class ="bg">
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-sm-4 col-lg-4 col-xs-4 textP"><p style="color:white"> Subject</p> </div>
           
            <div class="col-sm-4 col-lg-4 col-xs-4 textP"><p style="color:white">  Question</p> </div>
             
            <div class="col-sm-4 col-lg-4 col-xs-4 textP"><p style="color:white">  Answer</p> </div>
            
        </div>
       <div class="row">
            
            <div class="col-sm-4 col-lg-4 col-xs-4 textP"><p style="color:white"><asp:Label ID="Label1" runat="server" Text="label"></asp:Label></p> </div>
            
           <div class="col-sm-4 col-lg-4 col-xs-4 textP"><p style="color:white"><asp:Label ID="Label2" runat="server" Text="label"></asp:Label></p> </div>
            
           <div class="col-sm-4 col-lg-4 col-xs-4 textP"><p style="color:white"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </p> </div>

        </div>
       
        
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" />


    </form>
</body>
</html>

 <style>

    body {
          width: inherit;
          margin: 0;
          min-height : inherit;
          padding: 0;
     }
     .textP{
         text-align: center;
         font-size: 20px;
     }

    .bg {
        /* The image used */
        background-image: url("backgroundimg/img3.jpeg");
        /* Full height */
        height:650px;
        /* Center and scale the image nicely */
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
      }
  </style>
