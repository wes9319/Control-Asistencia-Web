<%@ Page Title="" Language="C#" MasterPageFile="~/Adm.Master" AutoEventWireup="true" CodeBehind="frmADM_CRUDUsuarios.aspx.cs" Inherits="CapaPresentacion.frmADM_CRUDUsuarios" %>
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
        <td class="auto-style2">
            <h2>CRUD de Usuarios del Sistema</h2>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Nombre:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtNombreU" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnIngresoU" runat="server" OnClick="btnIngresoU_Click" Text="Ingresar" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Apellido:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtApellidoU" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnModificarU" runat="server" OnClick="btnModificarU_Click" Text="Modificar" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Usuario:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtUserU" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnEliminarU" runat="server" OnClick="btnEliminarU_Click" Text="Eliminar" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Contraseña:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtPassU" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Tipo:</h4>
        </td>
        <td>
            <asp:DropDownList ID="ddlTipoU" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoU_SelectedIndexChanged">
                <asp:ListItem Value="0">Administrador</asp:ListItem>
                <asp:ListItem Value="1">Maestro</asp:ListItem>
                <asp:ListItem Value="2">Alumno</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Título:</h4>
        </td>
        <td>
            <asp:TextBox ID="txtTituloU" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>
            <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Usuario" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_Usuario" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_Usuario" />
                    <asp:BoundField DataField="NombreUsuario" HeaderText="Nombre" SortExpression="NombreUsuario" />
                    <asp:BoundField DataField="ApellidoUsuario" HeaderText="Apellido" SortExpression="ApellidoUsuario" />
                    <asp:BoundField DataField="UsernameUsuario" HeaderText="Username" SortExpression="UsernameUsuario" />
                    <asp:BoundField DataField="PasswordUsuario" HeaderText="Password" SortExpression="PasswordUsuario" />
                    <asp:BoundField DataField="TipoUsuario" HeaderText="Tipo" SortExpression="TipoUsuario" />
                    <asp:BoundField DataField="TituloUsuario" HeaderText="Título" SortExpression="TituloUsuario" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblUsuario]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
