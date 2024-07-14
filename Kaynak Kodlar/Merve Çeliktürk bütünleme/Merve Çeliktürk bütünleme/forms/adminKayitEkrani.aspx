<%@ Page Title="" Language="C#" MasterPageFile="~/forms/adminAnaSayfasi.Master" AutoEventWireup="true" CodeBehind="adminKayitEkrani.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.adminKayitEkrani" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        /* Genel stil ayarları */
        .container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }

        .form-container {
            width: 45%;
            background-color: #f9f9f9;
            padding: 20px;
            border: 1px solid #ccc;
        }

        .form-container h2 {
            text-align: center;
        }

        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
        }

        .form-container input[type="submit"] {
            background-color: #00274d; /* Lacivert */
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #001f3f; /* Daha koyu lacivert */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <!-- Kayıt Ekle Formu -->
        <div class="form-container">
            <h2>Kayıt Ekle</h2>
            <label for="txtAd">İsim:</label>
            <asp:TextBox ID="txtAd" runat="server" placeholder="ad" /><br />
            <label for="txtSoyad">Soyisim:</label>
            <asp:TextBox ID="txtSoyad" runat="server" placeholder="soyad" /><br />
            <label for="txtTelefon">Telefon Numarası:</label>
            <asp:TextBox ID="txtTelefon" runat="server" placeholder="Telefon Numarası" /><br />
            <label for="txtKullaniciAdi">Kullanıcı Adı:</label>
            <asp:TextBox ID="txtKullaniciAdi" runat="server" placeholder="Kullanıcı Adı" /><br />
            <label for="txtSifre">Şifre:</label>
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" placeholder="Şifre" /><br />
            <asp:Button ID="btnKayit" runat="server" Text="Kayıt Ekle" OnClick="btnKayit_Click" />
        </div>

        <!-- Kayıt Sil Formu -->
        <div class="form-container">
            <h2>Kayıt Sil</h2>
            <label for="txtKullaniciAdiSil">Kullanıcı Adı:</label>
            <asp:TextBox ID="txtKullaniciAdiSil" runat="server" placeholder="Kullanıcı Adı" /><br />
            <asp:Button ID="btnSil" runat="server" Text="Kayıt Sil" OnClick="btnSil_Click" />
        </div>
    </div>
</asp:Content>