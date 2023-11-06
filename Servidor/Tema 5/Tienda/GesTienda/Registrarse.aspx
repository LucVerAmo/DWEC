<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>

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

        .LoginPos {
            margin-left: 40%;
        }

        .Titulo {
            text-align: center;
        }

        .pie {
            clear: both;
            width: 100%;
            padding: 0px;
            text-align: center;
        }

        .boton {
            margin-left: 40%
        }

        .label {
            margin-left: 40%
        }

        .auto-style1 {
            width: 134px;
        }

        .semiTitulo {
            text-align: center;
            font-weight: 700;
        }

        .texto {
            display: inline-block;
            width: 45%;
            margin: 5px;
            text-align: right;
            margin-left: -150px;
            margin-right: 30px;
        }

        .label {
            display: flex;
            margin-left: 200px;
        }
        .enlace{
            margin-left:35%;
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
            <h1 class="Titulo">GesTienda
            </h1>
            <br />
            <p class="semiTitulo">Registro de Usuarios</p>
            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label1" runat="server" Text="Correo Electronico"></asp:Label>
                </div>
                <asp:TextBox ID="txtCorCli" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label></div>
                <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label3" runat="server" Text="Introduzca de nuevo la contraseña"></asp:Label></div>
                <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label4" runat="server" Text="NIF/NIE/CIF"></asp:Label></div>
                <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label5" runat="server" Text="Nombre/Razón social"></asp:Label></div>
                <asp:TextBox ID="txtNomCli" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label6" runat="server" Text="Direccion"></asp:Label></div>
                <asp:TextBox ID="txtDirCli" runat="server"></asp:TextBox>
            </div>

            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label7" runat="server" Text="Poblacion"></asp:Label></div>
                <asp:TextBox ID="txtPobCli" runat="server"></asp:TextBox>
            </div>

            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label8" runat="server" Text="Código postal"></asp:Label></div>
                <asp:TextBox ID="txtCpoCli" runat="server"></asp:TextBox>
            </div>

            <br />
            <div>
                <div class="texto">
                    <asp:Label ID="Label9" runat="server" Text="Telefono"></asp:Label></div>
                <asp:TextBox ID="txtTelCli" runat="server"></asp:TextBox>
                
            </div>
            <asp:Label ID="lblMensajes" runat="server"></asp:Label>
            <br />
            <div>
                <asp:Button ID="Button1" runat="server" Text="Insertar" class="boton" OnClick="Button1_Click" />
            </div>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" class="enlace" PostBackUrl="~/Default.aspx">Ir al Inicio</asp:LinkButton>
            <br />
        </div>
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
