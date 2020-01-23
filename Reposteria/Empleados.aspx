<%@ Page Title="" Language="C#" MasterPageFile="~/Reposteria.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="Reposteria.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1 class="display-4 ml-5">Mis Empleados</h1>
    <div class="container">
      
        <div class="row">
            
            <div class="col-6  d-flex  justify-content-lg-start">
                   <asp:ScriptManager  EnablePartialRendering="true" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="udpMain" runat="server">
                    <ContentTemplate>
                    
                        <asp:Button ID="botonAgregarEmpleado" OnClick="botonAgregarEmpleado_Click" CssClass="btn btn-danger" runat="server" Text="Agregar un nuevo empleado" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            
                <asp:Label ID="lblHidden" runat="server" Text=""></asp:Label>
                 <ajaxtoolkit:modalpopupextender ID="mpePopUp" runat="server" TargetControlID="lblHidden" PopupControlID="divPopUp" BackgroundCssClass="modalBackground"></ajaxtoolkit:modalpopupextender>

             <div id="divPopUp" class="container bg-light border border-dark" role="dialog">
                     <div id="Header" class="header" ><h5 class="mt-3">Nuevo Empleado</h5></div>
                     <div id="main" class="form d-block">
                             <div class="form-group">
                                 <asp:Label CssClass="col-form-label"  runat="server" Text="Nombre" ></asp:Label>
                                  <asp:TextBox  CssClass="form-control" runat="server" ID="entradaNombre"></asp:TextBox>
                             </div>
                         
                            <div class="form-group">
                                 <asp:Label CssClass="col-form-label" runat="server" Text="Apellido" ></asp:Label>
                                 <asp:TextBox CssClass="form-control" runat="server" ID="entradaApellido" ></asp:TextBox>
                            </div>
                           <div class="form-group">
                                 <asp:Label CssClass="col-form-label" runat="server" Text="Telefono" ></asp:Label>
                                 <asp:TextBox  CssClass="form-control" runat="server" ID="entradaTelefono" ></asp:TextBox>
                           </div>
                           <div class="form-group">
                                 <asp:Label CssClass="col-form-label" runat="server" Text="Usuario" ></asp:Label>
                                 <asp:TextBox CssClass="form-control" runat="server" ID="entradaUsuario" ></asp:TextBox>
                            </div>
                           <div class="form-group">
                                 <asp:Label CssClass="col-form-label" runat="server" Text="Contraseña" ></asp:Label>
                                 <asp:TextBox  CssClass="form-control" runat="server" ID="entradaPassword" ></asp:TextBox>
                               </div>

                     </div>
                     <div id="buttons" class=" d-flex">
                              <div id="DivbtnOK" class="">
                             
                                  <asp:Button CssClass="btn btn-success" id="botonConfirmar" runat="server" text="Confirmar"  OnClick="botonConfirmar_Click"/>
                                       
                              </div>
                          <div id="Divbtncancel" class="">
                              <asp:UpdatePanel runat="server">
                                       <ContentTemplate>
                              <asp:Button id="botonCancelar"  CssClass="btn btn-danger ml-3" runat="server" text="Cancelar" OnClick="botonCancelar_Click" />
                                            </ContentTemplate>
                                      </asp:UpdatePanel>
                          </div> 
                     </div>
                </div>
            </div>

            <div class="col-6  d-flex justify-content-end">
                <div class="form-inline">
                    <asp:TextBox runat="server" ID="entradaBusqueda"  CssClass="form-control d-inline" placeholder="Ingrese datos del empleado"></asp:TextBox>
                <asp:Button ID="botonBuscar" runat="server" Text="Buscar" OnClick="botonBuscar_Click" CssClass="btn btn-success ml-3" />
                </div>
                
            </div>

        </div>

    </div>
        <div id="content" >
           
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" CssClass="table table-bordered table-sm table-warning text-center" DataSourceID="Empleados">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                     <asp:CommandField ShowSelectButton="True" ShowEditButton="true"  ShowDeleteButton="true" HeaderText="Acciones" EditText="Editar   | " CancelText="Cancelar" UpdateText=" Actualizar Informacion  | "  SelectText="Seleccionar" DeleteText="Borrar  |  "/>
                </Columns>
            </asp:GridView>
                <asp:SqlDataSource ID="Empleados" runat="server" ConnectionString="<%$ ConnectionStrings:Reposteria_WebConnectionString %>" SelectCommand="SELECT [ID], [Nombre], [Apellido], [Telefono] FROM [Empleados]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Empleados] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [Empleados] ([Nombre], [Apellido], [Telefono]) VALUES (@Nombre, @Apellido, @Telefono)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Empleados] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono WHERE [ID] = @original_ID AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([Telefono] = @original_Telefono) OR ([Telefono] IS NULL AND @original_Telefono IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Nombre" Type="String" />
                        <asp:Parameter Name="original_Apellido" Type="String" />
                        <asp:Parameter Name="original_Telefono" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Nombre" Type="String" />
                        <asp:Parameter Name="original_Apellido" Type="String" />
                        <asp:Parameter Name="original_Telefono" Type="String" />
                    </UpdateParameters>
            </asp:SqlDataSource>
            
               
        </div>

  
  
</asp:Content>
