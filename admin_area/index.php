<!-- connect file -->
<?php
    include("../includes/connect.php");
    include("../functions/common_function.php");
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap css link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
        crossorigin="anonymous">
    <!-- font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" 
            integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- css file -->
        <link rel="stylesheet" href="../style.css">
        <style>
            .admin_image{
                width: 100px;
                object-fit: contain;
            }
            .footer{
                position: absolute;
                bottom: 0;
            }
            body{
                overflow-x:hidden;
            }
            .product_img{
                width:100px;
                object-fit:content;
            }
        </style>
</head>
<body>
    <!-- navbar -->
    <div class="container-fluid p-0">
        <!-- first child -->
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #81ecec;">
            <div class="container-fluid">
                <img src="../images/logo.png" alt="" class="logo">
                <nav class="navbar navbar-expand-lg" style="background-color: #81ecec;">
                    <ul class="navbar-nav">
                        <!-- <li class="nav-item">
                            <a href="" class="nav-link">Welcome Guest</a>
                        </li> -->
                    <?php
                        if(!isset($_SESSION['username'])){
                            echo "
                            <li class='nav-item'>
                                    <a class='nav-link' href='admin_login.php'>Welcome Guest</a>
                            </li>";
                        }else{echo "
                            <li class='nav-item'>
                                    <a class='nav-link' href='./users_area/logout.php'>Welcome ".$_SESSION['username']."</a>
                            </li>";}
                    ?>
                    </ul>
                </nav>
            </div>
        </nav>

        <!-- second child -->
        <div class="bg-light">
            <h3 class="text-center p-2">Manage Details</h3>
        </div>

        <!-- third child -->
        <div class="row">
            <div class="col-md-12 bg-secondary p-1 d-flex align-items-center">
                <div class="p-3">
                    <a href="#"><img src="../users_area\user_images\ramesh.jpg" alt="" class="admin_image"></a>
                    <?php
                        if(!isset($_SESSION['username'])){
                            echo "<p class='text-light text-center'>Admin Name</p>";
                        }else{
                            $username=$_SESSION['username'];
                            echo "<p class='text-light text-center'>$username</p>";
                        }
                    ?>
                </div>
                <div class="button text-center">
                    <button class="my-3">
                        <a href="insert_product.php" class="nav-link text-light bg-info my-1">Insert Products</a>
                    </button>
                    <button>
                        <a href="index.php?view_products" class="nav-link text-light bg-info my-1">View Products</a>
                    </button>
                    <button>
                        <a href="index.php?insert_categories" class="nav-link text-light bg-info my-1">Insert Categories</a>
                    </button>
                    <button>
                        <a href="index.php?view_categories" class="nav-link text-light bg-info my-1">View Categories</a>
                    </button>
                    <button>
                        <a href="index.php?insert_brands" class="nav-link text-light bg-info my-1">Insert Brands</a>
                    </button>
                    <button>
                        <a href="index.php?view_brands" class="nav-link text-light bg-info my-1">View Brands</a>
                    </button>
                    <button>
                        <a href="index.php?list_orders" class="nav-link text-light bg-info my-1">All Orders</a>
                    </button>
                    <button>
                        <a href="index.php?list_payments" class="nav-link text-light bg-info my-1">All Payments</a>
                    </button>
                    <button>
                        <a href="index.php?list_users" class="nav-link text-light bg-info my-1">List Users</a>
                    </button>
                    <button>
                        <a href="admin_logout.php" class="nav-link text-light bg-info my-1">Logout</a>
                    </button>
                </div>
            </div>
        </div>
        <!-- fourth child -->
        <div class="container my-3">
            <?php
                if(isset($_GET['insert_categories'])){
                    include('insert_categories.php');
                }
                if(isset($_GET['insert_brands'])){
                    include('insert_brands.php');
                }
                if(isset($_GET['view_products'])){
                    include('view_products.php');
                }
                if(isset($_GET['edit_products'])){
                    include('edit_products.php');
                }
                if(isset($_GET['delete_product'])){
                    include('delete_product.php');
                }
                if(isset($_GET['view_categories'])){
                    include('view_categories.php');
                }
                if(isset($_GET['edit_categories'])){
                    include('edit_categories.php');
                }
                if(isset($_GET['delete_categories'])){
                    include('delete_categories.php');
                }
                if(isset($_GET['view_brands'])){
                    include('view_brands.php');
                }
                if(isset($_GET['edit_brands'])){
                    include('edit_brands.php');
                }
                if(isset($_GET['delete_brands'])){
                    include('delete_brands.php');
                }
                if(isset($_GET['list_orders'])){
                    include('list_orders.php');
                }
                if(isset($_GET['delete_orders'])){
                    include('delete_orders.php');
                }
                if(isset($_GET['list_payments'])){
                    include('list_payments.php');
                }
                if(isset($_GET['delete_payments'])){
                    include('delete_payments.php');
                }
                if(isset($_GET['list_users'])){
                    include('list_users.php');
                }
                if(isset($_GET['delete_users'])){
                    include('delete_users.php');
                }
            ?>
        </div>

        <!-- last child
            <div class="p-3 text-center footer" style="background-color: #81ecec;">
                <p>All rights reserved o- designed by Ramesh-2022</p>
            </div>
        </div> -->

        <!-- include footer -->
        <?php
            include ('../includes/footer.php');
        ?>
    </div>
    <!-- bootstrap js link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>