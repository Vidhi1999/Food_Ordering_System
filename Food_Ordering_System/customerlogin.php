    <?php
include('login_u.php'); // Includes Login Script

if(isset($_SESSION['login_user2'])){
header("location: foodlist.php"); //Redirecting to myrestaurant Page
}
?>

<!DOCTYPE html>
<html>

  <head>
    <title> customer Login | Food Finder </title>
  </head>
   <link rel="stylesheet" type = "text/css" href ="css/contactus.css">
  <link rel="stylesheet" type = "text/css" href = "css/managerlogin.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

   <style type="text/css">
     body {
 margin: 0; padding: 0; font-size: small; color: #333;
 
  background-image:url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhMVFhUVFxcSFRcVFRcVFRUVFRcXFxUVFRcYHSggGBolHRUVITEhJykrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lICYtLS0tLSstLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAL4BCQMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUCAwYHAf/EADwQAAIBAwEFBQUGBQMFAAAAAAABAgMEESEFEjFBUQYiYXGBE5GhscEHMkLR4fAUIzNScoKy8RVikqLC/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAIDBAUBBv/EACoRAAICAQQBAwQBBQAAAAAAAAABAgMRBBIhMUEFIlETIzJhQhQzgbHh/9oADAMBAAIRAxEAPwD3EAAAAAAAAAAAAFdtzbNK1p79R8dIxX3pvovz5Hndv2xqSvadaq2qUd5ezi3upNOOcfiazn0KbL4QaTIuSR6qDGlUUkpReU0mmuDT1TMi4kAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACt7QbYha0ZVZ68oxXGcnwiv3yLI8j7Z7XdzXwn/Lp5UOjfBy9flgo1Fv048d+DyTwU+1dpVrmo6tZ5k+CX3YrlGK5Igy0eH4fmTYIhXK/mSXl6JI48m28spZ6X9m22HODt5vWC3qf+Lfej6Nr3+B254lsDaHsLinNPSLW94xekl7sntiedUdXSWboYfgsg+D6ADUTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKbtfd+ytKjTw5JQX+p4ePTJ5Inn9/v8AbPRftLqYt6a61F/tl+Z5vF9fkc3VvM8EJdmUSHV/qP009ETnrqvXw/QiTX8zzSf0+hkkitif3seCye09l732trRnz3FF/wCUe6/keJxfeb8fhwR6N9mt9mhOn/ZPK8pr80zVo5Ynj5JwO7BohVNykdMsPoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOP8AtLhmhSfSp/8AMjzuovpnkeudrLP2trUSWXFb6/06v4ZPHq88NP8Afkc3VRxPJCRkp4/55mN0uEscMrTxxj4mMJZ1+vyPlRtrHh568vkZX0QNNPg9Drfs2qYlW6bsPnI47e0Z1/2fUZL2tRpqD3EpPhJre3t3rjQnRNRsTb4/4Sri5PCPQoVTfCqUk7xLh8SHPauvE0Wep1R65OhDRWSOtjcLqvebY1E+ZxVS+yVNbbMoPj8SFPqldrwjRH0yUumenA4Kw7WzWjefB6/qdJs7tDSqaPuv4e/kdCNsZdGa3R219ouQfEz6WGQAAAAAAAAAAEa+vYUouc3hfFvojxtJZYJIOLrds5KT3YxxyTzn35LbZHaaNaSh7OSk+mq8+qRnhq6Zy2p8nmS+ABpPQAAAAAAAAAAAA0eMduNiytK2Uv5NR5g/7esPNfI9nIW2dl07mlKlVWYy584tcJRfJoovq+pHjs8ayeCQqevPPJ9GbpTzx49V9epa7f7J3Fo28OdLlOKbWP8Avj+F/DxKfYtp/E14UY5W9lzkn92C1k8cunuOVJOPDIqLbwX/AGZ7PKs3Vq/0c6Lg6kua8Ip8X6HYVa6ilGKSUdEksJLkkjOTjCKhBYjFKMUuSRXV5cTlWXb5YXR3dJplBGi8uCpqXGvHUyv6niUdxX1LoU5O7VUsHS2dxvIibWo4e91NGzK2I5LKolOJhX2rc+Cr8ZlC20jOjfOPBkqva6ZwVdxHD0O1Td8Mv2xmdv2c7VyhiM9Y8P8Ag9At68ZxUovKfA8Fp3WDq+ynap0pqMsuD0a+q8TrVWp8HD13p/8AOCPUwaoVU0mnlNZT6plP2i7S0rWPe702sxguL8W+SL5zjBbpPg4T4L0gbT2vSoLM5ZfKMdZP05Hmdz2uuarbc3GP9sNEvdq/Uj0rty4vPXqZVq4y/EqdnwdDtDtjXm8UkqcffL3kK32rdyf9Wfj3nhESDT15dOJJhVSX06leXnMpFe5st6G1LiKzKs35pP5lTtG+qXEk6je6tElhadfMxnNy4v3fIyhAqsbt9vj/AGXRXHJv2fsyg/vOo/BSUfiln4nX7LUILdpU1FeHF+b4s5izpanT7NjwNenqhBcRRLBcQehkfEfTUegAAAAAAAAAAAAAAGE6aZR7Uoxg9Et5rV4WceZfnO7YlmpLwwvgc71SezTvHng0aWObCoqvJX3M8E+4WhU3LPmdPW/J9BQslZe8ykr0cl1dPJV3B1oLCOnDo11bv2dNP082Wmwb72q6NPDXQqIwTyppSi+KfBllsadGl3Yw3cvOjb1fm30M2poWx4XJRZXLPBdVY5WDn7+kXdzBSjlN58ykrS46lWjTS7PamVlSnhmr2jT0JFetyIcsZOvBtFkuez07sX2kX8NUVR/0IuovGHT3/M4DaO0qlacqlR5lJ58uiXgjVb1WozSeN6Ovik1LH/qfdmbOqXE1CHD8UnwjHPF9fIr1Vjs2x8HyXqNG2/EfPJlaUp1J+zpxcpdF4c88l4s7HZvZlRWa88vjuQeEvOXMtNmWFK3hu01x+9J/ek+rf0MLq5MMtQ4cRLNP6eu58mz21KmsRhFY8Mv3vUi1NupdPcQLqrlFJcN6ntOolPydinSV4xg6T/q8JfehF+mGbbdwlqtPB6o5W0g5PQv6EVBG2FzUsFep0NWOuTobSiX1jE4u02tuPquj+h2GzLmNSKlF6fLwZ1KbFNcHDv00qnz0W4MYMyNBnAAAAAAABovbyFKDqVJKMY6tv96vwANletGEXKclGMVltvCS6tnnnaH7UI05ONtSVRL8c24p+UUs+/Hkc5207WVLqTjHu0ovuxzjPSUur8ORxtRZ4v8AQx23y6gVuXwei0ftWqta0aa6ay/Mh332j30v6apw6OKUv9zZwkKC/ua9P1N8bV8qi9U1+YVk2jzP7O/2F9pNzGWLqnGcf7oxcZr3d1+5HTy2nTuP5tJtxlpqsNNaNP3Hk9tses3rUjGPFvvfJpHd9lUoUZU95y3ZZy9NJJcF6Mya/MqGn4Nmil9zBOupFbcrBZ10VF9I49Pg+loK2tIgVSTUkRpnRTOhE1NaGls2zMIwbJvGCRd2lZ7voUtzN8OfMtKWiwVl6u8zDRhTZnhhNkCRrmbpI0T5m9sk+T7bSbmoLVyzFebWD0XYlhGhSUI8XrKXOUuvkcD2Vo79y5cqa083+nzPR6Twjm66/a1Bf5OffWnZu84wZ1E8aFXfW8+OPiTa9ZpFPeXklzKqVF9koRl4Isa74MylFSIsfaVG9yLk/h6vgifYWNSLTm4rrrn5Ep0tP2Fre1k2ytlCK08yPtGs1yJta9hFYTyyivb1yNlUZJZl2eRzN5ZFq3TyXvZfbrpzWX3Xo0ctVks6H21q4aNlTceUSvpjODiz3qhUTSa4PVeRvOX7GXzqW6T4we76cV+/A6WEjqxeVk+Ssg4ScX4MwASIAAAGi+u4UqcqlR4jFZb+nnyPFu1/aSdzUbbahF4hDPdS6vq3zZ0H2odo/wCYrWm+7BKVXxm9Yx9Fh+vgefSrrovqY7rcvaiqcucGlwnLXDYja1OO78V+Ztg5SeFr16LzJdCio6vvP4e4rWCGTTbWU8Za3VnGXh556YepZ28IQWea/E2s+ixoaITc3nXC0/fibKkd7loQlcolsKpTFxtBv7qz5/vUndl76Ua/fk3Gotx5eifGLxy109TTa7OcuRe2WxPAztTt7OjVCNfKLuoVO0Il06T3dePPxK27gYfpOuWGdmixPlFBUgR6kSzr0yFODLos3xsILRsg0j7XpmtxJNbkSckzdGsRLl6m+FMxrUmVxSjIrykyBNEWvoidOmyJdUW+6lq9F5svT5Jbki97D2uKbm/xyb9M4XwR12dCq2Lb7lKEVyikWFSWEcS77l8n+zI/c8mqvPQprmDk0lxeiJ1xI+W0cLe58F5F3XRfH2o+SxThuR834vm2V1W4fVm68qlZVqcTdTDCJxh8n2rWItark+TqGmcjVGJZgNmyBpwb6ES5Irmz0H7PKrxUX+L+Z3VGZwnYSGI1Jdd1e7L+qO1ozOjV+CPlNb/elgngxg9DIsMoNVzWUISm+EYuT8orL+RtKLtvc+zsqz6pQ/8AOSi/g2Rk9sWweH7Rryq1Z1ZfenJzl0zJ5095pjSWe9ny/NlhC2b4LPl9CTb7BqSfB48s/ocpFW1vor41PJY6aEmlbyl1S6vn5I6Gy7LyX4der1f6FzbdnHzJ7ZsshUv5HL21i3okXNlsTqjp7TYqXIt6Gz0uROOm+TUpY6KCz2SlyLihYpcizp2yRujSNMYJEXMrJ2SawUe0LFx8uR18qZFubdNYaKrqFNfsuo1Dgzg61t0IFW2OqvtmY1iVVSi+aObOqUXydeu9NcMoJW5plQLqpakZ0GQL1aVapsxnEspUzRUgl4ET3eVk6TN9naYe8+PL8yTCGSSqZtop53SM11+VtRY20cRXkYXFQkUl3F5EO6ZxlXibz8svqeSJUe88G+vPQ0UXiTf7RquqhKEMs04yyHc1dSuqz1ZJrS1INQ6NcS9GMmYMyyYGiKItmUIky3hloj04l1sS13pIsSy8Ga6ajFtnbdn6e5Siub7z9f0wdDbSKG2ZcWjN8VhYPlLJOUnJlzSehma6PA2EisGq4t4VIuE4qUXxUllP0NoHYIVLZFCKxGlBehuVnTXCK9xvB5tXwDT/AAseh9VCPQ2gbUe5MFTRkon0DCPMnzB9AGAfDCcDYDxo9TINajkqbzZ6Z0MomipSK3Evhbg4252fNcH8Ctq2lTr8DuqtumQ6tmimVMX4NUdQzhqlrU6v3JGtbPfPU7Kdj4Gp2PgQVKXRP+oZzlKxJdOzLmNobY2xao4K3Zkp3RwsEC8p5XidPO20Ke+tmjl6zTuM966Zr01/gpZx7ifnkrq0y7q0srwKS7p4ZnqR1Kp5IFdkOoyXWjoR3E2wSNGTTumSiZKJthTL0iuUjKhSyzsNh2m7FPmyn2RY70s8lxOtt6Zopj5ONr9Rn2Ik0IltZIgUYFtY0zScdllTWhmfEfT0gAAAAAAAAAAAAAAAAAADFoyB5gGmUDVKmSmj44kWiakQJUTW6BYOBi6Z5gmplf7E+qiTfZj2Z5g93EJ0SHdWqa1Rc+zNdSiRlFNYZKM8HIV7PGSkv7Z9DvLizyVlzszJz56XDzA306rHZ55WokaVE7S52K+mSDLYjzwPYRfwb1q4Y7ObjQ8CdZ2Lk/Dm/wAi8pbI6on0NnvoaYVvyZrtZxiJosqGEkloW1vRN1rYFnQtDUkcic8s0W1uW9vSwhRoYN5IpbAAPTwAAAAAAAAAAAAAAAAAAAAAAAAAAA+YGD6BgHzB8cTIHmAa3SRg7dG8Hm1Hu5kSVmjU9nIsANqPd7K5bNRshYpE0HuBuZphbpG1RPoPTzIAAPAAAD//2Q==");
  background-repeat:no-repeat;
  height: px !important;
  background-size:cover;   

}
form {
  width: 100%;

  margin: 60px auto;
  background: #efefef;
  padding: 10px 10px 10px 10px;
  text-align: left;
  -webkit-box-shadow: 2px 2px 3px rgba(0,0,0,0.1);
  box-shadow: 2px 2px 3px rgba(0,0,0,0.1);
}
label {
  display: block;
  position: relative;
  margin: 0px 0px;
}
   </style>
  <body>

  <!--Back to top button..................................................................................-->
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  <!--Javacript for back to top button....................................................................-->
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Food Finder</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li ><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Manager Sign-up</a></li>
      
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>
   
            </ul>
            </li>
          </ul>
        </div>

      </div>
    </nav>

    <div class="container">
    <div class="jumbotron">
     <h1>Hello Customer,<br> Welcome to <span class="edit"> Food Finder </span></h1>
     <br>
   <p>Kindly LOGIN to continue.</p>
    </div>
    </div>

    <div class="container" style="margin-top: 4%; margin-bottom: 2%;">
      <div class="col-md-5 col-md-offset-4">
        <!--<label style="margin-left: 5px;color: red;"><span> <?php //echo $error;  ?> </span></label>-->
      <div class="panel panel-primary">
        <div class="panel-heading"> Login </div>
        <div class="panel-body">
          
        <form action="" method="POST">
          
        <div class="row">
          <div class="form-group col-xs-12">
            <label for="username"><span class="text-danger" style="margin-right: 5px;">*</span> Username:  </label>
            <div class="input-group">
              <input class="form-control" id="username" type="text" name="username" placeholder="Username" required="" autofocus="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-user" aria-hidden="true"></label>
                </span>
              </span>
            </div>           
          </div>
        </div>

        <div class="row">
          <div class="form-group col-xs-12">
            <label for="password"><span class="text-danger" style="margin-right: 5px;">*</span> Password: </label>
            <div class="input-group">
              <input class="form-control" id="password" type="password" name="password" placeholder="Password" required="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></label>
            </span>
              
            </div>           
          </div>
        </div>

        <div class="row">
          <div class="form-group col-xs-4">
              <button class="btn btn-primary" name="submit" type="submit" value=" Login ">Submit</button>
          </div>

        </div>
        <label style="margin-left: 5px;">or</label> <br>
       <label style="margin-left: 5px;"><a href="customersignup.php">Create a new account.</a></label>

        </form>
        </div>     
      </div>      
    </div>
    </div>
     
     <div class="paragraph1">

    <p><h3>We are here to answer any queries you may have about our <font color="green"><strong>Food Finder</strong></font> experiences. Reach out to us and we will respond as soon as we can.</h3></p>
        <p><h3>Even if there is something you always wanted to experience and couldn't find it on <font color="green"><strong>Food Finder</strong></font>, please do let us know and we here at <font color="green"><strong>Food Finder promise to do our best to find it for you and suggest you the best of best.</strong></font> </h3></p>
        <p><b><h3>Contact Details of Team Food Finder are given below.</h3></b></p>
        <p class="edit2">
        
        <strong>Email      :</strong>  <a href="foodfinderhelp@gmail.com">foodfinderhelp@gmail.com</a>
        |
        <strong>Telephone  :</strong>  8123044768
        
        </p>
        <p class="edit2"><strong>Get in touch with us on Social Media.</strong></p>
        <pre><a href="https://www.facebook.com/Food Finder/" target="_blank"><img src="images/facebook.jpg" width="50px" height="50px"></a>  <a href="https://twitter.com/login" target="_blank"><img src="images/googleplus.png" width="50px" height="50px"></a>  <a href="https://www.instagram.com/accounts/login/" target="_blank"><img src="images/twitter.jpg" width="50px" height="50px"></a>  <a href="https://www.facebook.com/Food Finder/" target="_blank"><img src="images/insta.jpg" width="50px" height="50px"></a></pre>
        <p class="edit2">We even provide you a platform to share your food experiences and reviews by mailing it to us at <a href="foodfinder@gmail.com">foodfinder@gmail.com</a> </p>
      

</div>

    </body>

  <footer class="container-fluid bg-4 text-center">
  <br>
  <p> Food Finder 2017 | &copy All Rights Reserved </p>
  <br>
  </footer>
</html>