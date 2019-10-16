<%-- 
    Document   : navbar
    Created on : 10-02-2019, 06:07:53 PM
    Author     : cnk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Navbar-->
<nav class="navbar navbarMine navbar-expand-lg navbar-dark bg-primary py-1 text-center ">
    <div class="container">
        <a data-toggle="tooltip" data-placement="right" title="VendeYa!" class="navbar-brand mr-5" href="./">
            <img src="./img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
            VendeYa!
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
                aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0 ml-auto">
                <li class="nav-item active mr-2">
                    <a data-toggle="tooltip" data-placement="top" title="Inicio" class="nav-link"
                       href="./">Inicio<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active mr-2">
                    <a data-toggle="tooltip" data-placement="top" title="Vender" class="nav-link"
                       href="./Vender">Vender</a>
                </li>
                <li class="nav-item active mr-2">
                    <a data-toggle="tooltip" data-placement="top" title="Anuncios" class="nav-link"
                       href="#">Anuncios</a>
                </li>
                <li class="nav-item active mr-2">
                    <a data-toggle="tooltip" data-placement="top" title="¿Preguntas?" class="nav-link"
                       href="./Preguntas">¿Preguntas?</a>
                </li>
                <li class="nav-item active ">
                    <div class="btn-group">
                        <a href="#" class="btn btn-primary dropdown-toggle btn-outline-none" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%if (session.getAttribute("usuario") != null) {
                                    String user = (String) session.getAttribute("usuario");%>
                            <%=user%>
                            <%} else {%>
                            Cuenta
                            <%}%>

                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <%if (session.getAttribute("usuario") != null) {%>
                            <a class="dropdown-item" href="./Profile/">Mi perfil</a>
                            <a class="dropdown-item" href="./CerrarSesion">Cerrar Sesion</a>
                            <%} else {%>
                            <a class="dropdown-item" href="./Login">Iniciar Sesion</a>
                            <a class="dropdown-item" href="./Registrar">Registrarse</a>
                            <%}%>
                        </div>
                    </div>
                </li>
            </ul>
            <form action="#" method="POST"
                  class="form-inline my-2 my-lg-2 ml-auto justify-content-center align-self-center">
                <input class="form-control mr-sm-3 py-1 pr-5" type="search" placeholder="Buscá tu Articulo">
                <button data-toggle="tooltip" data-placement="top" title="Buscar"
                        class="btn btn-light btn-outline-none my-2 my-sm-2 " type="submit">Buscar</button>
            </form>
        </div>
    </div>
</nav>
