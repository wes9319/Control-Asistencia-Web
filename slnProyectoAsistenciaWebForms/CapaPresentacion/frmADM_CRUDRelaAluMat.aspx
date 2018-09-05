<%@ Page Title="" Language="C#" MasterPageFile="~/Adm.Master" AutoEventWireup="true" CodeBehind="frmADM_CRUDRelaAluMat.aspx.cs" Inherits="CapaPresentacion.frmADM_CRUDRelaAluMat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Style1.css" rel="stylesheet" />
    <table style="width: 100%;">
    <tr>
        <td class="auto-style3">
            <h4></h4>
        </td>
        <td>
            <h2 class="auto-style2">CRUD de Relación entre Alumno y Materia</h2>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4>Alumno:</h4>
        </td>
        <td>
            <asp:DropDownList ID="ddlAlumnoAM" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAlumnoAM_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="btnIngresarAM" runat="server" Text="Ingresar" OnClick="btnIngresarAM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4>Materia:</h4>
        </td>
        <td>
            <asp:DropDownList ID="ddlMateriaAM" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMateriaAM_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="btnModificarAM" runat="server" Text="Modificar" OnClick="btnModificarAM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnEliminarAM" runat="server" Text="Eliminar" OnClick="btnEliminarAM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4></h4>
        </td>
        <td>
            <asp:GridView ID="gvRelaAM" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_RAM" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_RAM" HeaderText="Id_RAM" InsertVisible="False" ReadOnly="True" SortExpression="Id_RAM" />
                    <asp:BoundField DataField="NombreAlumnoRAM" HeaderText="NombreAlumnoRAM" SortExpression="NombreAlumnoRAM" />
                    <asp:BoundField DataField="ApellidoAlumnoRAM" HeaderText="ApellidoAlumnoRAM" SortExpression="ApellidoAlumnoRAM" />
                    <asp:BoundField DataField="UsuarioAlumnoRAM" HeaderText="UsuarioAlumnoRAM" SortExpression="UsuarioAlumnoRAM" />
                    <asp:BoundField DataField="NombreCompletoRAM" HeaderText="NombreCompletoRAM" SortExpression="NombreCompletoRAM" />
                    <asp:BoundField DataField="MateriaRAM" HeaderText="MateriaRAM" SortExpression="MateriaRAM" />
                    <asp:BoundField DataField="Asistencia" HeaderText="Asistencia" SortExpression="Asistencia" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblRelaAlumMater]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
