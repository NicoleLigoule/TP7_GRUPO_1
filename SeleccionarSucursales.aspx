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
            width: 721px;
        }
        .auto-style4 {
            height: 45px;
            width: 721px;
        }
        .auto-style6 {
            height: 34px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style9 {
            width: 271px;
        }
        .auto-style10 {
            height: 45px;
            width: 271px;
        }
        .auto-style11 {
            width: 271px;
            height: 27px;
        }
        .auto-style12 {
            width: 721px;
            height: 27px;
        }
        .auto-style13 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;
            <table>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hlListado" runat="server">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td>&nbsp;<asp:HyperLink ID="hlMostrar" runat="server">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3"><asp:Label ID="lblListado" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large">Listado de Sucursales</asp:Label></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style4">Búsqueda por nombre de sucursal:&nbsp;&nbsp;<asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                    </td>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="4" class="auto-style9">
                        <asp:DataList ID="dtlProvincias" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <asp:Button ID="btnDescripcionProvincia" runat="server" Text='<%# Eval("DescripcionProvincia") %>' />
<br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style3" rowspan="4">
                        <asp:ListView ID="lvSucursales" runat="server">
                        </asp:ListView>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString %>" SelectCommand="SELECT [DescripcionProvincia] FROM [Provincia]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
