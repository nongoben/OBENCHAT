<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testUpload.aspx.cs" Inherits="Chat_Project.testUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:FileUpload ID="fuDemo" runat="server" />
       <asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click" />
    </div>
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        
    </form>
</body>
</html>
