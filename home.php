<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-4-avatar-2754580_120522.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>พนักงาน</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <link href="assets/css/text.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="orange" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="home.php" class="simple-text">
                    Pong Beauty Salon
                </a>
            </div>
            

            <ul class="nav">
                <li>
                    <a href="#">
                        <i class="pe-7s-user"></i>
                        <?php
                            session_start();
                        ?>
                        <p> :  <? echo $_SESSION['Name']; ?></p>
                    </a>
                </li>
                <li class="active">
                    <a href="home.php">
                        <i class="pe-7s-graph"></i>
                        <p>หน้าหลัก</p>
                    </a>
                </li>
                <li >
                    <a href="beautician.php">
                        <i class="pe-7s-id"></i>
                        <p>พนักงาน</p>
                    </a>
                </li>
                <li >
                    <a href="product.php">
                        <i class="pe-7s-safe"></i>
                        <p>สินค้า</p>
                    </a>
                </li>
                <li >
                    <a href="ptype.php">
                        <i class="pe-7s-ticket"></i>
                        <p>ประเภทสินค้า</p>
                    </a>
                </li>
                <li >
                    <a href="sevices.php">
                        <i class="pe-7s-display2"></i>
                        <p>บริการ</p>
                    </a>
                </li>
                <li >
                    <a href="pdetail.php">
                        <i class="pe-7s-bookmarks"></i>
                        <p>ขายสินค้า/บริการ</p>
                    </a>
                </li>
               

            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Home</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="logout.php" class="text1">
                               ออกจากระบบ
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row" >
                    <div class="col-md-9">
                        <div class="carousel-item">
                            <img src="https://images.unsplash.com/photo-1521590832167-7bcbfaa6381f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&h=160&q=60" class="d-block w-100" alt="...">
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="home.php">
                                Home
                            </a>
                        </li>

                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> ,เวปไซต์ระบบหลังร้านป๋องบิวตี้
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>


</html>
