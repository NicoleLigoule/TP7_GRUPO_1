using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TP7_GRUPO_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource2.SelectCommand = "SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal], [Id_ProvinciaSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]" + " WHERE [NombreSucursal] LIKE '" + txtBusqueda.Text + "%' ";
            lvSucursales.DataBind();
            txtBusqueda.Text = "";
           
            
        }

        private void FiltrarSucursalesPorProvincia(int idProvincia)
        {
            SqlDataSource2.SelectParameters.Clear();
            SqlDataSource2.SelectParameters.Add("Id_Provincia", idProvincia.ToString());
            SqlDataSource2.SelectCommand = "SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal], [Id_ProvinciaSucursal], [URL_Imagen_Sucursal] FROM [Sucursal] WHERE [Id_ProvinciaSucursal] = @Id_Provincia";
            lvSucursales.DataBind();
        }

        protected void btnProvincias_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "comandoBtnProvincias")
            {
                int idProvincia = Convert.ToInt32(e.CommandArgument);
                FiltrarSucursalesPorProvincia(idProvincia);
            }
        }
    }
}