<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title><?php echo TITLE . ' - ' . $data['title']; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL . 'assets/DataTables/datatables.min.css'; ?>">
    <link href="<?php echo BASE_URL; ?>assets/css/styles.css" rel="stylesheet" />

    

    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="index.html">Admin Ozymandias</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <!-- Navbar-->

        <ul class="navbar-nav ms-auto ms-md-2 me-3 me-lg-6">

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><p><i class="fas fa-users"></i><?php echo $_SESSION['nombre_usuario'];?></p></li>
                    <li>
                        <hr class="dropdown-divider"/>
                    </li>
                    <li><p><i class="fas fa-list"></i><?php echo $_SESSION['email'];?></p></li>
                    <li>
                        <hr class="dropdown-divider"/>
                    </li>
                    <li><a class="dropdown-item" href="<?php echo BASE_URL.'admin/salir'; ?>">Cerrar Session</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        
                        <a class="nav-link" href="<?php echo BASE_URL .'admin/home';?>">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        
                        <a class="nav-link" href="<?php echo BASE_URL .'usuarios';?>">
                            <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                            Usuarios
                        </a>

                        <a class="nav-link" href="<?php echo BASE_URL .'categorias';?>">
                            <div class="sb-nav-link-icon"><i class="fas fa-tags"></i></div>
                            Categorias
                        </a>

                        <a class="nav-link" href="<?php echo BASE_URL .'productos';?>">
                            <div class="sb-nav-link-icon"><i class="fas fa-list"></i></div>
                            Productos
                        </a>

                        <a class="nav-link" href="<?php echo BASE_URL .'pedidos';?>">
                            <div class="sb-nav-link-icon"><i class="fas fa-bell"></i></div>
                            Pedidos
                        </a>
                    </div>
                </div>
                
            </nav>
        </div>
        <div id="layoutSidenav_content">
        <main>