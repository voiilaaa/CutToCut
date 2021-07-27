<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts-regis/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css-regis/style.css">
    
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
<body>

        <!-- Sign up form -->
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <input type="tel" pattern="[0-9]+" name="phone" id="phone" placeholder="Your Number"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password"/>
                            </div>
<!--                             <div class="form-group"> -->
<!--                                 <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" /> -->
<!--                                 <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label> -->
<!--                             </div> -->
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" onclick="save_regis();" value="Register"/>
                                <a href="webuser.jsp?#contact" class="cancel" style="text-decoration:none">Cancel</a>
                                </div>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images-regis/signup-image.jpg" alt="sing up image"></figure>
                    </div>
                </div>
            </div>
        
        
        <script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-auth.js"></script>
  <script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-database.js"></script>
  <script>
   var databaseRef = firebase.database().ref('registrasi/');
   var rowIndex = 1;
                
   databaseRef.once('value', function(snapshot) {
   snapshot.forEach(function(childSnapshot) {
   var childKey = childSnapshot.key;
   var childData = childSnapshot.val();
                 
   });
});
                
  function save_regis(){
   var r_name = document.getElementById('name').value;
   var r_phone = document.getElementById('phone').value;
   var r_email = document.getElementById('email').value;
   var r_pass = document.getElementById('pass').value;
  
   var uid = firebase.database().ref().child('registrasi').push().key;
   
   if (r_name != "" && r_phone != "" && r_email != "" && r_pass != "") {
	   var data = {
			    nama: r_name,
			    phone: r_phone,
			    email: r_email,
			    pass: r_pass
			   }
			   
			   var updates = {};
			   updates['/registrasi/' + uid] = data;
			   firebase.database().ref().update(updates);
			   
			   alert('Registrasi Berhasil, Silahkan Login');
			   window.location.href = 'webuser.jsp?#contact';
	}else{
		 alert('Data tidak boleh kosong');
   
  	}
  }
  
  </script>
         <!-- JS -->
    <script src="vendor-regis/jquery/jquery.min.js"></script>
    <script src="js-regis/main.js"></script>

</body>
</html>