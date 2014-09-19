using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MakeMyTrip
{
    public partial class wf_DisplayFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Guardo los datos recibidos por URL
            DataTable dtTable = new DataTable();
            string sSource = Request.QueryString["Source"];
            string sDestination = Request.QueryString["Destination"];
            int iStartHour = int.Parse(Request.QueryString["StartHour"]);
            int iEndHour = int.Parse(Request.QueryString["EndHour"]);
            int iDay = int.Parse(Request.QueryString["Day"]);
            int iMonth = int.Parse(Request.QueryString["Month"]);
            int iYear = int.Parse(Request.QueryString["Year"]);
            int iNoOfAdults = int.Parse(Request.QueryString["NoOfAdults"]);
            int iNoOfChildren = int.Parse(Request.QueryString["NoOfChildren"]);

            DateTime dtDepartureDate = new DateTime(iYear,iMonth,iDay,0,0,0);
            DateTime dtStartHour = new DateTime(dtDepartureDate.Year,dtDepartureDate.Month,dtDepartureDate.Day, iStartHour, 0, 0);
            DateTime dtEndHour = new DateTime(dtDepartureDate.Year, dtDepartureDate.Month, dtDepartureDate.Day, iEndHour, 0, 0);
            
            //Creo objeto tableadapter
            ProjectAirlaneDataSetTableAdapters.FlightTableAdapter tableAdapter_Flight =
                new ProjectAirlaneDataSetTableAdapters.FlightTableAdapter();
            
            //Creo tabla para guardar los datos
            ProjectAirlaneDataSet.FlightDataTable dt = new ProjectAirlaneDataSet.FlightDataTable();

            //Pongo los datos en labels
            Label_From.Text = sSource;
            Label_To.Text = sDestination;
            Label_TimeStart.Text = iStartHour.ToString();
            Label_TimeEnd.Text = iEndHour.ToString();
            Label_DepartureDate.Text = dtDepartureDate.ToString("yyyy-MM-dd");
            Label_NoOfAfdults.Text = iNoOfAdults.ToString();

            //Si hay pasajeros ninos, se habilita el lable y se le ponen los datos
            if (iNoOfChildren > 0)
            {
                Label_NoOfChildren.Visible = true;
                Label4.Visible = true;
                Label_NoOfChildren.Text = iNoOfChildren.ToString();
            }

            //Busco en el dataset los datos del vuelo buscado
            tableAdapter_Flight.BuscaVuelos(dt,
                                            sSource, 
                                            sDestination, 
                                            dtDepartureDate.ToString("yyyy-MM-dd"),
                                            dtStartHour,dtEndHour);

            //Pongo los datos en gridview
            if (dt.Rows.Count > 0)
            {
                GridView_VuelosDisponibles.DataSource = dt;
                GridView_VuelosDisponibles.DataBind();
            }
            else//si no se encontraron vuelos, muestra el label de "No records found"
                Label_NoRecordsFound.Visible = true;
            
        }

        protected void GridView_VuelosDisponibles_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            string sSource = Request.QueryString["Source"];
            string sDestination = Request.QueryString["Destination"];
            int iStartHour = int.Parse(Request.QueryString["StartHour"]);
            int iEndHour = int.Parse(Request.QueryString["EndHour"]);
            int iDay = int.Parse(Request.QueryString["Day"]);
            int iMonth = int.Parse(Request.QueryString["Month"]);
            int iYear = int.Parse(Request.QueryString["Year"]);
            int iNoOfAdults = int.Parse(Request.QueryString["NoOfAdults"]);
            int iNoOfChildren = int.Parse(Request.QueryString["NoOfChildren"]);

            //Guardo informacion en cookies
            Response.Cookies["DatosVuelo"]["Source"] = sSource;
            Response.Cookies["DatosVuelo"]["Destination"] = sDestination;

            Response.Cookies["DatosVuelo"]["StartHour"] = iStartHour.ToString();
            Response.Cookies["DatosVuelo"]["EndHour"] = iEndHour.ToString();
            Response.Cookies["DatosVuelo"]["Month"] = iMonth.ToString();
            Response.Cookies["DatosVuelo"]["Year"] = iYear.ToString();
            Response.Cookies["DatosVuelo"]["Day"] = iDay.ToString();
            
            Response.Cookies["DatosVuelo"]["NoOfAdults"] = iNoOfAdults.ToString();
            Response.Cookies["DatosVuelo"]["NoOfChildren"] = iNoOfChildren.ToString();
            Response.Cookies["DatosVuelo"]["FlightNo"] = GridView_VuelosDisponibles.Rows[e.RowIndex].Cells[1].Text;
            Response.Cookies["DatosVuelo"]["AdultFare"] = GridView_VuelosDisponibles.Rows[e.RowIndex].Cells[6].Text;
            Response.Cookies["DatosVuelo"]["ChildrenFare"] = GridView_VuelosDisponibles.Rows[e.RowIndex].Cells[7].Text;
            Response.Cookies["DatosVuelo"]["TotalPassenger"] = GridView_VuelosDisponibles.Rows[e.RowIndex].Cells[8].Text;
            //Response.Cookies["DatosVuelo"]["Airlane"] = GridView_VuelosDisponibles.Rows[e.RowIndex].Cells[9].ToString();
            Response.Cookies["DatosVuelo"]["Arrival"] = GridView_VuelosDisponibles.Rows[e.RowIndex].Cells[5].Text;
            Response.Cookies["DatosVuelo"]["Departure"] = Label_DepartureDate.Text;
            Response.Cookies["DatosVuelo"]["CustomerID"] = Request.QueryString["CustomerID"];
            Response.Cookies["DatosVuelo"].Expires = DateTime.Now.AddHours(1);

            //Redirecciono a pagina siguiente
            Response.Redirect("wf_ReviewFlight.aspx");
        }

        protected void GridView_VuelosDisponibles_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

       
    }
}