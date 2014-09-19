<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wf_FlightTravelers.aspx.cs" Inherits="MakeMyTrip.wf_FlightTravelers" %>

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
<body style="height: 428px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label_CustomerFname" runat="server" style="z-index: 1; left: 378px; top: 65px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_CustomerLname" runat="server" style="z-index: 1; left: 560px; top: 65px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label_CustomerAdress" runat="server" style="z-index: 1; left: 352px; top: 117px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 273px; top: 34px; position: absolute; font-weight: 700" Text="Customer information"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style1" style="z-index: 1; left: 293px; top: 65px; position: absolute; right: 527px" Text="First name: "></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style1" style="z-index: 1; left: 291px; top: 117px; position: absolute; right: 553px" Text="Adress: "></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style1" style="z-index: 1; left: 475px; top: 65px; position: absolute; right: 346px" Text="Last name: "></asp:Label>
        <asp:Label ID="Label8" runat="server" CssClass="auto-style1" style="z-index: 1; left: 268px; top: 169px; position: absolute" Text="Traveler details"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 277px; top: 309px; position: absolute; height: 20px" Text="Last name"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 277px; top: 266px; position: absolute" Text="First name"></asp:Label>
        <asp:Button ID="Button_Next" runat="server" OnClick="Button_Next_Click" style="z-index: 1; left: 454px; top: 335px; position: absolute; width: 195px; height: 46px;" Text="Next" />
        <asp:Label ID="Label11" runat="server" CssClass="auto-style1" style="z-index: 1; left: 400px; top: 189px; position: absolute" Text="Adults"></asp:Label>
        <asp:Label ID="Label12" runat="server" height="19" style="z-index: 1; left: 277px; top: 222px; position: absolute" Text="Title"></asp:Label>
        <asp:TextBox ID="TextBox_AdultLname" runat="server" style="z-index: 1; left: 352px; top: 310px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox_AdultFname" runat="server" style="z-index: 1; left: 351px; top: 265px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 628px; top: 222px; position: absolute" Text="First name" Visible="False"></asp:Label>
        <asp:Label ID="Label14" runat="server" height="19px" style="z-index: 1; left: 715px; top: 192px; position: absolute; font-weight: 700" Text="Children" Visible="False"></asp:Label>
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 628px; top: 257px; position: absolute" Text="Last name" Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox_ChildrenLname" runat="server" style="z-index: 1; left: 700px; top: 252px; position: absolute" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox_ChildrenFname" runat="server" style="z-index: 1; left: 698px; top: 217px; position: absolute" Visible="False"></asp:TextBox>
        <asp:Button ID="Button_Continue" runat="server" style="z-index: 1; left: 661px; top: 387px; position: absolute; width: 137px" Text="Continue payment" Enabled="False" OnClick="Button_Continue_Click" />
        <asp:DropDownList ID="DropDownList_AdultTitle" runat="server" style="z-index: 1; left: 351px; top: 222px; position: absolute">
            <asp:ListItem>Mr</asp:ListItem>
            <asp:ListItem Value="Ms"></asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
