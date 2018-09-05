<%@ Page Title="" Language="C#" MasterPageFile="~/Alumno.Master" AutoEventWireup="true" CodeBehind="frmAlum_Consulta.aspx.cs" Inherits="CapaPresentacion.frmAlum_Consulta" %>
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
                <h2>Consulta de Asistencia</h2>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4>Escoja el Día:</h4>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnConsultaAsistAlum" runat="server" Text="Consultar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4>Escoja la Hora:</h4>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <h4></h4>
            </td>
            <td>
                <asp:GridView ID="gvConsultaAsistAlum" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
