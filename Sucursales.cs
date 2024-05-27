using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP7_GRUPO_1
{
    public class Sucursal
    {


        private int Id_Sucursal;
        private string NombreSucursal;
        private string DescripcionSucursal;
        private int Id_ProvinciaSucursal;
        private string URL_Imagen_Sucursal;

        public Sucursal()
        {

        }

        public Sucursal(string Id_Sucursa, string NombreProducto, string CantidadPorUnidad, string idProveedor, string PrecioUnidad)
        {
            int ID, PRo;
            int.TryParse(Id_Sucursa, out ID);
            int.TryParse(Id_Sucursa, out PRo);
            this.Id_Sucursal = ID;
            this.NombreSucursal = NombreProducto;
            this.DescripcionSucursal = CantidadPorUnidad;
            this.Id_ProvinciaSucursal = PRo;
            this.URL_Imagen_Sucursal = idProveedor;
        }
        public void setId_Sucursal(int ID)
        {
            Id_Sucursal = ID;
        }
        public int GetId_Sucursal()
        {
            return Id_Sucursal;
        }
        public void setNombreSucursal(string NombreSucursa)
        {
            NombreSucursal = NombreSucursa;
        }
        public string GetNombreSucursal()
        {
            return NombreSucursal;
        }
        public void setDescripcionSucursal(string DescripcionSucursa)
        {
            DescripcionSucursal = DescripcionSucursa;
        }
        public string GetDescripcionSucursal()
        {
            return DescripcionSucursal;
        }
        public void setId_ProvinciaSucursalr(int ID)
        {
            Id_ProvinciaSucursal = ID;
        }
        public int GetId_ProvinciaSucursal()
        {
            return Id_ProvinciaSucursal;
        }
        public void setURL_Imagen_Sucursal(string URL_Imagen_Sucursa)
        {
            URL_Imagen_Sucursal = URL_Imagen_Sucursa;
        }
        public string GetURL_Imagen_Sucursal()
        {
            return URL_Imagen_Sucursal;
        }
    }
}