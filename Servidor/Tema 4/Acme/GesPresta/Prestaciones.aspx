<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones.aspx.cs" Inherits="GesPresta.Prestaciones" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet"  type="text/css" media="screen" href="estiloPRE.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <uc1:Cabecera ID="Cabecera1" runat="server" />
        <p id="titulo">DATOS DE LAS PRESTACIONES</p>
    <div>
        <div class="texto">Código prestacion</div>
            <asp:TextBox ID="txtCodPre" runat="server" Width="115px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqdTxtCodPre" runat="server" ErrorMessage="Es obligatorio el codigo de prestación" ControlToValidate="txtCodPre" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regtxtCodPre" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: : 3 dígitos, un guión, 3 dígitos, un guion y, 3 dígitos" ForeColor="Green" ControlToValidate="txtCodPre" ValidationExpression="\d{3}-\d{3}-\d{3}"></asp:RegularExpressionValidator>
        </div>
        <br />
    <div>
        <div class="texto">Descripcion</div>
            <asp:TextBox ID="txtDesPre" runat="server" Width="590px"></asp:TextBox>
        </div>
        <br />
    <div>
        <div class="texto">Importe fijo</div>
            <asp:TextBox ID="txtImpPre" runat="server" Width="115px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqdTxtImF" runat="server" ErrorMessage="Es obligatorio el importe fijo" ControlToValidate="txtImpPre" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rngtxtImpPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre el 0,00 y el 500,00s" ControlToValidate="txtImpPre" MinimumValue="0,00" MaximumValue="500,00" ForeColor="Red" Type="Double"></asp:RangeValidator>
        </div>
        <br />
    <div>
         <div class="texto">Porcentaje del importe</div>
            <asp:TextBox ID="txtPorPre" runat="server" Width="115px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rqdTxtPorIm" runat="server" ErrorMessage="Es obligatorio el porcentaje del importe" ControlToValidate="txtPorPre" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="rngtxtPorIm" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre el 0,00 y el 15,00 %" ControlToValidate="txtPorPre" MinimumValue="0,00" MaximumValue="15,00" ForeColor="Red" Type="Double"></asp:RangeValidator>
        </div>
        <br />
    <div>
             <div class="texto">Tipo de prestacion</div>
             <asp:DropDownList ID="ddlDepEmp" runat="server">
                 <asp:ListItem>Dentaria</asp:ListItem>
                 <asp:ListItem>Familiar</asp:ListItem>
                 <asp:ListItem Selected="True">Ocular</asp:ListItem>
                 <asp:ListItem>Otras</asp:ListItem>
             </asp:DropDownList>
         </div>
       <p>
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
         </p>
    </form>
    
</body>
</html>
