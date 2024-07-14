<%@ Page Title="" Language="C#" MasterPageFile="~/forms/adminAnaSayfasi.Master" AutoEventWireup="true" CodeBehind="adminRandevuEkrani.aspx.cs" Inherits="Merve_Çeliktürk_bütünleme.forms.adminRandevuEkrani" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        /* Sayfa genel stil ayarları */
        .container {
            padding: 20px;
        }

        .form-container {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }

        .button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #00274d; /* Lacivert */
            color: white;
            border: none;
            cursor: pointer;
        }

        .button:hover {
            background-color: #001f3f; /* Daha koyu lacivert */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #00274d; /* Lacivert */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <!-- Randevuları Listele -->
        <div class="form-container">
            <h2>Randevuları Listele</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Isim" HeaderText="İsim" />
                    <asp:BoundField DataField="Soyisim" HeaderText="Soyisim" />
                    <asp:BoundField DataField="Tarih" HeaderText="Tarih" />
                    <asp:BoundField DataField="Saat" HeaderText="Saat" />
                    <asp:BoundField DataField="Sube" HeaderText="Şube" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnListele" runat="server" Text="Listele" OnClick="btnListele_Click" CssClass="button" />
        </div>

        <!-- Randevu Oluştur -->
        <div class="form-container">
            <h2>Randevu Oluştur</h2>
            <label for="txtIsim">İsim:</label>
            <asp:TextBox ID="txtIsim" runat="server" placeholder="İsim" />
            
            <label for="txtSoyisim">Soyisim:</label>
            <asp:TextBox ID="txtSoyisim" runat="server" placeholder="Soyisim" />
            
            <label for="txtTarih">Tarih:</label>
            <asp:TextBox ID="txtTarih" runat="server" TextMode="Date" />
            
            <label for="txtSaat">Saat:</label>
            <asp:TextBox ID="txtSaat" runat="server" TextMode="Time" />
            
            <label for="ddlSube">Şube:</label>
            <asp:DropDownList ID="ddlSube" runat="server">
                <asp:ListItem Text="Rize" Value="Rize" />
                <asp:ListItem Text="Ankara" Value="Ankara" />
                <asp:ListItem Text="İstanbul" Value="İstanbul" />
            </asp:DropDownList>
            
            <asp:Button ID="btnOlustur" runat="server" Text="Randevu Oluştur" OnClick="btnOlustur_Click" CssClass="button" />
        </div>

        <!-- Randevu Sil -->
        <div class="form-container">
            <h2>Randevu Sil</h2>
            <label for="txtSilIsim">İsim:</label>
            <asp:TextBox ID="txtSilIsim" runat="server" placeholder="İsim" />
            
            <label for="txtSilSoyisim">Soyisim:</label>
            <asp:TextBox ID="txtSilSoyisim" runat="server" placeholder="Soyisim" />
            
            <label for="txtSilTarih">Tarih:</label>
            <asp:TextBox ID="txtSilTarih" runat="server" TextMode="Date" />
            
            <label for="txtSilSaat">Saat:</label>
            <asp:TextBox ID="txtSilSaat" runat="server" TextMode="Time" />
            
            <label for="ddlSilSube">Şube:</label>
            <asp:DropDownList ID="ddlSilSube" runat="server">
                <asp:ListItem Text="Rize" Value="Rize" />
                <asp:ListItem Text="Ankara" Value="Ankara" />
                <asp:ListItem Text="İstanbul" Value="İstanbul" />
            </asp:DropDownList>
            
            <asp:Button ID="btnSil" runat="server" Text="Randevu Sil" OnClick="btnSil_Click" CssClass="button" />
        </div>
    </div>
</asp:Content>