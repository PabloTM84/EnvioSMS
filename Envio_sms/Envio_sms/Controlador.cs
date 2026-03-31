using System;
using System.Net;
using InteractuaMovil.ContactoSms.Api;

namespace Envio_sms
{
    public class Controlador
    {
        public static void EnvioSmS(string paciente, string fecha, string hora, string clinica, string numeroTelefono)
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            string msg = "Hola! " + paciente + " " +
                "Lamentamos que no hayas podido asistir a tu cita, el   " + fecha + "  a las " + hora + ":00 horas en SONRÍE " + clinica + " " + Environment.NewLine +
                "Recuerda que la salud dental es importante, puedes re agendar tu cita. " + Environment.NewLine +
                "https://api.whatsapp.com/send?phone=50224447878" + Environment.NewLine +
                "" + Environment.NewLine +
                "¡Te esperamos!" + Environment.NewLine +
                "" + Environment.NewLine +
                "Por favor no responder este mensajes, si tienes otra duda comunicarte al 2444 7878 y revisa tu correo para conocer mas datos de tu cita";

            try
            {

                SmsApi envio = new SmsApi("5S3R9p9AwxN9xDKb4LxaykyXb2MOvL6f", "K6k8nrY6dceJ46vlDnZdDoJqCHNz87rg", "https://notificame.claro.com.gt/v4/api/rest/");

                ResponseObjects.ApiResponse<ResponseObjects.MessageResponse> res = envio.Messages.SendToContact("502" + numeroTelefono + "", msg);


            }
            catch (Exception ex)
            {

            }

        }
    }
}