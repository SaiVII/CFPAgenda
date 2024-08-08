﻿<%@ Page Title="Editar Cuentas" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="EliminarCuentas.aspx.vb" Inherits="Proyectojaz.EliminarCuentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .grid-container {
            margin-top: 20px;
        }
        .grid-container table {
            width: 100%;
            border-collapse: collapse;
        }
        .grid-container th, .grid-container td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        .grid-container th {
            background-color: #f4f4f4;
        }
        .btn-delete {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-delete:hover {
            background-color: #c82333;
        }
    </style>

    <div class="container">
        <h2>Editar Cuentas</h2>
        <div class="grid-container">
            <asp:GridView ID="gvCuentas" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario">
                <Columns>
                    <asp:BoundField DataField="IdUsuario" HeaderText="ID Usuario" ReadOnly="True" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Rol" HeaderText="Rol" />
                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("IdUsuario") %>' CssClass="btn-delete" OnClick="btnEliminar_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
