<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MagazineClient.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
&nbsp;
        <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="tbUsername" ErrorMessage="Username is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;
        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="bntLogin" runat="server" OnClick="bntLogin_Click" Text="Login" Width="133px" />
        <br />
        <asp:Label ID="lblInvalid" runat="server" ForeColor="Red" Text="Invalid Username and/or Password." Visible="False"></asp:Label>
    </form>
</body>
</html>
