<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursalesSeleccionados.aspx.cs" Inherits="TP7_GRUPO_1.ListadoSucursalesSeleccionadas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 258px;
        }
        .auto-style5 {
            height: 23px;
            width: 258px;
        }
        .auto-style6 {
            width: 253px;
        }
        .auto-style7 {
            height: 23px;
            width: 253px;
        }
        .auto-style9 {
            width: 467px;
        }
        .auto-style11 {
            width: 142px;
        }
        .auto-style8 {
            width: 467px;
            font-weight: bold;
            font-size: xx-large;
        }
        .auto-style10 {
            height: 23px;
            width: 467px;
        }
    .auto-style1 {
        height: 23px;
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="~/SeleccionarSucursales.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="hlMostrar" runat="server" NavigateUrl="~/ListadoSucursalesSeleccionados.aspx">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Mostrar sucursales seleccionadas</td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
