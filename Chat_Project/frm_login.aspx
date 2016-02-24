<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_login.aspx.cs" Inherits="Chat_Project.frm_login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="css/css3.css" rel="stylesheet" /> 
    <link href="css/test.css" rel="stylesheet" />
   <link href="css/bootstrap.min.css" rel="stylesheet" />

     <style>

        body{
           background-size: 105%;
            background-repeat:no-repeat;     
        }

         
    </style>
</head>
<body>
    <form id="form1" runat="server">
                    
              <div class="form" id="form_a" >
      
                                 <div id="signup">   
                                  <h1 class="H1">LOGIN</h1>
                                 

                                  <div class="field-wrap">
                                    <label>
                                      Email Address<span class="req">*</span>
                                    </label>
                                      <asp:TextBox ID="txt_email" runat="server" CssClass="input" ></asp:TextBox>
                                  
                                  </div>
          
                                  <div class="field-wrap">
                                    <label>
                                      Password<span class="req">*</span>
                                    </label>
                                      <asp:TextBox ID="txt_password" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                                  </div> 
                                      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                           <asp:Button ID="Button1" runat="server" Text="LOG IN" CssClass="button button-block" OnClick="Button1_Click" />                   
                                           </ContentTemplate>
                                             </asp:UpdatePanel>                         
                                </div>

                         
                          </div> 
    </form>

     <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/js3.js"></script>
</body>
</html>
