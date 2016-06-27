<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PIT4Casus.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Homepage</h1>
    </div>
    <div id="headermenu">

        <asp:HyperLink ID="LinkHome" runat="server" NavigateUrl="~/Index.aspx">Home</asp:HyperLink>
&nbsp;<asp:HyperLink ID="LogStatus" runat="server" NavigateUrl="~/Login.aspx">Log in</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome,
        <asp:Label ID="DBUsername" runat="server" Text="Username"></asp:Label>

    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxSearch" runat="server" Width="594px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Zoeken" />
                </td>
            </tr>
        </table>
        <table id="TableResult" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="LabelNaam" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelJaar" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style1" id="TableMovieResult">
            <tr>
                <td>
                    <asp:Label ID="LabelNaam0" runat="server" Text="Naam:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxNaam" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="LabelIMDBNR" runat="server" Text="IMDB nummer:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxIMDBnr" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelAndereNaam" runat="server" Text="Andere naam:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="LabelJaar0" runat="server" Text="Jaar"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxJaar" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="LabelSpeelduur" runat="server" Text="Speelduur:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxSpeelduur" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelVersie" runat="server" Text="Versie:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxVersie" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LabeLand" runat="server" Text="Land:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxLand" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LabelToegevoegd" runat="server" Text="Toegevoegd:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxToegevoegd" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelRegisseur" runat="server" Text="Regisseur:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxRegisseur" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LabelKleur" runat="server" Text="Kleur:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxKleur" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelGesprokenTaal" runat="server" Text="Gesproken taal:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxGTaal" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LabelKijkwijzer" runat="server" Text="Kijkwijzer:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxKijkwijzer" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelVerhaal" runat="server" Text="Verhaal:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBoxVerhaal" runat="server" ReadOnly="True" Width="113px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelIMDBRate" runat="server" Text="IMDB waardering:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxIMDBrate" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LabelPersRate" runat="server" Text="Persoonlijke waardering:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPersRate" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelActeurs" runat="server" Text="Acteurs:"></asp:Label>
                </td>
                <td>
                    <asp:ListBox ID="ListBoxActeurs" runat="server" Rows="2"></asp:ListBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
