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

      <div class="S_friend">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="u_id" DataSourceID="SqlDataSource1" Visible="False">
              <Columns>
                  <asp:BoundField DataField="u_id" HeaderText="u_id" InsertVisible="False" ReadOnly="True" SortExpression="u_id" />
                  <asp:BoundField DataField="u_email" HeaderText="u_email" SortExpression="u_email" />
                  <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                  <asp:BoundField DataField="u_firstname" HeaderText="u_firstname" SortExpression="u_firstname" />
                  <asp:BoundField DataField="u_lastname" HeaderText="u_lastname" SortExpression="u_lastname" />
                  <asp:BoundField DataField="u_regis" HeaderText="u_regis" SortExpression="u_regis" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChatProjectConnectionString %>" SelectCommand="SELECT * FROM [tbm_user]"></asp:SqlDataSource>
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
