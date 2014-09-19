using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MakeMyTrip
{
    public partial class wf_FlightTravelers : System.Web.UI.Page
    {
        //Variable para guardar total de pasajeros
        int iTotalAdultos;
        int iTotalNinos;

        //Variable indice 
        int iIndice;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Guardo el total de pasajeros
            iTotalAdultos = int.Parse(Request.Cookies["DatosVuelo"]["NoOfAdults"]);
            iTotalNinos = int.Parse(Request.Cookies["DatosVuelo"]["NoOfChildren"]);

            //Obtengo los datos del cliente
            ProjectAirlaneDataSetTableAdapters.CustomerTableAdapter ta_Customer = new ProjectAirlaneDataSetTableAdapters.CustomerTableAdapter();
            ProjectAirlaneDataSet.CustomerDataTable cdt_Customer = new ProjectAirlaneDataSet.CustomerDataTable();

            //Cargo datos de cliente en labels
            DataTable dtCustomerDetails = ta_Customer.DetallesCliente(int.Parse(Request.Cookies["DatosVuelo"]["CustomerID"]));
            Label_CustomerFname.Text = dtCustomerDetails.Rows[0][1].ToString();
            Label_CustomerLname.Text = dtCustomerDetails.Rows[0][2].ToString();
            Label_CustomerAdress.Text = dtCustomerDetails.Rows[0][3].ToString();
            dtCustomerDetails.Dispose();

        }

        protected void Button_Next_Click(object sender, EventArgs e)
        {
            //El indice se borra cada que ingresa un pasajero, por lo que tuve que guardarlo en una cookie y la leo cada que ingresa otro
            iIndice = int.Parse(Request.Cookies["Indice"]["Indice"]);

            //Verifico que este registrando adultos, si es asi, verifico que capture todo y lo guardo en cookie
            if (Label11.Visible == true)
                if (string.IsNullOrEmpty(TextBox_AdultFname.Text) || string.IsNullOrEmpty(TextBox_AdultLname.Text))
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('You must capture the adult name and adult last name before continue!')</script>"); 
                    return;
                }
                else
                {
                    string passenger = DropDownList_AdultTitle.Text + "*" + TextBox_AdultFname.Text + "*" + TextBox_AdultLname.Text;
                    Response.Cookies["PassengerAdults"][iIndice.ToString()] = passenger;
                    TextBox_AdultFname.Text = string.Empty;
                    TextBox_AdultLname.Text = string.Empty;
                    DropDownList_AdultTitle.Text = string.Empty;
                    DropDownList_AdultTitle.Focus();
                }

            //Valido que halla capturado todos los datos en niños
            if (Label14.Visible == true)
                if (string.IsNullOrEmpty(TextBox_ChildrenFname.Text) || string.IsNullOrEmpty(TextBox_ChildrenLname.Text))
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('You must capture the children name and children last name before continue!')</script>");
                    return;
                }
                else
                {
                    string child = TextBox_ChildrenFname.Text + "*" + TextBox_ChildrenLname.Text;
                    Response.Cookies["PassengerChildren"][iIndice.ToString()] = child;
                    TextBox_ChildrenFname.Text = string.Empty;
                    TextBox_ChildrenLname.Text = string.Empty;
                    TextBox_ChildrenLname.Focus();
                }

            //Aumento el total de travelers capturados
            iIndice++;
            Response.Cookies["Indice"]["Indice"] = iIndice.ToString();

            //Verifico si hay mas travelers por capturar
            if (iIndice >= iTotalAdultos + iTotalNinos)
            {
                Button_Next.Enabled = false;
                Button_Continue.Enabled = true;
                Button_Continue.Focus();
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;
                TextBox_ChildrenFname.Visible = false;
                TextBox_ChildrenLname.Visible = false;
                return;
            }

            //Si el usuario acabo de captutrar adultos muestro tab de niños
            if (iIndice == iTotalAdultos)
            {
                TextBox_AdultFname.Visible = false;
                TextBox_AdultLname.Visible = false;
                DropDownList_AdultTitle.Visible = false;
                Label11.Visible = false;
                Label9.Visible = false;
                Label10.Visible = false;
                Label12.Visible = false;
                Label13.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true;
                TextBox_ChildrenFname.Visible = true;
                TextBox_ChildrenLname.Visible = true;
            }
        }

        protected void Button_Continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("wf_FlightPayment.aspx");
            Response.Cookies["PassengerAdults"].Expires = DateTime.Now.AddHours(1);
            Response.Cookies["PassengerChildren"].Expires = DateTime.Now.AddHours(1);
        }
    }
}