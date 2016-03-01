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

      <header class="main_header_sidein" data-reg-role="prompt" >
            <div class="bar-main_sidein"> 
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
                <div class ="Social_Friend">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/nav_icon_card_transfer.png" Height="59px" Width="84px" OnClick="ImageButton1_Click" />
                    <div class="bg_label">
                    <asp:Label ID="Label1" runat="server" Text="0" CssClass="label_Addfriend"></asp:Label>
                        </div>
                </div>

            </div>     
      </header> 

      <div class ="boxUserProfile" >
          <asp:Image ID="img_Profile" runat="server" CssClass="profile-img"  />
             
              <div class="profile-text">
                  <asp:Label ID="lbl_Username" runat="server" Text="Wow OK" Font-Size="Large"></asp:Label>             

              </div>
    <asp:FileUpload ID="fuDemo" runat="server"  Width="77px"  CssClass="file_up"  />

       <asp:Button ID="btn_up" runat="server" Text="Upload" OnClick="btn_up_Click" Width="61px" CssClass="btn_up" />
           </div>
        
      <div class="S_friend">
          <asp:GridView ID="GridView2" runat="server" Width="211px">
              <Columns>
                  <asp:TemplateField>    
                    <ItemTemplate>  
                        <asp:Button ID="btn_AcceptFriend" runat="server" Text="ADD" OnClick="btn_AcceptFriend_Click" CommandArgument = '<%# DataBinder.Eval(Container , "RowIndex") %>' />
                    </ItemTemplate>
                    </asp:TemplateField>
              </Columns>
          </asp:GridView>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" Width="211px" DataKeyNames="u_id" OnRowCommand="GridView1_RowCommand"  >
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="u_id" HeaderText="u_id" InsertVisible="False" ReadOnly="True" SortExpression="u_id" Visible="false" />
                       <asp:TemplateField>    
                    <ItemTemplate>  
                        <asp:Button ID="btn_AddFriend" runat="server" Text="ADD" OnClick="btn_AddFriend_Click" CommandArgument = '<%# DataBinder.Eval(Container , "RowIndex") %>' />
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChatProjectConnectionString %>" SelectCommand="sp_SearchFriend" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txt_searchFriend" Name="value1" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>

        <div class="chat-sidebar">
  <div class="sidebar-name" data-user-id="1">Test1</div>
  <div class="sidebar-name" data-user-id="2">Test2</div>
  <div class="sidebar-name" data-user-id="3">Test3</div>
  <div class="sidebar-name" data-user-id="4">Test4</div>
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
