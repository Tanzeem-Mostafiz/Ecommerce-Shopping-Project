<!-- connect file -->
<?php
include('includes/connect.php');
include('functions/common_function.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unplugged Shopping

    </title>
    <!-- bootstrap css link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    crossorigin="anonymous">
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" 
    integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- css file -->
    <link rel="stylesheet" href="style.css">

  <style>
.bg-custom {
    background-color: #FF6347; /* replace with your desired shade of pink */
}
.logo{
    width: 7%;
    height: 7%;
}
.card-img-top{
    width: 100%;
    height: 200px;
    object-fit: contain;
}
body{
  overflow-x: hidden;
}

</style>

  </head>
<body>

    <!-- navbar -->
    <div class="container-fluid p-0">
    <!-- first child -->
<nav class="navbar navbar-expand-lg navbar-light bg-custom">
  <div class="container-fluid">
    <img src="./images/logo.png" alt="" class="logo">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
    aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-light" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="display_all.php">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./users_area/user_registration.php">Register</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart.php"><i class="fa-solid fa-cart-shopping"></i>
          <?php cart_item(); ?></a>
        </li>
        <li class="nav-item">
         <a class="nav-link" href="cart.php">Total Price: <?php total_cart_price(); ?>/-</a>
        </li>
      </ul>
      <form class="d-flex" action="search_product.php" method="get">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" 
        name="search_data">
        <input type="submit" value="Search" class="btn btn-outline-light" name="search_data_product">
      </form>
    </div>
  </div>
</nav>

<!-- calling cart function -->
<?php
cart();
?>

<!-- second child -->
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
  <ul class="navbar-nav me-auto">
  <li class="nav-item">
          <a class="nav-link text-light" href="#">Welcome Guest</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="./users_area/user_login.php">Login</a>
        </li>
  </ul>
</nav>

<!-- third child -->
<div class="bg-light">
  <h3 class="text-center">Unplugged Store</h3>
  <p class="text-center">Master Communication, Master E-Commerce.</p>
</div>

<!-- fourth child -->
<div class="row px-1">
  <div class="col-md-10">
    <!-- Products -->
    <div class="row">

  <!-- fetching products -->
  <?php
  //calling from fuctions file
  display_all_products();
  get_unique_categories();
  get_unique_brands();
  ?>

     </div>
  </div>

    <!-- sidenav -->
  <div class="col-md-2 bg-secondary p-0">
    <!-- Brands displayed -->
    <ul class="navbar-nav me-auto text-center">
    <li class="nav-item bg-custom">
      <a href="#" class="nav-link text-light"><h4>Delivery Brands</h4></a>
    </li>

  <?php
  //calling from fuctions file
  getbrands();
  ?>

   </ul>
    <!-- Categories displayed -->
    <ul class="navbar-nav me-auto text-center">
    <li class="nav-item bg-custom">
      <a href="#" class="nav-link text-light"><h4>Categories</h4></a>
    </li>

  <?php
  //calling from functions file
  getcategories();
  ?>

   </ul>
  </div>
</div>



<!-- last child -->
<!-- include footer -->
<?php include("./includes/footer.php") ?>



</div>


<!-- bootstrap js link -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
crossorigin="anonymous"></script>

</body>
</html>