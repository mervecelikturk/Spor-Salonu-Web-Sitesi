<%@ Page Title="" Language="C#" MasterPageFile="~/forms/UyeanaSayfasi.Master" AutoEventWireup="true" CodeBehind="randevuAl.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.randevuAl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Sayfa başlığı ve meta etiketleri buraya eklenebilir -->
    <style>
        /* Randevu alma sayfası stil ayarları */
        .randevu-container {
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
        }

        .randevu-container h2 {
            text-align: center;
            color: #00274d; /* Lacivert */
        }

        .randevu-container label {
            display: block;
            margin: 10px 0 5px;
        }

        .randevu-container input[type="text"],
        .randevu-container input[type="date"],
        .randevu-container input[type="time"],
        .randevu-container select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .randevu-container input[type="submit"] {
            background-color: #00274d; /* Lacivert */
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .randevu-container input[type="submit"]:hover {
            background-color: #001f3f; /* Daha koyu lacivert */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Randevu alma formu -->
    <div class="randevu-container">
        <h2>Randevu Al</h2>
        <div id="form1" runat="server">
            <label for="txtIsim">İsim:</label>
            <asp:TextBox ID="txtIsim" runat="server" placeholder="İsminizi girin" />

            <label for="txtSoyisim">Soyisim:</label>
            <asp:TextBox ID="txtSoyisim" runat="server" placeholder="Soyisminizi girin" />

            <label for="txtTarih">Randevu Günü:</label>
            <asp:TextBox ID="txtTarih" runat="server" TextMode="Date" />

            <label for="txtSaat">Randevu Saati:</label>
            <asp:TextBox ID="txtSaat" runat="server" TextMode="Time" />

            <label for="ddlSube">Şube:</label>
            <asp:DropDownList ID="ddlSube" runat="server">
                <asp:ListItem Value="Rize">Rize</asp:ListItem>
                <asp:ListItem Value="Ankara">Ankara</asp:ListItem>
                <asp:ListItem Value="İstanbul">İstanbul</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnRandevuAl" runat="server" Text="Randevu Al" OnClick="btnRandevuAl_Click" />
        </div>
    </div>
</asp:Content>