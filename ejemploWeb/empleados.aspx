<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="empleados.aspx.cs" Inherits="ejemploWeb.empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-8">
                <h1>Calculo de Salario</h1>
                <asp:Label ID="Label1" runat="server" Text="Nombre: " CssClass="form-label"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nombre Requerido" ControlToValidate="txtNombre" ValidationGroup="a" Display="None"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Salario Bruto: " CssClass="form-label"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Salario Requerido" ControlToValidate="txtsalarioB" ValidationGroup="a" Display="None"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtsalarioB" runat="server" CssClass="form-control" ValidationGroup="a" TextMode="Number"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Deducción de Caja: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtcaja" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="Salario Neto: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtsalarioN" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                <asp:Button ID="btnCalcular" runat="server" Text="Calcular"  CssClass="btn btn-primary mt-5" OnClick="btnCalcular_Click" ValidationGroup="a" />
                <asp:Button ID="btnDetalles" runat="server" Text="Ver Detalles" CssClass="btn btn-secondary mt-5" OnClick="btnDetalles_Click"/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="a" ForeColor="Red" CssClass="mt-3"/>
            </div>
        </div>

    </div>
</asp:Content>
