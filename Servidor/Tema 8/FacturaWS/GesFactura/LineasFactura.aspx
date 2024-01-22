<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LineasFactura.aspx.cs" Inherits="GesFactura.LineasFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" media="screen" href="Estilos/estilo.css">
    <title></title>
</head>
<body>
    <h1 class="titulo">Uso de Servicio Web - Cálculos factura de un artículo</h1>
    <form id="form1" runat="server">
        <div class="inicio">
            <p>
                Cantidad<asp:TextBox ID="txtCantidad" runat="server" class="txtB"></asp:TextBox>
            </p>
        </div>
        <div class="inicio">
            <p>
                Precio<asp:TextBox ID="txtPrecio" runat="server" class="txtB"></asp:TextBox>
            </p>
        </div>
        <div class="inicio">
            <p>
                Descuento(%)<asp:TextBox ID="txtDescuento" runat="server" class="txtB"></asp:TextBox>
            </p>
        </div>
        <div class="inicio">
            <p>
                Tipo de IVA(%)<asp:TextBox ID="txtTipoIVA" runat="server" class="txtB"></asp:TextBox>
            </p>
        </div>
        <div>

            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
        </div>
        <br />
        <div class="parteB">
            <p>Resultados de los cálculos:</p>
            <p>Bruto</p>
            <p>Descuento</p>
            <p>Base imponible</p>
            <p>IVA</p>
            <p>Total</p>
            <div>
                <asp:Label ID="lblBruto" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblDescuento" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblBaseImponible" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblIva" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>

            </div>
        </div>
    </form>
</body>
</html>
