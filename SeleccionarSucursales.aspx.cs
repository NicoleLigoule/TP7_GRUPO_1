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

        protected DataTable tablaSelecion()
        {
            DataTable tabla = new DataTable();
            DataColumn columna = new DataColumn("Id_Sucursal", System.Type.GetType("System.String"));
            tabla.Columns.Add(columna);
            columna = new DataColumn("Nombre", System.Type.GetType("System.String"));
            tabla.Columns.Add(columna);
            columna = new DataColumn("Descripcion", System.Type.GetType("System.String"));
            tabla.Columns.Add(columna);
            return tabla;
        }

        public void agregarfil(DataTable tabla, Sucursal sucur)
        {
            int ID = sucur.GetId_Sucursal();
            string Nombre = sucur.GetNombreSucursal();
            string Descripcion = sucur.GetDescripcionSucursal();

            DataRow drow = tabla.NewRow();
            drow["Id_Sucursal"] = ID.ToString();
            drow["Nombre"] = Nombre;
            drow["Descripcion"] = Descripcion;


            tabla.Rows.Add(drow);
        }

    }
}