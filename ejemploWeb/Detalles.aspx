<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="ejemploWeb.Detalles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">  
            <div class="col-6"> 
                <h1>Calculo de Salario</h1>
                <asp:Label ID="Label1" runat="server" Text="Nombre: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Salario Bruto: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtsalarioB" runat="server" CssClass="form-control" ValidationGroup="a" TextMode="Number"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Salario diario: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtSalarioDiario" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                <asp:Button ID="btnRegresar" runat="server" Text="Regresar" OnClick="btnRegresar_Click" CssClass="btn btn-primary mt-5"/>
            </div>
        </div>
    </div>
</asp:Content>
