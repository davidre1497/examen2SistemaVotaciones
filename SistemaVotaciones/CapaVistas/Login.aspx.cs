using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaVotaciones.CapaDatos;

namespace SistemaVotaciones.CapaVistas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void validarusuario(string Email, string clave)

        {
            ClsUsuario.Email = Email;
            ClsUsuario.clave = clave;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["CONTROLGASTOSConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select email, clave, nombre from usuario where Email =  '"  + Email + "' " + clave +
                "and clave = '" + clave + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("inicio.aspx");
            }
            else
            {
                lmensaje.Text = " usuario o contraseña incorrecto";
            }
            conexion.Close();
        }