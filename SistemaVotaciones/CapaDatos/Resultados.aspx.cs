using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SistemaVotaciones.CapaDatos
{
    public partial class RegistrarCandidatos : System.Web.UI.Page
    {
        private ClsCandidato clsCandidato = new ClsCandidato();
        private ClsPartido clsPartido = new ClsPartido();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCandidatos();
                CargarPartidos();
            }
        }

        protected void CargarCandidatos()
        {
            DataTable dt = clsCandidato.ObtenerCandidatos();
            gvCandidatos.DataSource = dt;
            gvCandidatos.DataBind();
        }

        protected void CargarPartidos()
        {
            ddlPartido.DataSource = clsPartido.ObtenerPartidos();
            ddlPartido.DataTextField = "Nombre_Partido";
            ddlPartido.DataValueField = "ID_Partido";
            ddlPartido.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string cedula = txtCedula.Text;
            string email = txtEmail.Text;
            string direccion = txtDireccion.Text;
            int idPartido = Convert.ToInt32(ddlPartido.SelectedValue);
            string plataforma = txtPlataforma.Text;

            clsCandidato.AgregarCandidato(nombre, cedula, email, direccion, idPartido, plataforma);
            CargarCandidatos();

            // Limpiar los campos
            txtNombre.Text = "";
            txtCedula.Text = "";
            txtEmail.Text = "";
            txtDireccion.Text = "";
            ddlPartido.SelectedIndex = 0;
            txtPlataforma.Text = "";
        }
    }
}