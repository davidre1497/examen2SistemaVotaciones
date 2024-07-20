using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace SistemaVotaciones.CapaDatos
{
    public class ClsCandidato
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CONEXION"].ConnectionString;

        public DataTable ObtenerCandidatos()
        {
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT C.ID_Candidato, C.Nombre, C.Cedula, C.Email, C.Direccion, P.Nombre_Partido, C.Plataforma " +
                               "FROM Candidato C JOIN Partido P ON C.ID_Partido = P.ID_Partido";
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                adapter.Fill(dt);
            }
            return dt;
        }

        public void AgregarCandidato(string nombre, string cedula, string email, string direccion, int idPartido, string plataforma)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Candidato (Nombre, Cedula, Email, Direccion, ID_Partido, Plataforma) " +
                               "VALUES (@Nombre, @Cedula, @Email, @Direccion, @ID_Partido, @Plataforma)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Nombre", nombre);
                command.Parameters.AddWithValue("@Cedula", cedula);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Direccion", direccion);
                command.Parameters.AddWithValue("@ID_Partido", idPartido);
                command.Parameters.AddWithValue("@Plataforma", plataforma);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}