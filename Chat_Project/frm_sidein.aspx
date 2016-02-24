<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_sidein.aspx.cs" Inherits="Chat_Project.frm_sidein" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <link href="Css/cssBoxchat.css" rel="stylesheet" />
    <link href="Css/cssSideIn.css" rel="stylesheet" />
    <link href="Css/css3.css" rel="stylesheet" />
    <link href="Css/test.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">

      <header class="main_header" data-reg-role="prompt" >
            <div class="bar-main"> 
                <div class ="bar-right-inside">          
                    <asp:Button ID="btn_logout" runat="server" Text="LOGOUT" OnClick="btn_logout_Click" /> 
                    <asp:Button ID="btn_searchFriend" runat="server" Text="Search" OnClick="btn_searchFriend_Click" /> 
                </div> 
               
                <div class ="bar-center"> 
                    <asp:TextBox ID="txt_searchFriend" runat="server" CssClass="form-control" ></asp:TextBox>
                    
                    </div>   
                        <div class ="bar-logo-inside">
                            SNABLACK
                        </div>
            </div>     
      </header> 

        <div class="S_friend">
            <asp:Label ID="Label1" runat="server" Text="TEST"></asp:Label>

        </div>

        <div class="chat-sidebar">
  <div class="sidebar-name" data-user-id="1">Test1</div>
  <div class="sidebar-name" data-user-id="2">Test2</div>
  <div class="sidebar-name" data-user-id="3">Test3</div>
  <div class="sidebar-name" data-user-id="4">Test4</div>
</div>

   
      <div class ="boxUserProfile" >
          <asp:Image ID="img_Profile" runat="server" CssClass="profile-img"  />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <div class="profile-text">
                  &nbsp;<asp:Label ID="lbl_Username" runat="server" Text="Wow OK" Font-Size="Large"></asp:Label>      
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
 
                  <br />
              </div>
    <asp:FileUpload ID="fuDemo" runat="server"  Width="77px"  CssClass="file_up"  />

       <asp:Button ID="btn_up" runat="server" Text="Upload" OnClick="btn_up_Click" Width="61px" CssClass="btn_up" />
           </div>

      
            <asp:TextBox ID="txtName" runat="server" Visible="False" />
  


          <div class="chat-sidebar">
              <div class="sidebar-name" data-user-id="1">Test1</div>
              <div class="sidebar-name" data-user-id="2">Test2</div>
              <div class="sidebar-name" data-user-id="3">Test3</div>
              <div class="sidebar-name" data-user-id="4">Test4</div>
            </div>

<div class="chatbox-wrapper">
  <div class="chatbox-flex-wrapper">
    
    <div class="chatbox" data-user-id="1">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="1">&#x2716;</button>
        <span>Test1</span>
      </div>
      <div class="chattexts">
        <span class="chattext-from">Hi</span>
        <span class="chattext-for">1234</span>
        <span class="chattext-from">Oh.</span>
        <span class="chattext-for">What</span>
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>
    
    <div class="chatbox" data-user-id="2">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="2">&#x2716;</button>
        <span>Test2</span>
      </div>
      <div class="chattexts">
         <span class="chattext-from">Hi</span>
        <span class="chattext-for">1234</span>
        <span class="chattext-from">Oh.</span>
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>
    
    <div class="chatbox" data-user-id="3">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="3">&#x2716;</button>
        <span>Test3</span>
      </div>
      <div class="chattexts">
       <span class="chattext-from">Hi</span>
        <span class="chattext-for">1234</span>
        <span class="chattext-from">Oh.</span>
        <span class="chattext-for">What</span>
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>

    <div class="chatbox" data-user-id="4">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="4">&#x2716;</button>
        <span>Test4</span>
      </div>
      <div class="chattexts">
         <span class="chattext-from">Hi</span>
        <span class="chattext-for">1234</span>
      
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>
    
  </div>
</div>

           
        
    </form>

    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jsBoxChat.js"></script>
    <script src="scripts/jsBoxfriend.js"></script>
</body>
</html>
