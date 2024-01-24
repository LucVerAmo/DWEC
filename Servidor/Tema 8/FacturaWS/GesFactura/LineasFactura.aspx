<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LineasFactura.aspx.cs" Inherits="GesFactura.LineasFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" media="screen" href="./Estilos/estilo.css">
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
        </div>
        <div class="parteM">
            <div style="height: 0px;">
                <p style="
    padding: unset;
    height: 0px;
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
    margin-right: 10px;
">Bruto</p>
                
            </div>
             <div style="height: 0px;">
                 <p style="
    margin-top: 0px;
    margin-bottom: 0px;
    height: 0px;
    margin-left: 100px;
">Descuento</p>
                 
             </div>
            <div style="height: 0px;">
                <p style="
    margin-left: 220px;
    margin-top: 0px;
    margin-bottom: 0px;
    height: 0px;
">Base imponible</p>
                
            </div>
            <div style="height: 0px;">
                <p style="
    margin-top: 1px;
    margin-bottom: 1px;
    margin-left: 403px;
    height: 0px;
">IVA</p>
               
            </div>
             <div style="height: 0px;">
                 <p style="
    height: 0px;
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 504px;
">Total</p>
                 
             </div>
        </div>
        <div class="parteLBL" style="margin-top: 50px">
            <asp:Label ID="lblBruto" style="margin-left:104px" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblDescuento" style="margin-left:95px" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblBaseImponible" style="margin-left:108px" runat="server" Text=""></asp:Label>
             <asp:Label ID="lblIva" style="margin-left:164px" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblTotal" style="margin-left:94px" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
