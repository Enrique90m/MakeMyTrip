using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeMyTrip
{
    public partial class wf_SearchFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar_DepartureDate.SelectedDate = DateTime.Now;
            for (int i = 1; i <= 23; i++)
                DropDownList_EndHour.Items.Add(i.ToString());
        }

        protected void Button_SearchFlights_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
                return;

            //Creo URL con datos para el siguiente formulario
            Response.Redirect("wf_DisplayFlight.aspx?CustomerID=" + DropDownList_CustomerID.SelectedValue +
                                "&Source=" + DropDownList_Source.SelectedValue +
                                "&Destination=" + DropDownList_Destination.SelectedValue + 
                                "&StartHour=" + DropDownList_StartHour.SelectedValue + 
                                "&EndHour=" + DropDownList_EndHour.SelectedValue + 
                                "&DepartureDate=" + Calendar_DepartureDate.SelectedDate + 
                                "&NoOfAdults=" + DropDownList_NoOfAdults.SelectedValue + 
                                "&NoOfChildren=" + DropDownList_NoOfChildren.SelectedValue + 
                                "&Day="+Calendar_DepartureDate.SelectedDate.Day +
                                "&Month=" + Calendar_DepartureDate.SelectedDate.Month +
                                "&Year=" + Calendar_DepartureDate.SelectedDate.Year);
        }

        protected void DropDownList_StartHour_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Si no selecciono nada, lo deshabilito y agrego que puede escojer de la 1 a las 23, ya que el primer combo esta en 0
            if (int.Parse(DropDownList_StartHour.SelectedValue) == -1)
            {
                DropDownList_EndHour.Enabled = false;
            }
            else
            {
                //Habilito el combo y dependiendo de lo que halla seleccionado, agrego las horas siguientes
                DropDownList_EndHour.Enabled = true;
                DropDownList_EndHour.Items.Clear();
                DropDownList_EndHour.Text = string.Empty;
                if (int.Parse(DropDownList_StartHour.SelectedValue) == 22)
                    DropDownList_EndHour.Items.Add("23");
                else
                    for (int i = int.Parse(DropDownList_StartHour.SelectedValue) + 1; i < 24; i++)
                        DropDownList_EndHour.Items.Add(i.ToString());
            }
        }

        protected void Calendar_DepartureDate_DayRender(object sender, DayRenderEventArgs e)
        {
                if (e.Day.Date < DateTime.Now)
                    e.Day.IsSelectable = false;
        }
    }
}