<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesTienda.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .Cabecera {
            width: 100%;
            padding: 0px;
        }

        .cabeceraNegra {
            width: 100%;
            padding: 0px;
            background-color: #000000;
            text-align: right;
            color: #ffffff;
        }

        .cabeceraAzul {
            width: 100%;
            padding: 0px;
            background-color: #006699;
            color: #ffffff;
            font-size: large;
            font-weight: bold;
        }
        .LoginPos{
            margin-left: 40%;
        }
        .Titulo{
            text-align:center;
        }
        .pie {
            clear: both;
            width: 100%;
            padding: 0px;
            text-align: center;
        }
        .boton{
            margin-right: 31%
        }
        .label{
            margin-left:40%
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Cabecera">
            <div class="cabeceraNegra">
                <br />
                comerciodaw.com
            </div>
            <div class="cabeceraAzul">
                <br />
                TIENDA ONLINE - SHOPPING DAW
                <br />
            </div>
        </div>
        <div>
            <h1 class="Titulo">GesTienda</h1>
            <br />
            <asp:Login ID="Login1" runat="server" class="LoginPos">
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2">Iniciar sesión</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="LoginButton" Class="boton" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
            <asp:Label ID="lblMensajes" runat="server" Class="label" ForeColor="Red"></asp:Label>
        </div>
        <br />
        
        <br />
        <br />
        <br />
        <div class="pie">
                <br />
                <br />
                © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
                <br />
                IES Mare Nostrum (Alicante)
            </div>
    </form>
</body>
</html>
