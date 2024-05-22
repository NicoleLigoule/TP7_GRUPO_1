<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="TP7_GRUPO_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 45px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 595px;
        }
        .auto-style4 {
            height: 45px;
            width: 595px;
        }
        .auto-style5 {
            height: 26px;
            width: 595px;
        }
        .auto-style6 {
            height: 34px;
        }
        .auto-style7 {
            width: 595px;
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;
            <table>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hlListado" runat="server">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td>&nbsp;<asp:HyperLink ID="hlMostrar" runat="server">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3"><asp:Label ID="lblListado" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large">Listado de Sucursales</asp:Label></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style4">Búsqueda por nombre de sucursal:&nbsp;&nbsp;<asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                    </td>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBsas" runat="server" height="29px" Text="Buenos Aires" width="112px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnERios" runat="server" height="29px" Text="Entre Rios" width="112px" />
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnStaFe" runat="server" height="29px" Text="Santa Fe" width="112px" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnPampa" runat="server" Text="La Pampa" />
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
