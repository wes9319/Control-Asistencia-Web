<%@ Page Title="" Language="C#" MasterPageFile="~/Adm.Master" AutoEventWireup="true" CodeBehind="frmADM_CRUDHorario.aspx.cs" Inherits="CapaPresentacion.frmADM_CRUDHorario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: right;
    }
    .auto-style2 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Style1.css" rel="stylesheet" />
    <table style="width: 100%;">
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>
            <h2 class="auto-style2">CRUD de Horario por Maestro</h2>
        </td>
        <td>
            <h1></h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Maestro:</h4>
        </td>
        <td>
            <asp:DropDownList ID="ddlMaestroH" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Materia:</h4>
        </td>
        <td>
            <asp:DropDownList ID="ddlMateriaH" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Hora de Inicio:</h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Hora de Finalización:</h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
