<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Quick Website Quote</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 26px;
            width: 490px;
        }
        .style2
        {
            height: 24px;
            width: 490px;
        }
        .style3
        {
            width: 490px;
        }
        .style4
        {
            height: 21px;
            width: 490px;
        }
    </style>
</head>
<body>
    <div class="bodyText"><form id="form1" runat="server">
    
        <br />
        <table style="width: 519px; height: 84px">
            <tr>
                <td class="style1">
                    Number of Static Pages Required</td>
                <td style="height: 26px; width: 296px;">
                    <asp:DropDownList ID="noofpages" runat="server" Width="100px">
                        <asp:ListItem Selected="True" Value="0">Please select</asp:ListItem>
                        <asp:ListItem >1</asp:ListItem>
                        <asp:ListItem Value="5">2-5</asp:ListItem>
                        <asp:ListItem Value="8">6-10</asp:ListItem>
                        <asp:ListItem Value="12">11-15</asp:ListItem>
                        <asp:ListItem Value="18">16-20</asp:ListItem>
                        <asp:ListItem Value="25">21-30</asp:ListItem>
                        <asp:ListItem Value="35">31-40</asp:ListItem>
                        <asp:ListItem Value="45">41-50</asp:ListItem>
                     </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="style1">
                    Domain Name</td>
                <td style="height: 26px; width: 296px;">
                    <asp:DropDownList ID="domainList" runat="server" Width="100px">
                        <asp:ListItem Value="Not Required" Selected="True">Not Required</asp:ListItem>
                        <asp:ListItem Value=".co.uk">.co.uk</asp:ListItem>
                        <asp:ListItem Value=".com">.com</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="style2">
                    Email mailboxes</td>
                <td style="width: 296px; height: 24px;">
                    <asp:DropDownList ID="noofmailboxes" runat="server" Width="100px">
                        <asp:ListItem Selected="True" Value="0.01">Not Required</asp:ListItem>
                        <asp:ListItem Value="1">1-2</asp:ListItem>
                        <asp:ListItem Value="2.50">3-5</asp:ListItem>
                        <asp:ListItem Value="5">6-10</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="style3">
                    Hosting</td>
                <td style="width: 296px">
                    Included</td>
            </tr>
            <tr>
                <td class="style3">
                    Maintenance service*</td>
                <td style="width: 296px">
                    <asp:RadioButton ID="rbStdMtce" runat="server" Checked="True" GroupName="hosting"
                        Text="Standard" ToolTip="Includes upto 15 minutes updates per month" Width="96px" />&nbsp;
                    <asp:RadioButton ID="rbPremMtce" runat="server" GroupName="hosting" Text="Premium" ToolTip="Guarantees future browser compatibility for your web pages" Width="104px" /></td>
            </tr>
            <tr>
                <td class="style4">
                    Ecommerce / Shopping Cart including PMS**</td>
                <td style="height: 21px; width: 296px;">
                    <asp:DropDownList ID="ecommercereqd" runat="server" Width="100px">
                        <asp:ListItem Selected="True" Value="Not Required">Not Required</asp:ListItem>
                        <asp:ListItem Value="Required">Required</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="style4">
                    Content Management System CMS***</td>
                <td style="width: 296px; height: 21px">
                    <asp:DropDownList ID="cmsreqd" runat="server" Width="100px">
                        <asp:ListItem Selected="True" Value="Not Required">Not Required</asp:ListItem>
                        <asp:ListItem Value="Required">Required</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
    
    
        <br />
        <asp:Button ID="calculateButton" runat="server" Text="Calculate" OnClick="Button1_Click" />
        <asp:Button ID="resetbutton" runat="server" Text="retry" Visible="False" /><br />
        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="noofpages"
                        ErrorMessage="Number of Pages is Required" Width="219px" InitialValue="0"></asp:RequiredFieldValidator><br />
        <asp:Label ID="Label1" runat="server" Text="The estimated build cost of your website is £"
            Visible="False" Font-Bold="True"></asp:Label><asp:Label ID="quote" runat="server" Font-Bold="True"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="The ongoing hosting & maintenance fees are £"
            Visible="False" Font-Bold="True"></asp:Label><asp:Label ID="maintenancefees" runat="server" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="per month" Visible="False" Font-Bold="True"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" 
            Text="If you would like to request a firm quote please complete &lt;br/&gt;our " 
            Visible="False" Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.root.lamtha2.co.uk/website_quote/website_quote.htm"
            Target="_blank" Visible="False" Font-Bold="True" Font-Size="Medium">quote request form</asp:HyperLink>
        <br />
        <br />
        <strong>Notes:</strong><br />
        Hosting is on business grade servers with 24x7 monitioring<br />
        *Standard maintenance includes upto 15 minutes of minor changes per 
        <br />
                month. Premium maintenance provides for unforseen technology changes to
        <br />
                ensure future compatibility.<br />
        **PMS - Property Management System allows you to update your products&nbsp;<br />
        via
        a web browser.<br />
        ***CMS - Content Management System allows self-updating of static web         pages.<br />
    </form></div>
</body>
</html>
