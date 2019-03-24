<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subjectform.aspx.cs" Inherits="doubtlogin.subjectform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            width: inherit;
            min-height: inherit;
            margin: 0;
            padding: 0;
        }

        .bg {
            /* The image used */
            background-image: url("./backgroundimg/img3.jpeg");
            /* Full height */
            height: 650px;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .button {
            background-color: #778899;
            border: none;
            color: black;
            padding: 20px 40px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 5px 3px;
            cursor: pointer;
            border-radius: 20px;
        }

            .button:hover {
                background-color: #f1f1f1;
            }
    </style>

</head>


<body class="bg">
    <form id="form1" runat="server">
        <div class="">
            <div class="row col-lg-12 alert alert-success">
                <div class="col-lg-3">
                    <span>student:</span><asp:Label ID="lblStudName" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col-lg-3">
                    <span>Class:</span><asp:Label ID="lblClass" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col-lg-3">
                    <span>RollNumber:</span><asp:Label ID="lblRollNumber" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col-lg-3">
                    <span>Section:</span><asp:Label ID="lblSection" runat="server" Text="Label"></asp:Label>
                </div>
            </div>

            <center >


            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Kannada" OnClick="Button1_Click1"/>
            <asp:Button ID="Button2" runat="server" CssClass="button" Text="English" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" CssClass="button" Text="Hindi" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" CssClass="button" Text="Maths" OnClick="Button4_Click"/>
            <asp:Button ID="Button5" runat="server" CssClass="button" Text="Socail science" OnClick="Button5_Click"/>
            <asp:Button ID="Button6" runat="server" CssClass="button" Text="Science" OnClick="Button6_Click"/>
            
        </center>


        </div>
    </form>
</body>
</html>
