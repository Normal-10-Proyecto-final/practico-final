<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title><?php echo $data['title']; ?></title>
        <link href="<?php echo BASE_URL ;?>assets/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>


    <!-- header!-->
    <body class="bg-dark">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Administrador Ozymandias</h3></div>
                                    <div class="card-body">
                                        <form class="row g-3" id="formulario">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="email" type="email" placeholder="Correo" name="email" value="juanignacioespindola08@gmail.com" />
                                                <label for="email">Correo</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="clave" type="password" placeholder="Contraseña" name="clave" value="admin"/>
                                                <label for="clave">Contraseña</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.html">Olvidaste la contraseña?</a>
                                                <div class="d-grid">
                                                    <button type ="submit" class="btn btn-primary"><i class="fa fas-lock-open"></i>Iniciar</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

            <!-- Footer !-->
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Ozymandias 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terminos &amp; Condiciones</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<?php echo BASE_URL ;?>assets/js/scripts.js"></script>
        <script>
            const base_url = '<?php echo BASE_URL ;?>';
        </script>
        <script src="<?php echo BASE_URL ;?>assets/js/modulos/login.js"></script>
        <script src="<?php echo BASE_URL ;?>assets/js/sweetalert2.all.min.js"></script>
    </body>
</html>
