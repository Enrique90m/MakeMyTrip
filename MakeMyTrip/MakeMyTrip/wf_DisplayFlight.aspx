<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_DisplayFlight.aspx.cs" Inherits="MakeMyTrip.wf_DisplayFlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 634px">
    
        <asp:Label ID="Label_From" runat="server" CssClass="auto-style1" style="z-index: 1; left: 254px; top: 37px; position: absolute; " Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 346px; top: 112px; position: absolute" Text="To"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 320px; top: 37px; position: absolute; width: 20px" Text="To: "></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 676px; top: 34px; position: absolute" Text="Children" Visible="False"></asp:Label>
        <asp:Label ID="Label_NoOfAfdults" runat="server" style="z-index: 1; left: 588px; top: 35px; position: absolute; width: 8px; font-weight: 700" Text="0"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 164px; top: 112px; position: absolute" Text="Departure time between: "></asp:Label>
        <asp:Label ID="Label_NoOfChildren" runat="server" style="z-index: 1; left: 658px; top: 34px; position: absolute; font-weight: 700; width: 8px;" Text="0" Visible="False"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 166px; top: 76px; position: absolute" Text="Departure date:"></asp:Label>
        <asp:Label ID="Label_DepartureDate" runat="server" style="z-index: 1; left: 268px; top: 75px; position: absolute; font-weight: 700" Text="Label"></asp:Label>
        <asp:Label ID="Label_TimeEnd" runat="server" style="z-index: 1; left: 375px; top: 113px; position: absolute; font-weight: 700" Text="0"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 606px; top: 34px; position: absolute" Text="Adults"></asp:Label>
        <asp:Label ID="Label_To" runat="server" CssClass="auto-style1" style="z-index: 1; left: 374px; top: 38px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 164px; top: 38px; position: absolute; right: 823px" Text="Ticket from: "></asp:Label>
        <asp:Label ID="Label_TimeStart" runat="server" style="z-index: 1; left: 326px; top: 113px; position: absolute; font-weight: 700; width: 8px;" Text="0"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 510px; top: 35px; position: absolute" Text="Travellers | "></asp:Label>
        <asp:GridView ID="GridView_VuelosDisponibles" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView_VuelosDisponibles_RowCancelingEdit" OnSelectedIndexChanged="GridView_VuelosDisponibles_SelectedIndexChanged" style="z-index: 1; left: 161px; top: 152px; position: absolute; height: 133px; width: 644px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Cancel" Text="Choose this flight" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:Label ID="Label_NoRecordsFound" runat="server" Font-Bold="True" Font-Size="XX-Large" style="z-index: 1; left: 354px; top: 372px; position: absolute; font-weight: 700" Text="No records found" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
