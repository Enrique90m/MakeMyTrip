<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_ReviewFlight.aspx.cs" Inherits="MakeMyTrip.wf_ReviewFlight" %>

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
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 493px; width: 876px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1; left: 525px; top: 431px; position: absolute" Text="____________________________________"></asp:Label>
        <asp:Label ID="Label_ChildrenFare" runat="server" style="z-index: 1; left: 426px; top: 343px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style1" style="z-index: 1; left: 531px; top: 419px; position: absolute; height: 15px" Text="Grand total: "></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style1" style="z-index: 1; left: 524px; top: 386px; position: absolute" Text="____________________________________"></asp:Label>
        <asp:Label ID="Label_TotalChildren" runat="server" style="z-index: 1; left: 633px; top: 343px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_ChildrenTax" runat="server" style="z-index: 1; left: 531px; top: 343px; position: absolute; height: 19px" Text="Label"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 216px; top: 343px; position: absolute; right: 626px" Text="Children"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style1" style="z-index: 1; left: 633px; top: 260px; position: absolute" Text="Total incluiding taxes"></asp:Label>
        <asp:Label ID="Label_AdultTax" runat="server" style="z-index: 1; left: 531px; top: 300px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 215px; top: 300px; position: absolute" Text="Adults"></asp:Label>
        <asp:Label ID="Label_TotalAdults" runat="server" style="z-index: 1; left: 633px; top: 300px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_AdultFare" runat="server" style="z-index: 1; left: 426px; top: 300px; position: absolute; right: 416px" Text="Label"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="auto-style1" style="z-index: 1; left: 547px; top: 135px; position: absolute" Text="Arrival"></asp:Label>
        <asp:Label ID="Label17" runat="server" CssClass="auto-style1" style="z-index: 1; left: 168px; top: 224px; position: absolute" Text="Reviwe fare details"></asp:Label>
        <asp:Label ID="Label18" runat="server" CssClass="auto-style1" style="z-index: 1; left: 531px; top: 260px; position: absolute; width: 34px" Text="Taxes"></asp:Label>
        <asp:Label ID="Label19" runat="server" CssClass="auto-style1" style="z-index: 1; left: 215px; top: 135px; position: absolute; right: 597px" Text="Flight No"></asp:Label>
        <asp:Label ID="Label20" runat="server" CssClass="auto-style1" style="z-index: 1; left: 426px; top: 135px; position: absolute" Text="Departure"></asp:Label>
        <asp:Label ID="Label21" runat="server" CssClass="auto-style1" height="19px" style="z-index: 1; left: 321px; position: absolute; width: 34px; top: 135px" Text="Airlane"></asp:Label>
        <asp:Label ID="Label23" runat="server" CssClass="auto-style1" style="z-index: 1; left: 168px; top: 66px; position: absolute" Text="Review flight details"></asp:Label>
        <asp:Label ID="Label24" runat="server" height="19px" style="z-index: 1; left: 266px; position: absolute; bottom: 372px" Text="---&gt;"></asp:Label>
        <asp:Label ID="Label_Destination" runat="server" style="z-index: 1; top: 100px; position: absolute; left: 320px" Text="Label"></asp:Label>
        <p>
            <asp:Label ID="Label22" runat="server" CssClass="auto-style1" style="z-index: 1; left: 216px; top: 260px; position: absolute; right: 569px" Text="Traveler type"></asp:Label>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style1" height="19px" style="z-index: 1; left: 322px; top: 260px; position: absolute" Text="Seats"></asp:Label>
            <asp:Label ID="Label32" runat="server" CssClass="auto-style1" style="z-index: 1; left: 426px; top: 260px; position: absolute" Text="Base fare"></asp:Label>
        </p>
        <asp:Label ID="Label_Arrival" runat="server" style="z-index: 1; left: 547px; top: 171px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_Airlane" runat="server" style="z-index: 1; left: 321px; top: 171px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_Departure" runat="server" style="z-index: 1; top: 171px; position: absolute; right: 347px; left: 426px" Text="Label_Departure"></asp:Label>
        <asp:Label ID="Label_FlightNo" runat="server" style="z-index: 1; left: 217px; top: 171px; position: absolute; right: 625px" Text="Label"></asp:Label>
        <asp:Label ID="Label_NoOfAdults" runat="server" style="z-index: 1; left: 322px; top: 300px; position: absolute; bottom: 174px" Text="Label"></asp:Label>
        <asp:Label ID="Label_NoOfChildren" runat="server" style="z-index: 1; left: 323px; top: 341px; position: absolute; height: 19px" Text="Label"></asp:Label>
        <asp:Label ID="Label_Source" runat="server" style="z-index: 1; left: 214px; top: 100px; position: absolute; right: 628px" Text="Label"></asp:Label>
        <asp:Label ID="Label_GrandTotal" runat="server" style="z-index: 1; left: 622px; top: 419px; position: absolute" Text="Label"></asp:Label>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
    </form>
</body>
</html>
