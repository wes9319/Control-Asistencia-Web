<%@ Page Title="" Language="C#" MasterPageFile="~/Maestro.Master" AutoEventWireup="true" CodeBehind="frmMaes_Reporte.aspx.cs" Inherits="CapaPresentacion.frmMaes_Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <h4></h4>
            </td>
            <td>
                <h2 class="auto-style1">Reporte de Asistencia</h2>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4>Escoja el Día:</h4>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4>Escoja la Materia:</h4>
            </td>
            <td>
                <asp:DropDownList ID="ddlMateriaRepMaes" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4></h4>
            </td>
            <td>
                <asp:GridView ID="gvReporteAsistMaes" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
