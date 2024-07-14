<%@ Page Title="" Language="C#" MasterPageFile="~/forms/UyeanaSayfasi.Master" AutoEventWireup="true" CodeBehind="antrenorler.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.antrenorler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Sayfa başlığı ve meta etiketleri buraya eklenebilir -->
    <style>
        /* Sayfa özel stil ayarları */
        .content-container {
            max-width: 800px;
            margin: 20px auto;
        }

        .content-left {
            float: left;
            width: 50%;
            text-align: center;
        }

        .content-right {
            float: right;
            width: 50%;
            text-align: center;
        }

        .content-left h1,
        .content-right h1 {
            font-size: 24px;
            color: #00274d; /* Lacivert */
        }

        .content-left p,
        .content-right p {
            margin-top: 10px;
            line-height: 1.6;
        }

        .content-left img,
        .content-right img {
            margin-top: 20px;
            max-width: 100%;
            height: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-container">
        <div class="content-left">
            <h1>Antrenör 1</h1>
            <p>Bu antrenör hakkında kısa bilgi.</p>
            <img src="images/antrenor1.jpg" alt="Antrenör 1" />
        </div>
        <div class="content-right">
            <h1>Antrenör 2</h1>
            <p>Bu antrenör hakkında kısa bilgi.</p>
            <img src="images/antrenor2.jpg" alt="Antrenör 2" />
        </div>
        <div class="content-left">
            <h1>Antrenör 3</h1>
            <p>Bu antrenör hakkında kısa bilgi.</p>
            <img src="images/antrenor3.jpg" alt="Antrenör 3" />
        </div>
        <div class="content-right">
            <h1>Antrenör 4</h1>
            <p>Bu antrenör hakkında kısa bilgi.</p>
            <img src="images/antrenor4.jpg" alt="Antrenör 4" />
        </div>
    </div>
</asp:Content>