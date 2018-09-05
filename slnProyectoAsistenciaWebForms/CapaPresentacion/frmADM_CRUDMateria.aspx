<%@ Page Title="" Language="C#" MasterPageFile="~/Adm.Master" AutoEventWireup="true" CodeBehind="frmADM_CRUDMateria.aspx.cs" Inherits="CapaPresentacion.frmADM_CRUDMateria" %>
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
            <h2 class="auto-style2">CRUD de Materias</h2>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4>Nombre:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtNombreM" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnIngresarM" runat="server" Text="Ingresar" OnClick="btnIngresarM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4>Codigo:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtCodigoM" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnModificarM" runat="server" Text="Modificar" OnClick="btnModificarM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4>Sala/Aula:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtAulaM" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnEliminarM" runat="server" Text="Eliminar" OnClick="btnEliminarM_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <h4></h4>
        </td>
        <td>
            <asp:GridView ID="gvMateria" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Materia" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_Materia" HeaderText="Id_Materia" InsertVisible="False" ReadOnly="True" SortExpression="Id_Materia" />
                    <asp:BoundField DataField="NombreMateria" HeaderText="NombreMateria" SortExpression="NombreMateria" />
                    <asp:BoundField DataField="CodigoMateria" HeaderText="CodigoMateria" SortExpression="CodigoMateria" />
                    <asp:BoundField DataField="SalaMateria" HeaderText="SalaMateria" SortExpression="SalaMateria" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblMateria]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
