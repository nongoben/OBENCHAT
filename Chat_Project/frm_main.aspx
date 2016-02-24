<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_main.aspx.cs" Inherits="Chat_Project.frm_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/css3.css" rel="stylesheet" /> 
    <link href="css/test.css" rel="stylesheet" />
   <link href="css/bootstrap.min.css" rel="stylesheet" />

    <style>

        body{
              background-image:url("../Images/bg_main.jpg");
           background-size: 105%;
            background-repeat:no-repeat;     
        }

         
    </style>
    
</head>
   
<body >
    <form id="form1" runat="server">
        <header class="main_header" data-reg-role="prompt" >
            <div class="bar-main"> 
                <div class ="bar-right">
        <a href="frm_login.aspx" data-reg-handler="signInHandler" >LOG IN</a>           
        <a href="frm_regis.aspx" data-reg-handler="signUpHandler" >REGISTER</a>  
                </div>   
                        <div class ="bar-logo">
                            SNABLACK
                        </div>
            </div>           
      </header> 

        <asp:Image ID="Image1" runat="server" ImageUrl="Images/Logo.png" />

    </form>

    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/js3.js"></script>
    <script src="scripts/modal.js"></script>
</body>
</html>
