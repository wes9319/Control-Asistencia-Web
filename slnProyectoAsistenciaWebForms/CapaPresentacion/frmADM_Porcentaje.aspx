<%@ Page Title="" Language="C#" MasterPageFile="~/Adm.Master" AutoEventWireup="true" CodeBehind="frmADM_Porcentaje.aspx.cs" Inherits="CapaPresentacion.frmADM_Porcentaje" %>
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
            <td class="auto-style1">
                <h2>Porcentaje de Asistencia</h2>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4>Escoja la Materia:</h4>
            </td>
            <td>
                <asp:DropDownList ID="ddlMateriaAsistADM" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4></h4>
            </td>
            <td>
                <asp:GridView ID="gvAsistenciaADM" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
