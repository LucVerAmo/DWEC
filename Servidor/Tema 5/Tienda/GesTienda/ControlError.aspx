<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style>
    h1{
        text-align: center;
    }
    h2{
        text-align: center;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Aplicación Web GesTienda</h1>
        <br />
        <h2>Error en tiempo de ejecución</h2>
        <asp:Panel ID="Panel1" runat="server" Height="262px" style="margin-left: 32%" Width="561px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">
             &nbsp;Error ASP.NET:
            <br />
            &nbsp;<asp:Label ID="lblErrorASP" runat="server" ForeColor="Red"></asp:Label>
            <br />
             <br />
             &nbsp;Error ADO.NET:
             <br />
             &nbsp;<asp:Label ID="lblErrorADO" runat="server" ForeColor="Red"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
