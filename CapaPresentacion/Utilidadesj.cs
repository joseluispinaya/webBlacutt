using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.IO;
using System.Net.Http;
using Newtonsoft.Json;

namespace CapaPresentacion
{
	public class Utilidadesj
	{
        private const string OpenAIApiKey = "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"; // Centralización de la API Key


        #region "PATRON SINGLETON"
        public static Utilidadesj _instancia = null;

        private Utilidadesj()
        {

        }

        public static Utilidadesj GetInstance()
        {
            if (_instancia == null)
            {
                _instancia = new Utilidadesj();
            }
            return _instancia;
        }
        #endregion

        public string RespuestaSoloInformativo(string pregunta)
        {
            var url = "https://api.openai.com/v1/chat/completions";
            try
            {
                // Leer archivo
                string ruta = HttpContext.Current.Server.MapPath("/blacutt.json");

                if (!File.Exists(ruta))
                {
                    return "1 Tuvimos un problema al generar una respuesta. Por favor, intentá nuevamente más tarde.";
                }

                string jsonx = File.ReadAllText(ruta);
                PromptDatoz data = JsonConvert.DeserializeObject<PromptDatoz>(jsonx);

                // Construir prompt con toda la info
                var contexto = $@"
                    You are an assistant that answers questions **only** using the following company information.
                    If the question is unrelated or cannot be answered, you must respond with: NO_INFORMATION (without quotes).

                    Company: {data.Company}

                    Historical Overview:
                    {data.HistoricalOverview}

                    Mission:
                    {data.Mission}

                    Vision:
                    {data.Vision}

                    Values:
                    - Integrity: {data.Values.Integrity}
                    - Flexibility and Adaptation: {data.Values.FlexibilityAndAdaptation}

                    Quality Policies:
                    {data.QualityPolicies}

                    Collection Process:
                    - {string.Join("\n- ", data.CollectionProcess)}

                    Regulations and Certifications:
                    - {string.Join("\n- ", data.RegulationsCertifications)}

                    Harvest:
                    - {string.Join("\n- ", data.Harvest)}

                    Advantages of Amazon Brazil Nuts:
                    - {string.Join("\n- ", data.Advantages)}

                    Export Offer:
                    {data.ExportOffer}

                    Product Classification:
                    {string.Join("\n", data.ProductClassification.Select(p =>
                                $"- {p.Type}: {p.Definition}"
                            ))}

                    Contact:
                    - Address: {data.Contact.Address}
                    - Phones: {string.Join(", ", data.Contact.Phones)}

                    Organizational Structure:
                    - Board of Directors: {string.Join(", ", data.OrganizationalStructure.BoardOfDirectors)}
                    - Departments:
                    * Accounting: {string.Join(", ", data.OrganizationalStructure.MainDepartments.Accounting)}
                    * Production: {string.Join(", ", data.OrganizationalStructure.MainDepartments.Production)}
                    * Quality Management: {data.OrganizationalStructure.MainDepartments.QualityManagement}
                    ";

                var requestBody = new
                {
                    model = "gpt-4",
                    messages = new[]
                    {
                        new { role = "system", content = contexto },
                        new { role = "user", content = pregunta }
                    },
                    temperature = 0.3,
                    max_tokens = 300
                };

                using (var client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("Authorization", $"Bearer {OpenAIApiKey}");
                    var content = new StringContent(JsonConvert.SerializeObject(requestBody), Encoding.UTF8, "application/json");
                    var response = client.PostAsync(url, content).GetAwaiter().GetResult();

                    if (!response.IsSuccessStatusCode)
                    {
                        return $"Error en la API: {response.StatusCode}";
                    }

                    var responseString = response.Content.ReadAsStringAsync().GetAwaiter().GetResult();
                    dynamic json = JsonConvert.DeserializeObject(responseString);

                    string respuestaChatbot = json.choices[0].message.content.ToString().Trim();

                    if (respuestaChatbot != "NO_INFORMATION")
                        return respuestaChatbot;

                    var saludo = RespHumanoSaludo(pregunta);
                    return saludo == "NO_SALUDA"
                        ? "11 Tu pregunta está fuera de nuestro modelo. Intentá con otra o reformulá tu consulta."
                        : saludo;

                }

            }
            catch (Exception)
            {
                return "2 Tuvimos un problema al generar una respuesta. Por favor, intentá nuevamente más tarde.";
            }
        }

        public string RespHumanoSaludo(string pregunta)
        {
            var url = "https://api.openai.com/v1/chat/completions";

            try
            {

                var mensajeSistema = $@"
                    Eres un asistente de IA que solo responde saludos o despedidas.

                    - Si el mensaje del usuario es un saludo (como ""Hola"", ""Buenos días"") o una despedida (como ""Gracias, hasta luego""), responde de forma amable y profesional.
                    - Si el mensaje NO es un saludo o despedida, responde exactamente con: NO_SALUDA (sin comillas). No expliques por qué no es un saludo ni agregues ningún comentario. Si no estás seguro, responde NO_SALUDA.

                    Ejemplos:
                    - Usuario: ""Hola""
                    Respuesta: ""¡Hola! ¿En qué puedo ayudarte hoy?""
                    - Usuario: ""Gracias, hasta luego""
                    Respuesta: ""¡Gracias a ti! Que tengas un excelente día.""
                    - Usuario: ""¿Cuál es la capital de Francia?""
                    Respuesta: ""NO_SALUDA""

                    Responde ahora según estas instrucciones:
                    ";



                var requestBody = new
                {
                    model = "gpt-3.5-turbo",
                    messages = new[]
                    {
                        new { role = "system", content = mensajeSistema },
                        new { role = "user", content = pregunta }
                    },
                    temperature = 0.2,
                    max_tokens = 100
                };

                using (var client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("Authorization", $"Bearer {OpenAIApiKey}");
                    var content = new StringContent(JsonConvert.SerializeObject(requestBody), Encoding.UTF8, "application/json");
                    var response = client.PostAsync(url, content).GetAwaiter().GetResult();

                    if (!response.IsSuccessStatusCode)
                    {
                        return "6 Tuvimos un problema al generar una respuesta. Por favor, intentá nuevamente más tarde.";
                    }

                    var responseString = response.Content.ReadAsStringAsync().GetAwaiter().GetResult();
                    dynamic json = JsonConvert.DeserializeObject(responseString);

                    return json.choices[0].message.content.ToString().Trim();
                }
            }
            catch (Exception)
            {
                return "7 Tuvimos un problema al generar una respuesta. Por favor, intentá nuevamente más tarde.";
            }
        }
    }
}