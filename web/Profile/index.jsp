<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="google" content="notranslate">
        <jsp:include page="../headers/profile.jsp"/>
        <title>VendeYa! | César Guerrero</title>
    </head>

    <body>
        <!--Navbar-->
        <jsp:include page="../headers/navbarquestions.jsp" />


        <div class="container-fluid">
            <div class="row ml-1 mt-3">
                <!--PERFIL-->
                <div class="col-md-4 col-sm-12 col-12 col-lg-4 ">
                    <div class=" mt-3 py-3">
                        <div class="row">
                            <div class="text-center col-12 col-sm-12">
                                <img class=" profile rounded-circle " src="img/bg.jpg">
                                <h4 class="text-primary mt-2">César Guerrero. <i class="fas fa-check text-primary"></i></h4>
                                <p class="text-muted">Sonsonate, El Salvador.</p>
                                <p class="text-muted">Se unió el 27/04/19</p>
                            </div>
                            <div class="text-center col-12 ">
                                <div class="card informacion">
                                    <div class="card-header font-weight-bold ">
                                        INFORMACIÓN DE LA CUENTA
                                    </div>
                                    <div class="card-body shadow-lg ">
                                        <h5 class="card-title font-italic text-primary ">César Guerrero.</h5>
                                        <p class="card-text"><i class="fas fa-envelope mr-2 text-primary"></i>Correo
                                            Electrónico: <a class=" text-primary">cguerrerobatres@gmail.com</a> <br>
                                            <i class="fas fa-mobile mr-2 text-primary"></i>Número de Teléfono: <a
                                                class=" text-primary">7877-1710</a><br>
                                            <i class="fas fa-print mr-2 text-primary"></i>Número de Publicaciones: <a
                                                class="text-primary">0</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 mt-5 col-lg-8 col-sm-12 col-12 ">
                    <!--PUBLICACIONES-->
                    <div class="container ">
                        <!-- CONTENEDORES DE INFORMACION-->
                        <div class="row ">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tab" data-toggle="pill" href="#MisPublicaciones"
                                           role="tab" aria-controls="home" aria-selected="true">Mis publicaciones.</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab" data-toggle="pill" href="#Vendido" role="tab"
                                           aria-controls="profile" aria-selected="false">Vendidos.</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="messages-tab" data-toggle="pill" href="#Caducado" role="tab"
                                           aria-controls="messages" aria-selected="false">Caducados.</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="settings-tab" data-toggle="pill" href="#settings" role="tab"
                                           aria-controls="settings" aria-selected="false">Ajustes del Perfil.</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--ACTIVOS-->
                        <div class="tab-content ">
                            <div class="tab-pane fade show active" id="MisPublicaciones" role="tabpanel"
                                 aria-labelledby="home-tab">
                                <div class="row mt-3">
                                    <div class="col-lg-12">
                                        <div class="card mb-3" style="max-width: 900px;">
                                            <div class="row no-gutters">
                                                <div class="col-md-4 col-12 col-lg-4">
                                                    <a class="text-decoration-none" href="#">
                                                        <img src="img/producto.jpg"
                                                             class="card-img img-fluid producto mt-4" alt="...">
                                                    </a>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="card-body">
                                                        <a class="text-decoration-none" href="#">
                                                            <h5 class="card-title text-primary">Iphone 6s Plus</h5>
                                                            <p class="card-text text-dark">Vendo o Cambio Iphone 6s Plus 10
                                                                de 10 sin
                                                                detalles,
                                                                paso en línea.<br>
                                                            <p class="text-primary">$150.00</p>
                                                            </p>
                                                        </a>
                                                        <p class="card-footer"><small class="text-muted">Hace 4
                                                                horas.</small><br>
                                                        <div class="row">
                                                            <div class="col-6"><button
                                                                    class="btn btn-primary text-white btn-sm">Actualizar.</button>
                                                            </div>
                                                            <div class="col-6"><button
                                                                    class="btn btn-primary text-white btn-sm">Vendido.</button>
                                                            </div>
                                                        </div>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Vendidos-->
                            <div class="tab-pane fade" id="Vendido" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="row mt-3">
                                    <div class="col-lg-12">
                                        <div class="card mb-3" style="max-width: 900px;">
                                            <div class="row no-gutters">
                                                <div class="col-md-4">
                                                    <img src="img/producto.jpg"
                                                         class="card-img img-fluid productovendido mt-2" alt="...">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="card-body">

                                                        <h5 class="card-title text-muted">Iphone 6s Plus</h5>
                                                        <p class="card-text">Vendo o Cambio Iphone 6s Plus 10 de 10 sin
                                                            detalles,
                                                            paso en línea.<br>
                                                        <p class="text-primary text-muted">$150.00</p>
                                                        </p>
                                                        <p class="card-footer"><small class="text-muted">Vendido</small><br>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--CADUCADOS-->
                            <div class="tab-pane fade" id="Caducado" role="tabpanel" aria-labelledby="messages-tab">
                                <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                    <div class="row mt-3">
                                        <div class="col-lg-12">
                                            <div class="card mb-3" style="max-width: 900px;">
                                                <div class="row no-gutters">
                                                    <div class="col-md-4">
                                                        <img src="img/producto.jpg"
                                                             class="card-img img-fluid productovendido mt-4" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h5 class="card-title text-muted">Iphone 6s Plus</h5>
                                                            <p class="card-text">Vendo o Cambio Iphone 6s Plus 10 de 10 sin
                                                                detalles,
                                                                paso en línea.<br>
                                                            <p class="text-primary text-muted">$150.00</p>
                                                            </p>
                                                            <p class="card-footer"><small
                                                                    class="text-muted">Caducado</small><br>
                                                            <div class="row">
                                                                <div class="col-12"><button
                                                                        class="btn btn-primary text-white btn-sm">Volver
                                                                        a
                                                                        Publicar.</button>
                                                                </div>
                                                            </div>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--AJUSTES DEL PERFIL-->
                            <div class="tab-pane fade" id="settings" role="tabpanel" aria-labelledby="settings-tab">
                                <div class="container mt-3">
                                    <div class="row">
                                        <p>En esta parte puedes modificar la información de tu perfil.</p>
                                    </div>
                                    <form class="text-center" action="" method="GET">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Correo Electrónico</label>
                                                    <input type="email" name="Correo" class="form-control"
                                                           id="exampleInputEmail1" aria-describedby="emailHelp" width="350px"
                                                           placeholder="example@gmail.com" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Nombre de Usuario</label>
                                                    <input type="text" name="Usuario" class="form-control"
                                                           id="exampleInputPassword1" placeholder="Example1" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Contraseña</label>
                                                    <input type="password" name="Contraseña" class="form-control"
                                                           id="exampleInputPassword1" placeholder="Contraseña" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Nueva Contraseña</label>
                                                    <input type="password" name="NuevaContraseña " class="form-control"
                                                           id="exampleInputPassword1" placeholder="Nueva Contraseña" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Número de Teléfono</label>
                                                    <input type="text" name="NumeroTelefono" class="form-control"
                                                           id="exampleInputPassword1" placeholder="5555-5555" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6 ">
                                                <div class="form-group">
                                                    <label for="exampleFormControlFile1">Imagen de Perfil</label>
                                                    <input type="file" name="imgProfile " class="form-control-file"
                                                           id="exampleFormControlFile1">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 col-6">
                                                <button type="reset" class="btn btn-primary">Cancelar</button>
                                            </div>
                                            <div class="col-md-6 col-6"><button type="submit"
                                                                                class="btn btn-primary">Guardar</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
     <br>
      <br>
       <br>
        <br>
    <!--Footer-->
    <footer class="bg-primary mt-3">
        <div class="container">
            <div class="row text-white text-center justify-content-center py-3">
                <p class="pt-3">Copyright &copy; Todos los Derechos Reservados 2019</p>
            </div>
        </div>
    </footer>
    <!--JavaScript-->
    <jsp:include page="../headers/javascript.jsp"/>
    <!--Funcion de Tooltip-->
    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>
</body>

</html>