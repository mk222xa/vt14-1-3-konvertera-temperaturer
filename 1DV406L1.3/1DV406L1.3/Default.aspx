<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1DV406L1._3.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <title>Konvertera temperaturer</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>Konvertera temperaturer</h1>

                <%--First temp --%>
                <div id="firstTemp">
                    <asp:Label ID="firstTempLabel" runat="server" Text="Start temperatur"></asp:Label>
                    <asp:TextBox ID="firstTempTextBox" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får inte vara tomt" ControlToValidate="firstTempTextBox"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Måste vara ett heltal" ControlToValidate="firstTempTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
                </div>
                <%--Second temp --%>
                <div id="secondTemp">
                    <asp:Label ID="secondTempLabel" runat="server" Text="Slut temperatur"></asp:Label>
                    <asp:TextBox ID="secondTempTextBox" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fältet får inte vara tomt" ControlToValidate="secondTempTextBox"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Måste vara ett heltal" ControlToValidate="secondTempTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Sluttemperaturen måste vara större än starttemperaturen" ControlToValidate="secondTempTextBox" ControlToCompare="firstTempTextBox" Operator="GreaterThan" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                </div>
                <%--Increase steps --%>
                <div id="tempIncrease">
                    <asp:Label ID="tempIncreaseLabel" runat="server" Text="Temperatursteg"></asp:Label>
                    <asp:TextBox ID="increaseTempTextBox" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fältet får inte vara tomt" ControlToValidate="increaseTempTextBox"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Måste vara ett heltal" ControlToValidate="increaseTempTextBox" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Värdet måste vara mellan 1-100" MaximumValue="100" MinimumValue="1" ControlToValidate="increaseTempTextBox" Type="Integer" Display="Dynamic"></asp:RangeValidator>
                </div>
                <%--Conversion type buttons --%>
                <div id="convertButtons">
                    <asp:Label ID="convertLabel" runat="server" Text="Typ av konvertering"></asp:Label>
                    <asp:RadioButton ID="celciusRadioButton" runat="server" GroupName="ConvertRadioButtons" Text="Celcius till Fahrenheit" Checked="true" />
                    <asp:RadioButton ID="fahrenheitRadioButton" runat="server" GroupName="ConvertRadioButtons" Text="Fahrenheit till Celcius" />
                    <asp:Button ID="convertButton" runat="server" Text="Konvertera" OnClick="convertButton_Click" />
                </div>
                <%--Error messages --%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Ett fel har inträffat. Åtgärda felet och försök igen" />
            </div>
            <%--Table presentation --%>
            <div id="tableDiv">
                <asp:Table ID="Table1" runat="server" Visible="false">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell Text="Konverterade"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="temperaturer"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell ID="firstTempHeader"></asp:TableCell>
                        <asp:TableCell ID="secondTempHeader"></asp:TableCell>
                    </asp:TableRow>


                </asp:Table>

            </div>
        </div>
    </form>
</body>
</html>
