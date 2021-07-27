<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Cut to Cut Barbershop</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- The core Firebase JS SDK is always required and must be listed first -->
  <script src="https://www.gstatic.com/firebasejs/4.9.0/firebase.js"></script>
  
  <!-- CSS UNTUK DISABLE TANGGAL KEMARIN -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  
  <script src="https://www.gstatic.com/firebasejs/6.2.0/firebase-app.js"></script>
<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAiO5b4KWGLxtVr1P6B-5ug_OkkxNsDTjY",
    authDomain: "able-scope-243707.firebaseapp.com",
    databaseURL: "https://able-scope-243707.firebaseio.com",
    projectId: "able-scope-243707",
    storageBucket: "able-scope-243707.appspot.com",
    messagingSenderId: "640910814372",
    appId: "1:640910814372:web:59faa714d2a001e4"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Data</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Data</b>Barbershop</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="images/superadmin.png" class="user-image" alt="User Image">
              <span class="hidden-xs">Admin</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              	<li class="user-header">
                	<img src="images/superadmin.png" class="img-circle" alt="User Image">
                	<p>
                  	Admin Barbershop
				  	<small>Untuk Manage Data</small>
                	</p>
              	</li>
              <!-- Menu Body -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-center">
                  <a href="../index.html" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="images/superadmin.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Admin</p>
          <a><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
          <a href="home.jsp">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Create New</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="regis.jsp"><i class="fa fa-circle-o"></i> Create New Account</a></li>
          </ul>
        </li> 
		<li class="treeview">
          <a href="#">
            <i class="fa fa-black-tie"></i> <span>Employee</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="NewEmployee.html"><i class="fa fa-circle-o"></i>Create New Employee</a></li>
            <li><a href="EmployeeList.html"><i class="fa fa-circle-o"></i>Manage Employee</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Barbershop
        <small>Booking</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Edit Booking</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
       <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Booking | Edit</h3>
			  <div class="pull-right box-tools">
                <a type="button" class="btn btn-danger btn-sm" href="home.jsp">
                  <i class="fa fa-times"></i></a>
              </div>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
              <div class="box-body">
              		<div class="form-group">
	                	  <label for="PoseName">ID</label>
		                  <input type="text" class="form-control" id="id" disabled="disabled">
	                </div>
	                <div class="form-group">
	                	  <label for="PoseName">Nama</label>
		                  <input type="text" class="form-control" id="nama" disabled="disabled">
	                </div>
	                <div class="form-group">
	                	  <label for="PoseEmail">Email</label>
		                  <input type="text" class="form-control" id="email" disabled="disabled">
	                </div>
	                <div class="form-group">
	                	  <label for="PosePhone">Phone</label>
		                  <input type="text" class="form-control" id="phone" disabled="disabled">
	                </div>
	                <div class="form-group">
			            <label for="PoseName">Tanggal (dd/mm/yyyy)</label>
			            <input type="text" name="tgl" id="tgl" class="form-control"/>
			         </div>
			         <div class="form-group">
			            <label for="PoseName">Waktu</label>
			            <select class="form-control" name="waktu" id="waktu">
                                <option value="09.00">09.00</option>
                                <option value="10.00">10.00</option>
                                <option value="11.00">11.00</option>
                                <option value="12.00">12.00</option>
                                <option value="13.00">13.00</option>
                                <option value="14.00">14.00</option>
                                <option value="15.00">15.00</option>
                                <option value="16.00">16.00</option>
                                <option value="17.00">17.00</option>
                                <option value="18.00">18.00</option>
                                <option value="19.00">19.00</option>
                                <option value="20.00">20.00</option>
                                <option value="21.00">21.00</option>
                    	</select>
          			</div>
          			<div class="form-group">
			            <label for="PoseName">Service</label>
			            <select class="form-control" name="service" id="service">
			                                <option value="Haircut">Haircut</option>
			                                <option value="Trimming">Trimming</option>
			                                <option value="Shaving">Shaving</option>
			                                <option value="Coloring">Coloring</option>
			            </select>
			         </div>
			          <div class="form-group">
			            <label for="PoseName">Status</label>
			            <select class="form-control" name="status" id="status">
			                                <option value="New">New</option>
			                                <option value="On Proses">On Proses</option>
			                                <option value="Finish">Finish</option>
			            </select>
			          </div>
			  <!-- /.box-body -->
			  <div class="box-footer" align="center">
                <button type="submit" onclick="update_booking();" class="btn btn-warning">Update</button>
              </div>
        <!-- JQUERY AND PHP UNTUK DISABLE TANGGAL KEMARIN -->
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $( function() {
            	jQuery.noConflict(); 
                $( "#tgl" ).datepicker({
                    minDate: 0,
                    dateFormat: 'dd/mm/yy' 
                });
            });
        </script>
          </div>
    </div>
    </section>
       
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b></b>
    </div>
    <strong>No Copyright &copy;.</strong> All rights
    reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="bower_components/raphael/raphael.min.js"></script>
<script src="bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

<script>
  $(function () {
    //bootstrap WYSIHTML5 - text editor
    $('posePost').wysihtml5()
  })
 
</script>
  <script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-auth.js"></script>
  <script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-database.js"></script>
<script>

$( document ).ready(function() {
var GET = {};
var childKey;
var childData;
var query = window.location.search.substring(1).split("&");
for (var i = 0, max = query.length; i < max; i++)
{
    if (query[i] === "") // check for trailing & with no param
        continue;

    var param = query[i].split("=");
    GET[decodeURIComponent(param[0])] = decodeURIComponent(param[1] || "");
	firebase.database().ref("/booking/" + GET.key).once("value", function(snapshot) {
if (snapshot.exists()) {
   childKey = snapshot.key;
   childData = snapshot.val();
   
   document.getElementById("id").value = childKey;
   document.getElementById("nama").value = childData.nama;
   document.getElementById("email").value = childData.email;
   document.getElementById("phone").value = childData.phone;
   document.getElementById("tgl").value = childData.tgl;
   document.getElementById("waktu").value = childData.waktu;
   document.getElementById("service").value = childData.service;
   document.getElementById("status").value = childData.status;
     
}else{
   alert("no data found!")
   window.location.href = 'booking.jsp';
  }
});
}
});

function update_booking(){
	   var id = document.getElementById('id').value;
	   var nama = document.getElementById('nama').value;
	   var email = document.getElementById('email').value;
	   var phone = document.getElementById('phone').value;
	   var tanggal = document.getElementById('tgl').value;
	   var waktu = document.getElementById('waktu').value;
	   var service = document.getElementById('service').value;
	   var status = document.getElementById('status').value;
	   
	   var data = {
	    id: id,
	    nama: nama,
	    email: email,
	    phone: phone,
	    tgl: tanggal,
	    waktu: waktu,
	    service: service,
	    status: status
	   }
	   
	   var updates = {};
	   updates['/booking/' + id] = data;
	   firebase.database().ref().update(updates);
	   
	   alert('Updated is Successfully!');
	   
	   window.location.href = "booking.jsp";
	  }

function reload_page(){
   window.location.reload();
  }

</script>
</body>
</html>