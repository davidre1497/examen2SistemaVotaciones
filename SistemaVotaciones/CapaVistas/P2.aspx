<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarCandidatos.aspx.cs" Inherits="SistemaVotaciones.CapaVistas.RegistrarCandidatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Candidatos</title>
    <link href="../css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registro de Candidatos</h2>
            <asp:GridView ID="gvCandidatos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Candidato" OnRowDataBound="gvCandidatos_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="ID_Candidato" HeaderText="ID" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cedula" HeaderText="Cédula" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Direccion" HeaderText="Dirección" />
                    <asp:BoundField DataField="Nombre_Partido" HeaderText="Partido" />
                    <asp:BoundField DataField="Plataforma" HeaderText="Plataforma" />
                </Columns>
            </asp:GridView>
            <h3>Agregar Nuevo Candidato</h3>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre Completo: "></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCedula" runat="server" Text="Cédula: "></asp:Label>
            <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblDireccion" runat="server" Text="Dirección: "></asp:Label>
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblPartido" runat="server" Text="Partido: "></asp:Label>
            <asp:DropDownList ID="ddlPartido" runat="server"></asp:DropDownList>
            <br />
            <asp:Label ID="lblPlataforma" runat="server" Text="Plataforma: "></asp:Label>
            <asp:TextBox ID="txtPlataforma" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar Candidato" OnClick="btnAgregar_Click" />
        </div>
    </form>
</body>
</html>