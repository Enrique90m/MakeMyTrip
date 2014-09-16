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
    
        <asp:Label ID="Label_From" runat="server" CssClass="auto-style1" style="z-index: 1; left: 254px; top: 37px; position: absolute; right: 591px" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 346px; top: 112px; position: absolute" Text="To"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 320px; top: 37px; position: absolute; width: 20px" Text="To: "></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 676px; top: 34px; position: absolute" Text="Children" Visible="False"></asp:Label>
        <asp:Label ID="Label_NoOfAfdults" runat="server" style="z-index: 1; left: 588px; top: 35px; position: absolute; width: 8px; font-weight: 700" Text="0"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 164px; top: 112px; position: absolute" Text="Departure time between: "></asp:Label>
        <asp:Label ID="Label_NoOfChildren" runat="server" style="z-index: 1; left: 658px; top: 34px; position: absolute; font-weight: 700" Text="0" Visible="False"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 166px; top: 76px; position: absolute" Text="Departure date:"></asp:Label>
        <asp:Label ID="Label_DepartureDate" runat="server" style="z-index: 1; left: 268px; top: 75px; position: absolute; font-weight: 700" Text="Label"></asp:Label>
        <asp:Label ID="Label_TimeEnd" runat="server" style="z-index: 1; left: 375px; top: 113px; position: absolute; font-weight: 700" Text="0"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 606px; top: 34px; position: absolute" Text="Adults"></asp:Label>
        <asp:Label ID="Label_To" runat="server" CssClass="auto-style1" style="z-index: 1; left: 374px; top: 38px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 164px; top: 38px; position: absolute; right: 642px" Text="Ticket from: "></asp:Label>
        <asp:Label ID="Label_TimeStart" runat="server" style="z-index: 1; left: 321px; top: 113px; position: absolute; font-weight: 700" Text="0"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 510px; top: 35px; position: absolute" Text="Travellers | "></asp:Label>
        <asp:GridView ID="GridView1" runat="server" style="position: absolute; z-index: 1; left: 82px; top: 152px; height: 133px; width: 747px">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
