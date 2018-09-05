<%@ Page Title="" Language="C#" MasterPageFile="~/Adm.Master" AutoEventWireup="true" CodeBehind="frmADM_Reporte.aspx.cs" Inherits="CapaPresentacion.frmADM_Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: right;
    }
    .auto-style2 {
        text-align: center;
    }
</style>
    <link href="Style1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;">
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>
            <h2 class="auto-style2">Reportes</h2>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Reporte de Usuarios:</h4>
        </td>
        <td>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Usuario" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_Usuario" HeaderText="Id_Usuario" InsertVisible="False" ReadOnly="True" SortExpression="Id_Usuario" />
                    <asp:BoundField DataField="NombreUsuario" HeaderText="NombreUsuario" SortExpression="NombreUsuario" />
                    <asp:BoundField DataField="ApellidoUsuario" HeaderText="ApellidoUsuario" SortExpression="ApellidoUsuario" />
                    <asp:BoundField DataField="UsernameUsuario" HeaderText="UsernameUsuario" SortExpression="UsernameUsuario" />
                    <asp:BoundField DataField="PasswordUsuario" HeaderText="PasswordUsuario" SortExpression="PasswordUsuario" />
                    <asp:BoundField DataField="TipoUsuario" HeaderText="TipoUsuario" SortExpression="TipoUsuario" />
                    <asp:BoundField DataField="TituloUsuario" HeaderText="TituloUsuario" SortExpression="TituloUsuario" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblUsuario]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Reporte de Relación Alumno-Materia:</h4>
        </td>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_RAM" DataSourceID="SqlDataSource2">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblRelaAlumMater]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Reporte de Relación Maestro - Materia:</h4>
        </td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_RMM" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="Id_RMM" HeaderText="Id_RMM" InsertVisible="False" ReadOnly="True" SortExpression="Id_RMM" />
                    <asp:BoundField DataField="NombreMaestroRMM" HeaderText="NombreMaestroRMM" SortExpression="NombreMaestroRMM" />
                    <asp:BoundField DataField="ApellidoMaestroRMM" HeaderText="ApellidoMaestroRMM" SortExpression="ApellidoMaestroRMM" />
                    <asp:BoundField DataField="UsuarioMaestroRMM" HeaderText="UsuarioMaestroRMM" SortExpression="UsuarioMaestroRMM" />
                    <asp:BoundField DataField="NombreCompletoRMM" HeaderText="NombreCompletoRMM" SortExpression="NombreCompletoRMM" />
                    <asp:BoundField DataField="MateriaRMM" HeaderText="MateriaRMM" SortExpression="MateriaRMM" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblRelaMaesMater]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Reporte de Horarios:</h4>
        </td>
        <td>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Hora" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="Id_Hora" HeaderText="Id_Hora" InsertVisible="False" ReadOnly="True" SortExpression="Id_Hora" />
                    <asp:BoundField DataField="NombreMaestroHora" HeaderText="NombreMaestroHora" SortExpression="NombreMaestroHora" />
                    <asp:BoundField DataField="ApellidoMaestroHora" HeaderText="ApellidoMaestroHora" SortExpression="ApellidoMaestroHora" />
                    <asp:BoundField DataField="NombreCompletoMaestroHora" HeaderText="NombreCompletoMaestroHora" SortExpression="NombreCompletoMaestroHora" />
                    <asp:BoundField DataField="UsuarioMaestroHora" HeaderText="UsuarioMaestroHora" SortExpression="UsuarioMaestroHora" />
                    <asp:BoundField DataField="MateriaHora" HeaderText="MateriaHora" SortExpression="MateriaHora" />
                    <asp:BoundField DataField="InicioHora" HeaderText="InicioHora" SortExpression="InicioHora" />
                    <asp:BoundField DataField="FinHora" HeaderText="FinHora" SortExpression="FinHora" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblHora]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4>Reporte de Materias:</h4>
        </td>
        <td>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Materia" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="Id_Materia" HeaderText="Id_Materia" InsertVisible="False" ReadOnly="True" SortExpression="Id_Materia" />
                    <asp:BoundField DataField="NombreMateria" HeaderText="NombreMateria" SortExpression="NombreMateria" />
                    <asp:BoundField DataField="CodigoMateria" HeaderText="CodigoMateria" SortExpression="CodigoMateria" />
                    <asp:BoundField DataField="SalaMateria" HeaderText="SalaMateria" SortExpression="SalaMateria" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dbAsistenciaV2ConnectionString %>" SelectCommand="SELECT * FROM [tblMateria]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <h4></h4>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
