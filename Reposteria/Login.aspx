<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Reposteria.Login" %>

<!DOCTYPE html>

<html class="bg-dark" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="css/AdminLTE.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <title>Iniciar Sesion</title>
</head>
<body class="bg-dark" >
    <div class="form-box" id="login-box">
        <div class="header bg-danger">
            Iniciar Sesion
        </div>
        <form id="formulario" runat="server">
            <div class="body bg-gray">
                <div class="form-group">
                    <asp:TextBox ID="Usuario" CssClass="form-control" placeholder ="Introduzca su usuario"  runat="server" ></asp:TextBox>
                </div>
                <div class="form-group ">
                    <asp:TextBox ID="Password" CssClass="form-control" placeholder ="Introduzca su contaseña" Textmode="Password" runat="server"  ></asp:TextBox>
                    
                </div>
                <div class="form-group">
                     <asp:Button ID="loginBTN" runat="server" Text="Iniciar sesion"  CssClass="btn btn-danger btn-block" OnClick="loginBTN_Click" />
                </div>
               
            </div>
        </form>
     </div>
</body>
</html>
