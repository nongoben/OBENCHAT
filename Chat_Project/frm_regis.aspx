<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_regis.aspx.cs" Inherits="Chat_Project.frm_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/css3.css" rel="stylesheet" /> 
    <link href="css/test.css" rel="stylesheet" />
   <link href="css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body{
            
            background-color:WhiteSmoke;        

        }


    </style>
</head>


<body>
    <form id="form1" runat="server">
  
              <div class="form" id="form_a" >
      
                                 <div id="signup">   
                                  <h1 class="H1">Sign Up for Free</h1>
                                  <div class="top-row">
                                    <div class="field-wrap">
                                      <label>
                                        First Name<span class="req">*</span>
                                      </label>
                                        <asp:TextBox ID="txt_FName" runat="server" CssClass="input"  method="post" autocomplete="off"></asp:TextBox>
                                    </div>
        
                                    <div class="field-wrap">
                                      <label>
                                        Last Name<span class="req">*</span>
                                      </label>
                                        <asp:TextBox ID="txt_LName" runat="server" CssClass="input"  ></asp:TextBox>
                                    </div>
                                  </div>

                                  <div class="field-wrap">
                                    <label>
                                      Email Address<span class="req">*</span>
                                    </label>
                                      <asp:TextBox ID="txt_email" runat="server" CssClass="input" ></asp:TextBox>
                                  
                                  </div>
              
          
                                  <div class="field-wrap">
                                    <label>
                                      Set A Password<span class="req">*</span>
                                    </label>
                                      <asp:TextBox ID="txt_password" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                                  </div>  
                                                                                                   
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                       <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                                           
                                           <asp:Button ID="btn_regis1" runat="server" Text="Get Started" OnClick="btn_regis1_Click" CssClass="button button-block"
                                               data-target="#myModal2" data-toggle="modal" />
         
                       
                    </ContentTemplate> </asp:UpdatePanel>  
                                                                                                    
                                </div>

                         
                          </div>              
        
         <div id="myModal2" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" >
                
          <div class="modal-dialog" >
                  
                            <div class="form" id="form2">
                            <h1 class="H1"> Code Verify</h1>
                                <div class="top-row" id="top-rowCode">
                                    <center>
                               <div class="field-wrap">
                                    <label>
                                      Code Verify<span class="req">*</span>
                                    </label>      
                                         <asp:TextBox ID="txt_code" runat="server" CssClass="input"></asp:TextBox>  
                                  </div>
                                        </center>
                                 <div class="field-wrap" >
                                     
                                    </div>
      </div>
                                 <ul class="tab-group2">
                              
                                     <asp:UpdatePanel ID="UpdatePanel2" runat="server"> 
                                         <ContentTemplate>
                                    

                                   <asp:Button ID="btn_insert" runat="server" Text="GO" CssClass="button button-block" OnClick="btn_insert_Click"  />
                         
                                                  </ContentTemplate>
                                     </asp:UpdatePanel>
                                   </ul>
                                  <p class="forgot"><a href="#" data-dismiss="modal">Back</a></p>
                            </div>          

          </div>

         </div>                                                                                
                            
    </form>
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/js3.js"></script>
    <script src="scripts/modal.js"></script>
</body>
</html>
