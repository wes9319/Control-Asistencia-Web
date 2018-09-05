<%@ Page Title="" Language="C#" MasterPageFile="~/Maestro.Master" AutoEventWireup="true" CodeBehind="frmMaest_CRUDAsistencia.aspx.cs" Inherits="CapaPresentacion.frmMaest_CRUDAsistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
    </style>
    <link href="Style1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <h4></h4>
            </td>
            <td>
                <h2 class="auto-style1">CRUD de Toma de Asistencia</h2>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4>Escoja la Fecha y Hora:</h4>
            </td>
            <td>
                <asp:DropDownList ID="ddlHoraAsist" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnIngresarAsist" runat="server" Text="Ingresar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4>Escoja la Materia:</h4>
            </td>
            <td>
                <asp:DropDownList ID="ddlMateriaTomaAsist" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnModificarTomaAsist" runat="server" Text="Modificar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4></h4>
            </td>
            <td>
                <asp:GridView ID="gvTomaAsist" runat="server">
                </asp:GridView>
            </td>
            <td>
                <asp:Button ID="btnEliminarTomaAsist" runat="server" Text="Eliminar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4></h4>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
