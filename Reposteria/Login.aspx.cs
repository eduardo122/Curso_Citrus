using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Reposteria
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(Usuario);
        }
        protected void loginBTN_Click(object sender, EventArgs e)
        {
            Reposteria_WebEntities1 entidad = new Reposteria_WebEntities1();
            List<Empleado> empleados = entidad.Empleados.ToList();
            string usuario = Usuario.Text;
            string password = Password.Text;

            var query = from en in empleados
                        select new Listas { listaEmpleados = en };
                        
            foreach(var q in query) {
                if (q.listaEmpleados.Usuario == usuario && q.listaEmpleados.Contraseña == password) {
                    Response.Redirect("Empleados.aspx");
                }
                else{
                    Response.Write("<script> alert('Datos Incorrectos') </script>");
                }
            }

           
        }
    }
}