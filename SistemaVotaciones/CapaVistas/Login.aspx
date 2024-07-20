﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaVotaciones.CapaVistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <link href="../css/login.css.css" rel="stylesheet" />

</head>
<body class="align">

  <div class="grid align__item">

    <div class="register">

      <svg xmlns="http://www.w3.org/2000/svg" class="site__logo" width="56" height="84" viewBox="77.7 214.9 274.7 412"><defs><linearGradient id="a" x1="0%" y1="0%" y2="0%"><stop offset="0%" stop-color="#8ceabb"/><stop offset="100%" stop-color="#378f7b"/></linearGradient></defs><path fill="url(#a)" d="M215 214.9c-83.6 123.5-137.3 200.8-137.3 275.9 0 75.2 61.4 136.1 137.3 136.1s137.3-60.9 137.3-136.1c0-75.1-53.7-152.4-137.3-275.9z"/></svg>

      <h2>Sign Up</h2>

      <form id="form1" runat="server" action="" method="post" class="form">

        <div class="form__field">
            <label for="usuario">usuario</label>
            <asp:TextBox ID="tusuario" runat="server"></asp:TextBox>
        </div>

        <div class="form__field">
            <label for="Password">Password</label>
            <asp:TextBox ID="tclave" runat="server"></asp:TextBox>
        </div>

        <div class="form__field">
            <asp:Button ID="bingresar" runat="server" Text="Ingresar" OnClick="bingresar_Click" />
            <asp:Label ID="lmensaje" runat="server" ForeColor="Red"></asp:Label>

        </div>

      </form>

      <p>Already have an accout? <a href="#">Log in</a></p>

    </div>

  </div>

</body>
</html>
