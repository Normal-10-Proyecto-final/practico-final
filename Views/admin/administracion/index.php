<?php include_once 'Views/template/header-admin.php'; ?>



<div class="container-fluid px-4">
    <h1 class="mt-4">Dashboard</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Control de estado</li>
    </ol>
    <div class="row">
        <div class="col-xl-3 col-md-6">
            <div class="card bg-warning text-white mb-4">
                <div class="card-body"><i class="fas fa-exclamation-circle"></i>Pedidos Pendientes</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <h4 class="my-1 text-white"><?php echo $data['pendientes']['total']; ?><h4>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card bg-primary text-white mb-4">
                <div class="card-body"><i class="fas fa-spinner"></i>Pedidos en Proceso</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <h4 class="my-1 text-white"><?php echo $data['procesos']['total']; ?><h4>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card bg-success text-white mb-4">
                <div class="card-body"><i class="fas fa-check-circle"></i>Pedidos Finalizados</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <h4 class="my-1 text-white"><?php echo $data['finalizados']['total']; ?><h4>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card bg-dark text-white mb-4">
                <div class="card-body"><i class="fas fa-list"></i>Total Productos</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <h4 class="my-1 text-white"><?php echo $data['productos']['total']; ?><h4>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <!-- Pie Chart -->
        <div class="col-xl-5 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Estado de pedidos</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-pie pt-6 pb-4">
                        <canvas id="myPieChart"></canvas>
                    </div>
                    <div class="mt-4 text-center small">
                        <span class="mr-2">
                            <i class="fas fa-circle text-warning"></i> <p>Pendientes</p>

                        </span>
                        <span class="mr-2">
                            <i class="fas fa-circle text-info"></i> En proceso
                        </span>
                        <span class="mr-2">
                            <i class="fas fa-circle text-success"></i> Finalizados
                        </span>
                    </div>
                </div>
            </div>
        </div>
<!-- .................................................................... !-->
       




    </div>
</div>





<div class="container-fluid px-4">
    <div class="row">
        <div class="col-xl-6">
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-chart-area me-1"></i>
                    Area Chart Example
                </div>
                <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
            </div>
        </div>
        <div class="col-xl-6">
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-chart-bar me-1"></i>
                    Bar Chart Example
                </div>
                <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
            </div>
        </div>
    </div>
</div>
</div>
<br>
<br>

<?php include_once 'Views/template/footer-admin.php'; ?>
<script src="<?php echo BASE_URL; ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/demo/chart-pie-demo.js"></script>
</body>

</html>