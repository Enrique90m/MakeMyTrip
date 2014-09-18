<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_FlightPayment.aspx.cs" Inherits="MakeMyTrip.wf_FlightPayment" %>

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
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1; left: 238px; top: 252px; position: absolute" Text="Total children fare"></asp:Label>
        <asp:Label ID="Label_Tax" runat="server" style="z-index: 1; left: 328px; top: 293px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_TotalChildrenFare" runat="server" style="z-index: 1; left: 373px; top: 252px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_Total" runat="server" style="z-index: 1; left: 333px; top: 331px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style1" style="z-index: 1; left: 240px; top: 332px; position: absolute" Text="Total amount"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style1" style="z-index: 1; left: 240px; top: 293px; position: absolute" Text="Tax amount"></asp:Label>
        <asp:Label ID="Source" runat="server" style="z-index: 1; left: 328px; top: 72px; position: absolute; height: 19px; right: 531px" Text="Label"></asp:Label>
        <asp:Label ID="Label_TotalAdultFare" runat="server" style="z-index: 1; left: 354px; top: 206px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_NoOfChildren" runat="server" style="z-index: 1; left: 300px; top: 159px; position: absolute; height: 18px" Text="Label"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="auto-style1" style="z-index: 1; left: 240px; top: 161px; position: absolute" Text="Children"></asp:Label>
        <asp:Label ID="Label11" runat="server" CssClass="auto-style1" style="z-index: 1; left: 240px; top: 207px; position: absolute" Text="Total adult fare"></asp:Label>
        <asp:Label ID="Label_Destination" runat="server" style="z-index: 1; left: 415px; top: 72px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label13" runat="server" CssClass="auto-style1" style="z-index: 1; left: 240px; top: 116px; position: absolute; bottom: 391px; right: 610px" Text="Adults"></asp:Label>
        <asp:Label ID="Label_NoOfAdults" runat="server" style="z-index: 1; left: 304px; top: 116px; position: absolute; bottom: 391px" Text="Label"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="auto-style1" style="z-index: 1; left: 380px; top: 71px; position: absolute; height: 16px; width: 39px; right: 474px" Text="to"></asp:Label>
        <asp:Label ID="Label16" runat="server" CssClass="auto-style1" style="z-index: 1; left: 240px; top: 72px; position: absolute; right: 551px" Text="Ticket from"></asp:Label>
    </form>
</body>
</html>
