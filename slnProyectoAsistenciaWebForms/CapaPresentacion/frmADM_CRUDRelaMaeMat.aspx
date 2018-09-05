<%@ Page Title="" Language="C#" MasterPageFile="~/Adm.Master" AutoEventWireup="true" CodeBehind="frmADM_CRUDRelaMaeMat.aspx.cs" Inherits="CapaPresentacion.frmADM_CRUDRelaMaeMat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Style1.css" rel="stylesheet" />
    <table style="width: 100%;">
    <tr>
        <td class="auto-style2">
            <h4></h4>
        </td>
        <td class="auto-style1">
            <h2>CRUD de Relación entre Maestro con Materia</h2>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <h4>Maestro:</h4>
        </td>
        <td>
            <asp:DropDownList ID="ddlMaestro" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMaestro_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="btnIngresarMM" runat="server" Text="Ingresar" OnClick="btnIngresarMM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <h4>Materia: </h4>
        </td>
        <td>
            <asp:DropDownList ID="ddlMateria" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMateria_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="btnModificarMM" runat="server" Text="Modificar" OnClick="btnModificarMM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnEliminarMM" runat="server" Text="Eliminar" OnClick="btnEliminarMM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <h4></h4>
        </td>
        <td>
            <asp:GridView ID="gvRelaMM" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_RMM" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_RMM" HeaderText="Id_RMM" InsertVisible="False" ReadOnly="True" SortExpression="Id_RMM" />
                    <asp:BoundField DataField="NombreMaestroRMM" HeaderText="NombreMaestroRMM" SortExpression="NombreMaestroRMM" />
                    <asp:BoundField DataField="ApellidoMaestroRMM" HeaderText="ApellidoMaestroRMM" SortExpression="ApellidoMaestroRMM" />
                    <asp:BoundField DataField="UsuarioMaestroRMM" HeaderText="UsuarioMaestroRMM" SortExpression="UsuarioMaestroRMM" />
                    <asp:BoundField DataField="NombreCompletoRMM" HeaderText="NombreCompletoRMM" SortExpression="NombreCompletoRMM" />
                    <asp:BoundField DataField="MateriaRMM" HeaderText="MateriaRMM" SortExpression="MateriaRMM" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblRelaMaesMater]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
