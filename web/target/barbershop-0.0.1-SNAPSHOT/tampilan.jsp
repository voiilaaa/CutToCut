<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
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
	
 		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Cut To Cut Barbershope</title>
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 

        <meta name="description" content="Salon Bootstrap Themes & Templates Salon bootstrap themes and templates will help you create an amazing website for your beauty salon of any kind in no time." /> 
        <link href="img/beauty-salon_logo_96dp.png" rel="apple-touch-icon" sizes="96x96">
        <link href="img/beauty-salon_logo_96dp.png" rel="icon" sizes="96x96" type="image/png">
        <meta content="img/beauty-salon_logo_96dp.png" name="msapplication-TileImage">
        
        <meta property="og:url" content="https://www.boostraptheme.com/demo/index.html" />
        <meta property="og:title" content="Beauty and Salon - Free Bootstrap 4 Template | Boostraptheme" />
        <meta property="og:locale" content="en_IN" /> 
        <meta property="og:site_name" content="Boostraptheme" />
        <meta name="twitter:card" content="summary" />
        <meta name="twitter:site" content="BoostrapTheme" />
        <meta name="twitter:creator" content="BoostrapTheme" />
		
		<link href="https://fonts.googleapis.com/css?family=Lobster|Roboto:400,700" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
        <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/app.css">

        <script src="js/jquery.min.js"></script>
        <script> 
            $(window).on('load', function(){ $(".loader").fadeOut(2000); }); 
            $(function () {
                new WOW().init();
            });
        </script>
</head>
<body>
 <div class="loader"></div>
        <!-- NAVIGATION 
            =================-->

            <nav class="navbar navbar-expand-lg navbar-light" id="mainNav" data-toggle="affix">
              <div class="container-fluid">
              	<a class="navbar-brand js-scroll-trigger" href="index.html"><img src="img/logos.png" style="max-height: 60px;" alt="" class="img-fluid"></a>
                <button class="navbar-toggler navbar-toggler-center  ml-auto py-3 my-2 " type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                  Menu
                  <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                  <ul class="navbar-nav text-uppercase ml-auto">
                  	<li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#home">Home</a>
                    </li>
                  	<li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#services">Services</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#portfolio">Hair style</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#testimonials">Testimonials</a>
                    </li> 
                    <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>

        <!-- HEADER 
            =================-->
            <header id="home">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                      <div class="carousel-item active" > 
                        <div class="home-content-box"> 
                            <div class="home-content-box-inner text-center">
                                <div class="home-heading animated fadeInDown" >
                                    <h3>Fascinating than any <br> fashion salon</h3>
                                </div>
                                <div class="home-btn wow fadeInUp" data-wow-delay="0.3s" >
                                    <a class=" js-scroll-trigger" href="#contact" role="button" title="View Our Work"><button class="btn btn-lg btn-general btn-greenish ">Book Now</button></a>
                                <br><br><br>
                                    <a class=" js-scroll-trigger" href="#contact" role="button" title="View Our Work">Jalan Raya Centex Gg. Epatik 2 Dalam No.12A RT 15/10 Ciracas, Jakarta Timur<br>DEKAT KOLAM RENANG TIRTA YUDHA</a>
                                </div>
                            </div>
                        </div>                    
                      </div>
                      <div class="carousel-item" >
                        <div class="home-content-box"> 
                            <div class="home-content-box-inner text-center">
                                <div class="home-heading animated fadeInDown" >
                                	<h3>your hair style <br> our passionate team </h3>
                                </div>
                                <div class="home-btn fadeInDown">
                                    <a class=" js-scroll-trigger" href="#contact" role="button" title="View Our Work"><button class="btn btn-lg btn-general btn-greenish ">Book Now</button></a>
                                <br><br><br>
                                    <a class=" js-scroll-trigger" href="#contact" role="button" title="View Our Work">Jalan Raya Centex Gg. Epatik 2 Dalam No.12A RT 15/10 Ciracas, Jakarta Timur<br>DEKAT KOLAM RENANG TIRTA YUDHA</a>
                                </div>
                            </div>
                        </div> 
                      </div> 
                    </div> 
                </div>
            </header>
 

        <!-- SERVICES 
            =================-->
            <section id="services" class="services">
                <div class="container">
                	<div class="row mb-5">
                        <div class="col-md-12 text-center mb-5">
                            <div class="heading wow fadeInUp" data-wow-delay="0.3s">
                                <h1>Services</h1>
                                <div class="bord-bot"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-cont wow fadeInUp" data-wow-delay="0.3s">
                                <img src="img/service/service-1.jpg" alt="" class="img-fluid">
                                <div class="service-desc">Haircut <p>RP 35.000</p></div>

                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-cont wow fadeInUp" data-wow-delay="0.6s">
                                <img src="img/service/service-2.jpg" alt="" class="img-fluid">
                                <div class="service-desc">Treaming <p>RP 100.000</p></div>
                                
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-cont wow fadeInUp" data-wow-delay="0.9s">
                                <img src="img/service/service-3.jpg" alt="" class="img-fluid">
                                <div class="service-desc">Shaving <p>RP 60.000</p></div>
                                
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-cont wow fadeInUp" data-wow-delay="1.2s">
                                <img src="img/service/service-4.jpg" alt="" class="img-fluid">
                                <div class="service-desc">Coloring <p>RP 80.000</p></div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        <!-- ABOUT 
            =================-->
            <section id="about" class="about">
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-md-12 text-center ">
                            <div class="heading wow fadeInUp" data-wow-delay="0.3s">
                                <h1>About Us</h1>
                                <div class="bord-bot"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 my-auto">
                            <div class="body-cont mb-5 wow fadeInUp" data-wow-delay="0.6s">
                                <h3>Good Hair style Good Selfie</h3>
                                <div class="bord-bottom"></div>
                                <p>Born & Raised in Jakarta, ID. hair is Brayen and Andhea's business. Established in April 2019 The Barber Shop's vision was to bring early Americana back at its finest. to give the best service and experience this industry has to offer. Our thoughtfully curated collection of superior hair, skin, and shave essentials are designed to unleash what makes you, you. You’ve got your own story, your own signature statement. We offer a curated collection of grooming must-haves to free your best self and fuel your next level. Our superior assortment of hair, skin and shaving essentials gets the job done in the simplest, most powerful way possible. Make sure to stop in and enjoy a complimentary beverage and good vibes.
                                <br><br>
                                BUKA :<br>
                                SETIAP HARI : 08.00 - 22.00</p>
                            </div>
                        </div>
                        <div class="col-md-8 m-auto text-center">
                            <div class="body-img-1 wow fadeInUp" data-wow-delay="0.9s">
                                <img src="img/treamer-small.png" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div> 
                </div>
            </section> 

		<!-- PERFECT STYLE 
            =================-->
            <section class="perfect-style" id="perfect-style">
            	<div class="container">
            		<div class="row">
            			<div class="col-md-6 my-auto">
            				<div class="perfect-style-desc text-center  wow fadeInLeft" data-wow-delay="0.3s">
            					<h3>Perfect Style</h3>
								<p>Barbershop profesional benar benar menawarkan jenis perawatan yang baik dan masing masing perawatan dilengkapi dengan produk yang bagus. perawatan adalah aspek yang penting untuk membuat pengalaman baik bagi customer terhadap barbershop kami. </p>
            				</div>
            			</div>
            		</div>
            	</div>
            </section>


        <!-- PORTFOLIO 
            =================-->
            <section id="portfolio" class="portfolio pb-0 pt-5">
                <div class="container-fluid">
                	<div class="row mb-5">
                        <div class="col-md-12 text-center mb-3">
                            <div class="heading wow fadeInUp" data-wow-delay="0.3s">
                                <h1>Our Hair Style</h1>
                                <div class="bord-bot"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/1.png" title="Salon Style">
                                    <img src="img/portfolio/1.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/2.png" title="Salon Style">
                                    <img src="img/portfolio/2.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/3.png" title="Salon Style">
                                    <img src="img/portfolio/3.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/4.png" title="Salon Style">
                                    <img src="img/portfolio/4.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/5.png" title="Salon Style">
                                    <img src="img/portfolio/5.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/6.png" title="Salon Style">
                                    <img src="img/portfolio/6.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/7.png" title="Salon Style">
                                    <img src="img/portfolio/7.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 p-0">
                            <div class="port-cont">
                                <a href="img/portfolio/8.png" title="Salon Style">
                                    <img src="img/portfolio/8.png" alt="Salon Style" class="img-fluid">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        <!-- TESTIMONIALS 
            =================-->
            <section id="testimonials" class="testimonials">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="testimonial-slider" class="owl-carousel owl-theme">
                                <?php 
                                    $sql = "SELECT * FROM testimoni";
                                    $query = mysqli_query($db ,$sql);

                                    while($barang = mysqli_fetch_array($query)){  

                                    ?>
                                <table>
                                    <tr>
                                        <td>
                                            <div class="testimonial">
                                                <div class="pic">
                                                    <img src="img/icontesti.png">
                                                </div>
                                                <p class="description">
                                                       <?php echo $barang['message']; ?>
                                                </p>
                                                <h3 class="title"><?php echo $barang['nama']; ?></h3>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
<div>
    <input type="submit" name="Feedback" value="Feedback?" class="btn btn-general btn-greenish btn-xl text-uppercase" style="color:white; border-color: white; background-color:#495057; margin-top: 60px; width: 100%;" data-toggle="modal" data-target="#myModal">
</div>
                </div>
            </section> 
  
        <!-- CONTACT FORM
            =================-->
            <section id="contact" class="contact pb-0">
              <div class="container"> 
                <div class="row mb-5">
                    <div class="col-md-12 text-center">
                        <div class="heading">
                            <h1>Contact Us</h1>
                            <div class="bord-bot"></div>
                            <p class="desc">We would love to hear from you!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                  <div class="col-lg-12">
                      <div class="row">
                        <div class="col-md-6">
                        <input type="text" name="id" id="id">
                          <div class="form-group">
                            <input class="form-control" name="nama" id="nama" type="text" placeholder="Name *" required data-validation-required-message="Please enter your name.">
                            <p class="help-block text-danger"></p>
                          </div>
                          <div class="form-group">
                            <input class="form-control" name="email" id="email" type="email" placeholder="Email (youremail@gmail.com) *" required data-validation-required-message="Please enter your email address.">
                            <p class="help-block text-danger"></p>
                          </div>
                          <div class="form-group">
                            <input class="form-control" name="phone" id="phone" type="tel" pattern="[0-9]+" maxlength="13" placeholder="Phone *" required data-validation-required-message="Masukan Nomor Telepon">
                            <p class="help-block text-danger"></p>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <input class="form-control" id="tgl" name="tgl" type="text" placeholder="Tanggal *" required data-validation-required-message="Masukan Tanggal Booking.">
                            <p class="help-block text-danger"></p>
                          </div>
                          <div class="form-group">
                           <input class="form-control" id="waktu" name="waktu" type="text" placeholder="Tanggal *" required data-validation-required-message="Masukan Tanggal Booking.">
                            <p class="help-block text-danger"></p>
                          </div>
                          <div class="form-group">
                           <input class="form-control" id="service" name="service" type="text" placeholder="Tanggal *" required data-validation-required-message="Masukan Tanggal Booking.">
                            <p class="help-block text-danger"></p>
                          </div>
                          <input type="text" name="status" id="status" value="New"/>
                        </div>
                        <div class="col-lg-12 text-center">
                          <input type="submit" name="ADD" value="Booking" onclick="save_booking();">
                        </div>
                      </div>
                  </div>
                </div>
              </div>
              
                <script>
  
  var tblUsers = document.getElementById('tbl_users_list');
  var databaseRef = firebase.database().ref('users/');
  var rowIndex = 1;
  
  databaseRef.once('value', function(snapshot) {
    snapshot.forEach(function(childSnapshot) {
   var childKey = childSnapshot.key;
   var childData = childSnapshot.val();
   
   var row = tblUsers.insertRow(rowIndex);
   var cellId = row.insertCell(0);
   var cellName = row.insertCell(1);
   cellId.appendChild(document.createTextNode(childKey));
   cellName.appendChild(document.createTextNode(childData.user_name));
   
   rowIndex = rowIndex + 1;
    });
  });
   
  function save_booking(){
   var b_nama = document.getElementById('nama').value;
   var b_email = document.getElementById('email').value;
   var b_phone = document.getElementById('phone').value;
   var b_tgl = document.getElementById('tgl').value;
   var b_waktu = document.getElementById('waktu').value;
   var b_service = document.getElementById('service').value;
   var b_status = document.getElementById('status').value;
  
   var uid = firebase.database().ref().child('users').push().key;
   
   var data = {
    id: uid,
    nama: b_nama,
    email: b_email,
    phone: b_phone,
    tgl: b_tgl,
    waktu: b_waktu,
    service: b_service,
    status: b_status
   }
   
   var updates = {};
   updates['/users/' + uid] = data;
   firebase.database().ref().update(updates);
   
   alert('The user is created successfully!');
   reload_page();
  }
  
  function reload_page(){
   window.location.reload();
  }
  
  </script>

<!-- JQUERY AND PHP UNTUK DISABLE TANGGAL KEMARIN -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $( function() {
                $( "#tgl" ).datepicker({
                    minDate: 0,
                    dateFormat: 'dd/mm/yy' 
                });
            });
// VALIDASI EMAIL NICH
            var emailval= /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;

            function cekemail(e){
            var mengembalikanemail=emailval.test(e.value)
            if (mengembalikanemail==false){
            alert("Masukkan Alamat Email yang Benar.")
            e.select()
            }
            return mengembalikanemail
            }

        </script>


              <!-- FOOTER 
                   =================-->
                <footer>
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-md-5">
                        <span class="copyright">Copyright &copy; 2018<a href="https://boostraptheme.com/"></a></span>
                      </div>
                      <div class="col-md-3">
                        <ul class="list-inline social-buttons">
                          <li class="list-inline-item">
                            <a href="https://www.instagram.com/yandy_blendz/?hl=id">
                              <i class="fa fa-instagram"></i>
                            </a>
                          </li>
                          <li class="list-inline-item">
                            <a href="http://www.facebook.com">
                              <i class="fa fa-facebook"></i>
                            </a>
                          </li>
                          <li class="list-inline-item">
                            <a href="https://api.whatsapp.com/send?phone=6289630022265">
                              <i class="fa fa-whatsapp"></i>
                            </a>
                          </li>
                        </ul>
                      </div>
                      <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                          <li class="list-inline-item">
                            <a href="#">Privacy Policy</a>
                          </li>
                          <li class="list-inline-item">
                            <a href="#">Terms of Use</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </footer> 

                <a href="#home" id="back-to-top" class="btn btn-sm btn-green btn-back-to-top  js-scroll-trigger hidden-sm hidden-xs" title="home" role="button">
                    <i class="fa fa-angle-double-up"></i>
                </a>

            </section>

<!-- MODAL POP UP WINDOW NICH -->
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form method="POST" action="simpanfeedback.php">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Form Feedback</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label>Name</label><br>
                <input type="text" class="form-control" name="namaFeedback"/>
            </div>
            <div class="form-group">
                <label>Message</label>
                <textarea rows="4" cols="50" class="form-control" name="areaFeedback"></textarea>
            </div>
        </div>
        <div class="modal-footer">
          <input type="submit" name="buttonFeedback" class="btn btn-danger" value="Send" />
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      </form>
    </div>
  </div>
  
</div>
<!-- MODAL POP UP WINDOW NICH -->
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script> 
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jqBootstrapValidation.min.js"></script>
        <script src="js/contact_me.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/app.js"></script>

</body>
</html>