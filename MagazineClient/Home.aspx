<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MagazineClient.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter client information<br />
    
    </div>
        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="tbFirstName" ErrorMessage="Enter client's first name." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="tbLastName" ErrorMessage="Enter client's last name" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblProvince" runat="server" Text="Province"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlProvince" runat="server" AutoPostBack="True">
            <asp:ListItem>(none)</asp:ListItem>
            <asp:ListItem Value="ON">Ontario</asp:ListItem>
            <asp:ListItem Value="QC">Quebec</asp:ListItem>
            <asp:ListItem Value="AB">Alberta</asp:ListItem>
            <asp:ListItem Value="MB">Manitoba</asp:ListItem>
            <asp:ListItem Value="BC">British Columbia</asp:ListItem>
            <asp:ListItem Value="PE">Prince Edward Island</asp:ListItem>
            <asp:ListItem Value="NS">Nova Scotia</asp:ListItem>
            <asp:ListItem Value="NB">New Brunswick</asp:ListItem>
            <asp:ListItem Value="NT">Northwest Territories</asp:ListItem>
            <asp:ListItem Value="YT">Yukon</asp:ListItem>
            <asp:ListItem Value="SK">Saskatchewan</asp:ListItem>
            <asp:ListItem Value="NU">Nunavut</asp:ListItem>
            <asp:ListItem Value="NL">Newfoundland and Labrador</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPostalCode" runat="server" MaxLength="6"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPhoneNumber" runat="server" MaxLength="10"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAddCustomer" runat="server" Height="32px" OnClick="btnAddCustomer_Click" Text="Add Customer" Width="190px" />
        <br />
        <br />
    </form>
</body>
</html>
