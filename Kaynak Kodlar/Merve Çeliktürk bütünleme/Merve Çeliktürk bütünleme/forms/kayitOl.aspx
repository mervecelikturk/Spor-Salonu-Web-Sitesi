<%@ Page Title="" Language="C#" MasterPageFile="~/forms/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="kayitOl.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.kayitOl" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">

    <style>
        .register-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .register-form label {
            display: block;
            margin-bottom: 10px;
        }

        .register-form input[type="text"],
        .register-form input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .register-form input[type="submit"] {
            background-color: #00274d;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .register-form input[type="submit"]:hover {
            background-color: #001f3f;
        }
    </style>

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="form">
        <div class="register-container">
            <h2>Kayıt Ekranı</h2>
            <div class="register-form">
                <label for="txtAd">İsim:</label>
                <asp:TextBox ID="txtAd" runat="server" placeholder="İsim" /><br />
                <label for="txtSoyad">Soyisim:</label>
                <asp:TextBox ID="txtSoyad" runat="server" placeholder="Soyisim" /><br />
                <label for="txtTelefon">Telefon Numarası:</label>
                <asp:TextBox ID="txtTelefon" runat="server" placeholder="Telefon Numarası" /><br />
                <label for="txtKullaniciAdi">Kullanıcı Adı:</label>
                <asp:TextBox ID="txtKullaniciAdi" runat="server" placeholder="Kullanıcı Adı" /><br />
                <label for="txtSifre">Şifre:</label>
                <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" placeholder="Şifre" /><br />
                <asp:Button ID="btnKayit" runat="server" Text="Kayıt Ol" OnClick="btnKayit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
