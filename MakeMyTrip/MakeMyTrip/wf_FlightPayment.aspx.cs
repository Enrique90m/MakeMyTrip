using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_FlightPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            //Obtengo datos de cookies y los pongo en sus labels
            Label_NoOfAdults.Text = Request.Cookies["DatosVuelo"]["NoOfAdults"];
            Label_NoOfChildren.Text = Request.Cookies["DatosVuelo"]["NoOfChildren"];
            Label_Source.Text = Request.Cookies["DatosVuelo"]["Source"];
            Label_Destination.Text = Request.Cookies["DatosVuelo"]["Destination"];
            Label_TotalAdultFare.Text = Request.Cookies["Totals"]["TotalAdult"];
            Label_TotalChildrenFare.Text = Request.Cookies["Totals"]["TotalChildren"];
            Label_Total.Text = Request.Cookies["Totals"]["GrandTotal"];
            Label_Tax.Text = (int.Parse(Request.Cookies["Totals"]["TaxAdult"]) + int.Parse(Request.Cookies["Totals"]["TaxChildren"])).ToString();
        }

        protected void Button_MakePayment_Click(object sender, EventArgs e)
        {
            //************************ Insertar reservacion en tabla
            //Creo objeto de table adapter
            ProjectAirlaneDataSetTableAdapters.Flight_BookingTableAdapter tableAdapterFlightBooking = new ProjectAirlaneDataSetTableAdapters.Flight_BookingTableAdapter();

            //Creo objeto de tabla formato flight booking
            ProjectAirlaneDataSet.Flight_BookingDataTable dtFlightBooking = new ProjectAirlaneDataSet.Flight_BookingDataTable();


            //Primero genero objeto de fecha de hoy
            DateTime dtDateOfBooking = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);

            //Genero objeto de fecha de ida
            DateTime dtDateOfDeparture = new DateTime(int.Parse(Request.Cookies["DatosVuelo"]["Year"]),
                                                    int.Parse(Request.Cookies["DatosVuelo"]["Month"]),
                                                    int.Parse(Request.Cookies["DatosVuelo"]["Day"]), 0, 0, 0);
            //Ahora inserto
            tableAdapterFlightBooking.GeneraReservacion(int.Parse(Request.Cookies["DatosVuelo"]["FlightNo"]),
                                                        int.Parse(Request.Cookies["DatosVuelo"]["CustomerID"]),
                                                        dtDateOfBooking,
                                                        dtDateOfDeparture,
                                                        int.Parse(Request.Cookies["DatosVuelo"]["NoOfAdults"]),
                                                        int.Parse(Request.Cookies["DatosVuelo"]["NoOfChildren"]));
            //************************************************


            //#################################### Actualizo total de pasajeros

            //Creo table adapter
            ProjectAirlaneDataSetTableAdapters.FlightTableAdapter tableAdapterFlight = new ProjectAirlaneDataSetTableAdapters.FlightTableAdapter();

            //Actualizo los pasajeros
            tableAdapterFlight.ActualizaTotalDePasajerosEnVuelo(int.Parse(Request.Cookies["DatosVuelo"]["NoOfAdults"]) +
                                                                int.Parse(Request.Cookies["DatosVuelo"]["NoOfChildren"]),
                                                                int.Parse(Request.Cookies["DatosVuelo"]["FlightNo"]));

            //####################################


            ////************************************************ Inserto los pasajeros

            //Creo table adapter de pasajeros
            ProjectAirlaneDataSetTableAdapters.PassengerDetailsTableAdapter tableAdapterPassenger = new ProjectAirlaneDataSetTableAdapters.PassengerDetailsTableAdapter();
            
            //Inserto adultos
            int i=0;
            string algo =  Request.Cookies["PassengerAdults"][i.ToString()].ToString();

            for ( i = 0; i < int.Parse(Request.Cookies["DatosVuelo"]["NoOfAdults"]); i++)
                tableAdapterPassenger.Insert(int.Parse(Request.Cookies["DatosVuelo"]["CustomerID"]),
                                             int.Parse(Request.Cookies["DatosVuelo"]["FlightNo"]),
                                             "A",
                                             Request.Cookies["PassengerAdults"][i.ToString()].Split('*')[0].ToString(),
                                             Request.Cookies["PassengerAdults"][i.ToString()].Split('*')[1].ToString(),
                                             Request.Cookies["PassengerAdults"][i.ToString()].Split('*')[2].ToString());

            //Inserto ninos 
            algo = Request.Cookies["PassengerChildren"]["1"].ToString();
            for (int r = i; r <= int.Parse(Request.Cookies["DatosVuelo"]["NoOfChildren"]); r++)
                tableAdapterPassenger.Insert(int.Parse(Request.Cookies["DatosVuelo"]["CustomerID"]),
                                             int.Parse(Request.Cookies["DatosVuelo"]["FlightNo"]),
                                             "C",
                                             "CHL",
                                             Request.Cookies["PassengerChildren"][r.ToString()].Split('*')[0].ToString(),
                                             Request.Cookies["PassengerChildren"][r.ToString()].Split('*')[1].ToString());
            //************************************************

          
            //#################################### Inserto el pago
            
            //Inserto el payment en la tabla de payment

            //Table adapter de Flight
            ProjectAirlaneDataSetTableAdapters.PaymentsTableAdapter tableAdapterPayment = new ProjectAirlaneDataSetTableAdapters.PaymentsTableAdapter();

            //Primero obtengo e imprimo su booking ID, ya que lo necesito para insertar el pago
            string BookingID = tableAdapterFlightBooking.ObtieneUltimoBookingID().ToString();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your booking id is: " + BookingID + " ')</script>");

            //Inserto el pago
            tableAdapterPayment.Insert(int.Parse(BookingID),
                                       decimal.Parse(Request.Cookies["Totals"]["TotalAdult"]),
                                       decimal.Parse(Request.Cookies["Totals"]["TotalChildren"]),
                                       decimal.Parse(Request.Cookies["Totals"]["TaxAdult"]) + decimal.Parse(Request.Cookies["Totals"]["TaxChildren"]),
                                       decimal.Parse(Request.Cookies["Totals"]["GrandTotal"]));

            //####################################
        }
    }
}