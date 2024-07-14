<%@ Page Title="" Language="C#" MasterPageFile="~/forms/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="adminGirisi.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.adminGirisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Sayfa başlığı ve meta etiketleri buraya eklenebilir -->
    <style>
        /* Admin giriş sayfası stil ayarları */
        .giris-container {
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
        }

        .giris-container h2 {
            text-align: center;
            color: #00274d; /* Lacivert */
        }

        .giris-container label {
            display: block;
            margin: 10px 0 5px;
        }

        .giris-container input[type="text"],
        .giris-container input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .giris-container input[type="submit"] {
            background-color: #00274d; /* Lacivert */
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .giris-container input[type="submit"]:hover {
            background-color: #001f3f; /* Daha koyu lacivert */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Admin giriş formu -->
    <div class="giris-container">
        <h2>Admin Girişi</h2>
        <div id="form1">
            <label for="txtKullaniciAdi">Kullanıcı Adı:</label>
            <asp:TextBox ID="txtKullaniciAdi" runat="server" placeholder="Kullanıcı Adınızı girin" />

            <label for="txtSifre">Şifre:</label>
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" placeholder="Şifrenizi girin" />

            <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click" />
        </div>
    </div>
</asp:Content>