using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SistemaVotaciones.CapaDatos
{
    public class ClsVoto
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
    
            public DataTable ObtenerResultados()
            {
                DataTable dt = new DataTable();
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = @"
                    SELECT C.Nombre, P.Nombre_Partido, COUNT(V.ID_Voto) AS Votos, 
                    CAST(COUNT(V.ID_Voto) AS FLOAT) / (SELECT COUNT(*) FROM Voto) AS Porcentaje
                    FROM Voto V
                    JOIN Candidato C ON V.ID_Candidato = C.ID_Candidato
                    JOIN Partido P ON C.ID_Partido = P.ID_Partido
                    GROUP BY C.Nombre, P.Nombre_Partido
                    ORDER BY Votos DESC";
                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    adapter.Fill(dt);
                }
                return dt;
            }

            public DataTable ObtenerGanador()
            {
                DataTable dt = new DataTable();
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = @"
                    SELECT TOP 1 C.Nombre
                    FROM Voto V
                    JOIN Candidato C ON V.ID_Candidato = C.ID_Candidato
                    GROUP BY C.Nombre
                    ORDER BY COUNT(V.ID_Voto) DESC";
                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    adapter.Fill(dt);
                }
                return dt;
            }
        }
    }
