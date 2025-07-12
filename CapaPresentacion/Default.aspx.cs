using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace CapaPresentacion
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        [WebMethod]
        public static string ChatBlacutt(string prompt)
        {

            try
            {
                if (string.IsNullOrEmpty(prompt))
                {
                    return "Debe ingresar una pregunta.";
                }
                var respChatbot = Utilidadesj.GetInstance().RespuestaSoloInformativo(prompt);

                return respChatbot;


            }
            catch (Exception)
            {
                return "12 Tu pregunta está fuera de nuestro modelo. Intentá con otra o reformulá tu consulta.";
            }
        }

    }
}