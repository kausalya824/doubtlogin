<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentportal.aspx.cs" Inherits="doubtlogin.questionform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<style>
    body {
        width: inherit;
        min-height: inherit;
        margin: 0;
        padding: 0;
    }

    .bg {
        /* The image used */
        background-image: url("./backgroundimg/img5.jpg");
        /* Full height */
        height: 650px;
        /* Center and scale the image nicely */
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>

<body class="bg">
    <form id="form1" runat="server">
        <div class="">

            <div class="container">
                <br />
                <br />
                <br />
                <br />

                <center>
                  <h1 style="color:white">Students portal</h1>               
      <h3 style="color:red">
     <asp:Label ID="lblSubject" runat="server"></asp:Label>
 </h3>
  </center>


                <br />

                <center>
                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open query page</button></center>
                <asp:Button ID="enter" runat="server" onclick="Unnamed_Click"/>
                
                            <div>

                                <asp:Label ID="Label2" runat="server" Text="Question"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>



                                <asp:Label ID="Label1" runat="server" Text="Type Other Queries:" Visible="False"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox1" TextMode="MultiLine" Rows="4" runat="server" Visible="False"></asp:TextBox>


                            </div>
                            <div class="modal-footer">



                                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClientClick="javascript:formdata();" OnClick="btnsubmit_Click1" />


                                <asp:Label ID="lblmsg" runat="server">   </asp:Label>



                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
