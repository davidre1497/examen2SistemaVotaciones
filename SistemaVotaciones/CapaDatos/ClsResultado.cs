using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SistemaVotaciones.CapaDatos
{

        public class Resultado
        {
            public string NombreCandidato { get; set; }
            public int Votos { get; set; }
        }
    }
}
}