﻿using System;
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


        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "SeleccionarSucursal")
            {
                agregarSucursal(e.CommandArgument.ToString());
            }
        }


        public void agregarSucursal(string ID)
        {
            Sucursal sucu = TraerSucursalSegunId(ID);
            if (Session["tabla"] == null)
            {
                Session["tabla"] = tablaSelecion();

            }
            agregarfil((DataTable)Session["tabla"], sucu);
        }

        public Sucursal TraerSucursalSegunId(string ID)
        {
            string Ruta = "Data Source=localhost\\sqlexpress; Initial Catalog = BDSucursales;Integrated Security=true;";
            string query = "SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal] FROM [Sucursal] WHERE [Id_Sucursal] =" + ID;

            Sucursal sucursa = new Sucursal();

            SqlConnection connection = new SqlConnection(Ruta);

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Id_Sucursal", ID);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                int id = (int)reader["Id_Sucursal"];
                string Nombre = reader["NombreSucursal"].ToString();
                string Descripcion = reader["DescripcionSucursal"].ToString();
                sucursa.setId_Sucursal(id);
                sucursa.setNombreSucursal(Nombre);
                sucursa.setDescripcionSucursal(Descripcion);


            }
            return sucursa;
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
            drow["ID_SUCURSAL"] = ID.ToString();
            drow["NOMBRE"] = Nombre;
            drow["DESCRIPCION"] = Descripcion;


            tabla.Rows.Add(drow);
        }
    }
}