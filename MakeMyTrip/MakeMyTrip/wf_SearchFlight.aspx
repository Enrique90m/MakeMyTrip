<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_SearchFlight.aspx.cs" Inherits="MakeMyTrip.wf_SearchFlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="height: 430px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 364px; top: 32px; position: absolute" Text="CustomerID"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 253px; top: 74px; position: absolute" Text="Source"></asp:Label>
            <asp:DropDownList ID="DropDownList_CustomerID" runat="server" style="z-index: 1; top: 30px; position: absolute; left: 458px" DataSourceID="SqlDataSource_ClientID" DataTextField="CustomerID" DataValueField="CustomerID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource_ClientID" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [tbCustomer]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList_StartHour" runat="server" style="z-index: 1; left: 350px; top: 103px; position: absolute" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_StartHour_SelectedIndexChanged">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList_EndHour" runat="server" style="z-index: 1; left: 497px; top: 102px; position: absolute">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList_Source" runat="server" style="z-index: 1; left: 308px; top: 71px; position: absolute; " DataSourceID="SqlDataSource_CitySource" DataTextField="CityName" DataValueField="CityCode" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource_CitySource" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CityCode], [CityName] FROM [tbCity]"></asp:SqlDataSource>
        </p>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 464px; top: 71px; position: absolute; right: 436px" Text="Destination"></asp:Label>
        <asp:DropDownList ID="DropDownList_NoOfAdults" runat="server" style="z-index: 1; left: 372px; top: 335px; position: absolute; right: 518px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList_NoOfChildren" runat="server" style="z-index: 1; left: 575px; top: 335px; position: absolute">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList_Destination" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_Destination" DataTextField="CityName" DataValueField="CityCode" style="z-index: 1; left: 543px; top: 68px; position: absolute">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_Destination" runat="server" ConnectionString="<%$ ConnectionStrings:dbFlightHotelConnectionString %>" SelectCommand="SELECT [CityCode], [CityName] FROM [tbCity]"></asp:SqlDataSource>
        <p>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 311px; top: 107px; position: absolute" Text="From "></asp:Label>
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 465px; top: 104px; position: absolute" Text="To"></asp:Label>
            <asp:Calendar ID="Calendar_DepartureDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" style="z-index: 1; left: 432px; top: 137px; position: absolute; height: 188px; width: 202px" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        </p>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 327px; top: 209px; position: absolute; right: 549px;" Text="Departure date"></asp:Label>
        &nbsp;<p>
            <asp:Label ID="Label7" runat="server" Text="Adults" style="z-index: 1; left: 326px; top: 338px; position: absolute; height: 20px"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="Children" style="z-index: 1; left: 510px; top: 337px; position: absolute"></asp:Label>
        </p>
        <asp:Button ID="Button_SearchFlights" runat="server" Text="Search flights" style="z-index: 1; left: 405px; top: 373px; position: absolute; width: 158px;" OnClick="Button_SearchFlights_Click" />
    </form>
</body>
</html>