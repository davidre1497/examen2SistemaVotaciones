using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SistemaVotaciones.CapaDatos
{
    public class Partido
    {
        public int ID_Partido { get; set; }
        public string Nombre_Partido { get; set; }
    }
}