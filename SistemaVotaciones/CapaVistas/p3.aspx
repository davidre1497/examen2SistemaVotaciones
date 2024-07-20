<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="SistemaVotaciones.CapaVistas.Resultados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resultados de Votaciones</title>
    <link href="../css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Resultados de Votaciones</h2>
            <asp:GridView ID="gvResultados" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Candidato" />
                    <asp:BoundField DataField="Nombre_Partido" HeaderText="Partido" />
                    <asp:BoundField DataField="Votos" HeaderText="Número de Votos" />
                    <asp:BoundField DataField="Porcentaje" HeaderText="Porcentaje" DataFormatString="{0:P2}" />
                </Columns>
            </asp:GridView>
            <h3>Ganador</h3>
            <asp:Label ID="lblGanador" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>