<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet"  type="text/css" media="screen" href="estiloEMP.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
    <div class="contenedor">
        <p id="titulo">DATOS DE LOS EMPLEADOS</p>
        <div>
            <div class="texto">Código empleado</div>
            <asp:TextBox ID="txtCodEmp" runat="server" Width="115px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtCodEmp" runat="server" ErrorMessage="Es obligatorio el código del empleado" ControlToValidate="txtCodEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regtxtCodEmp" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: 1 letra y 5 digitos" ControlToValidate="txtCodEmp" ForeColor="Green"  ValidationExpression="\w\d{5}"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            <div class="texto">NIF</div>
            <asp:TextBox ID="txtNifEmp" runat="server" Width="115px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtNIF" runat="server" ErrorMessage="Es obligatorio el NIF del empleado" ControlToValidate="txtNifEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regtxtNIF" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: 8 digitos un guion y una letra" ControlToValidate="txtNifEmp" ForeColor="Green" ValidationExpression="\d{8}-\w"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            <div class="texto">Apellidos y nombre</div>
            <asp:TextBox ID="txtNomEmp" runat="server" Width="207px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtApNom" runat="server" ErrorMessage="Es obligatorio el nombre y los apellidos del empleado" ControlToValidate="txtNomEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            <div class="texto">Dirección</div>
             <asp:TextBox ID="txtDirEmp" runat="server" Width="284px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Ciudad</div>
            <asp:TextBox ID="txtCiuEmp" runat="server" Width="286px"></asp:TextBox>
        </div>
        <br />
        <div>
            <div class="texto">Teléfonos</div>
            <asp:TextBox ID="txtTelEmp" runat="server" Width="283px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtTel" runat="server" ErrorMessage="Es obligatorio el teléfono del empleado" ControlToValidate="txtTelEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            <div class="texto">Fecha nacimiento</div>
            <asp:TextBox ID="txtFnaEmp" runat="server" Width="115px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtFNac" runat="server" ErrorMessage="Es obligatorio la fecha de nacimiento del empleado" ControlToValidate="txtFnaEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cmptxtFnaEmp" runat="server" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" ControlToValidate="txtFnaEmp" ControlToCompare="txtFinEmp" ForeColor="Red" Operator="LessThan" Type="Date">*</asp:CompareValidator>
            <asp:RegularExpressionValidator ID="regtxtFNac" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: Formato de fecha dd/mm/aaaa" ControlToValidate="txtFnaEmp" ForeColor="Green" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            <div class="texto">Fecha ingreso</div>
            <asp:TextBox ID="txtFinEmp" runat="server" Width="115px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rqdTxtFIn" runat="server" ErrorMessage="Es obligatorio la fecha de ingreso del empleado" ControlToValidate="txtFinEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regtxtFIn" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: Formato de fecha dd/mm/aaaa" ControlToValidate="txtFinEmp" ForeColor="Green" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            <div class="texto">Sexo:</div>
                 <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal">
                 <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                 <asp:ListItem Value="M">Mujer</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <div>
             <div class="texto">Departamento</div>
             <asp:DropDownList ID="ddlDepEmp" runat="server">
                 <asp:ListItem Selected="True">Investigación</asp:ListItem>
                 <asp:ListItem>Desarrollo</asp:ListItem>
                 <asp:ListItem>Innovación</asp:ListItem>
                 <asp:ListItem>Administración</asp:ListItem>
             </asp:DropDownList>
         </div>
         <p>
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CausesValidation="False" />
         </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
