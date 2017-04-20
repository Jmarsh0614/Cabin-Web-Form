<%@ Page Title="Big Bear Cabins" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Cabin.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: xx-large">
        Guest Reservations Form</p>
        <table class="nav-justified" style="font-size: large">
        <tr>
            <td style="width: 150px; font-size: large">Name:</td>
            <td style="width: 250px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="* Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">Email Address:<br />
                <asp:RegularExpressionValidator ID="revEmail1" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Error Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 250px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Enter a Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">Cabin Selection:</td>
            <td style="width: 250px">
                <asp:CheckBox ID="chkGrizzly" runat="server" Checked="True" Text="Grizzly (3 bedrooms)  $99" />
                <br />
                <asp:CheckBox ID="chkPolar" runat="server" Text="Polar (2 bedrooms)  $89" />
                <br />
                <asp:CheckBox ID="chkKodiak" runat="server" Text="Kodiak (1 bedroom)  $79" />
            </td>
            <td>
                <asp:Label ID="lblCabinError" runat="server" Text="* Select a Cabin" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">Night(s):</td>
            <td style="width: 250px">
                <asp:DropDownList ID="ddlNights" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">Check-In Date:</td>
            <td style="width: 250px">
                <asp:Calendar ID="cldArrival" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                <br />
                <asp:Label ID="lblCalendarError" runat="server" Text="* Select a Valid Date" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblReservation" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 250px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 250px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
    </asp:Content>
