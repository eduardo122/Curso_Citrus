using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reposteria
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(botonBuscar);
            
        }

        protected void botonBuscar_Click(object sender, EventArgs e)
        {

            Empleados.SelectCommand = $"SELECT [ID], [Nombre], [Apellido], [Telefono] FROM [Empleados] where Nombre Like '%{entradaBusqueda.Text}%'";
        }

        protected void botonAgregarEmpleado_Click(object sender, EventArgs e)
        {
            mpePopUp.Show();
            
        }

        protected void botonConfirmar_Click(object sender, EventArgs e)
        {
            mpePopUp.Hide();
            Reposteria_WebEntities1 entidad = new Reposteria_WebEntities1();
            Empleado nuevoEmpleado = new Empleado();
             nuevoEmpleado.Nombre = entradaNombre.Text;
             nuevoEmpleado.Apellido = entradaApellido.Text;
             nuevoEmpleado.Telefono = entradaTelefono.Text;
             nuevoEmpleado.Usuario = entradaUsuario.Text;
             nuevoEmpleado.Contraseña = entradaPassword.Text;
             entidad.Empleados.Add(nuevoEmpleado);
             entidad.SaveChanges();
             GridView1.DataBind();
             entradaNombre.Text = String.Empty;
             entradaApellido.Text = String.Empty;
             entradaTelefono.Text = String.Empty;
             entradaUsuario.Text = String.Empty;
             entradaPassword.Text = String.Empty;
           

        }

        protected void botonCancelar_Click(object sender, EventArgs e)
        {
            mpePopUp.Hide();
        }
    }
}