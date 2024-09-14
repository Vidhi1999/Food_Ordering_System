<?php
//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';

if(isset($_SESSION['cart'])) {

  $total = 0;

  foreach($_SESSION['cart'] as $F_ID => $quantity) {

    $result = $mysqli->query("SELECT * FROM FOOD WHERE id = ".$F_ID);

    if($result){

      if($obj = $result->fetch_object()) {


        $cost = $obj->offer_price * $quantity;

        $user = $_SESSION["username"];

        //$offer_sql = $mysqli->query("SELECT offer_price from offer where id = ".$F_ID );
        //$_SESSION["offer"]=$offer_sql;

        $query = $mysqli->query("INSERT INTO orders (product_code, product_name, product_desc,offer_price, units, total, email) VALUES('$obj->product_code', '$obj->product_name', '$obj->product_desc', $obj->offer_price, $quantity, $cost, '$user')");

        if($query){
          $newqty = $obj->qty - $quantity;
          if($mysqli->query("UPDATE products SET qty = ".$newqty." WHERE id = ".$F_ID)){

          }
        }

           }



      }
    }
  }



header("location:bill.php");

?>
