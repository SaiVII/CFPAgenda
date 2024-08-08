<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Homepage.aspx.vb" Inherits="Proyectojaz.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="AdminPanel" runat="server" Visible="false">
            <!-- Contenido para administradores -->
            <h2>Welcome, Admin!</h2>
        </asp:Panel>
        <asp:Panel ID="UserPanel" runat="server" Visible="false">
            <!-- Contenido para usuarios -->
            <h2>Welcome, User!</h2>
        </asp:Panel>
        <asp:Panel ID="GuestPanel" runat="server" Visible="false">
            <!-- Contenido para invitados -->
            <h2>Welcome, Guest!</h2>
        </asp:Panel>
    </form>
</body>
</html>
</asp:Content>
