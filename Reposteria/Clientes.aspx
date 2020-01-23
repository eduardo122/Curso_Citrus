<%@ Page Title="" Language="C#" MasterPageFile="~/Reposteria.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Reposteria.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <asp:Button ID="botonAgregarCliente" CssClass="btn btn-danger" runat="server" Text="Agregar un nuevo cliente" />
            </div>
            <div class="col-6">
                <div class="form-inline">
                    <asp:TextBox runat="server" ID="entradaBusqueda"  CssClass="form-control d-inline" placeholder="Ingrese el nombre del cliente"></asp:TextBox>
                <asp:Button ID="botonBuscar" runat="server" Text="Buscar" OnClick="botonBuscar_Click" CssClass="btn btn-success ml-3" />
                </div>
                
            </div>

        </div>
    </div>
        <div id="content" >
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="DatasourceDePrueba" CssClass="table table-bordered table-sm">
                <Columns>
                    
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" HeaderText="Acciones" EditText="Editar | " DeleteText="Borrar  | " UpdateText="Actualizar información  | "
                         CancelText="Cancelar" SelectText="Seleccionar" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="DatasourceDePrueba" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Reposteria_WebConnectionStringDePrueba %>" DeleteCommand="DELETE FROM [Empleados] WHERE [ID] = @original_ID AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL))" InsertCommand="INSERT INTO [Empleados] ([Nombre], [Apellido], [telefono]) VALUES (@Nombre, @Apellido, @telefono)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [Nombre], [Apellido], [telefono] FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [telefono] = @telefono WHERE [ID] = @original_ID AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_telefono" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_telefono" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
 
    </asp:Content>
