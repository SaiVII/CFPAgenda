<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AgendarCita.aspx.vb" Inherits="Proyectojaz.AgendarCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Agendar Cita</h2>
        <asp:Panel ID="pnlAgendarCita" runat="server">
            <div class="form-group">
                <label for="ddlCliente">Cliente</label>
                <asp:DropDownList ID="ddlCliente" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtFecha">Fecha</label>
                <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="txtHora">Hora</label>
                <asp:TextBox ID="txtHora" runat="server" CssClass="form-control" TextMode="Time" />
            </div>
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar Cita" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
        </asp:Panel>
    </div>
</asp:Content>
