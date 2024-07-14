<%@ Page Title="" Language="C#" MasterPageFile="~/forms/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="girisYap.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.girisYap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <style>
        .login-container {
            max-width: 300px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
        }

        .login-container input[type="submit"] {
            background-color: #00274d; /* Lacivert */
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .login-container input[type="submit"]:hover {
            background-color: #001f3f; /* Daha koyu lacivert */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div id="form">
        <div class="login-container">
            <h2>Giriş Yap</h2>
            <asp:TextBox ID="txtKullaniciAdi" runat="server" placeholder="Kullanıcı Adı" /><br />
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" placeholder="Şifre" /><br />
            <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click" />
        </div>
    </div>
</asp:Content>
