<!-- connect file -->
<?php
    include("../includes/connect.php");
    include("../functions/common_function.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <!-- Bootstrap css link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
        crossorigin="anonymous">
    <!-- font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" 
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            body{
                overflow-x:hidden;
            }
        </style>
</head>
<body>
    <div class="container-fluid m-3">
        <h2 class="text-center mb-5">Admin Registration</h2>
        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-5">
                <img src="../images/adminreg.jpg" alt="Admin Registration" class="img-fluid">
            </div>
            <div class="col-lg-6 col-xl-4">
                <form action="" method="post">
                    <div class="form-outline mb-4">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" id="username" name="username" placeholder="Enter your username" required="required"
                        class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email" required="required"
                        class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter your password" required="required"
                        class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <label for="confirm_password" class="form-label">Confirm Password</label>
                        <input type="password" id="confirm_password" name="confirm_password" placeholder="Re-Enter your password" required="required"
                        class="form-control">
                    </div>
                    <div>
                        <input type="submit" class="bg-info py-2 px-3 border-0" name="admin_registration" value="Register">
                        <p class="small fw-bold mt-2 pt-1">Do you already have an account? 
                            <a href="admin_login.php" class="link-danger">Login</a> </p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

<!-- php code -->
<?php
    if(isset($_POST['admin_registration'])){
        global $con;
        $username=$_POST['username'];
        $email=$_POST['email'];
        $password=$_POST['password'];
        $hash_password=password_hash($password,PASSWORD_DEFAULT);
        $conf_password=$_POST['confirm_password'];

        //-- select_query
        $select_query="Select * from admin_table where admin_name='$username' or admin_email='$email'";
        $result_query=mysqli_query($con,$select_query);
        $num_of_rows=mysqli_num_rows($result_query);
        if($num_of_rows>0){
            echo "<script>alert('Username and Email is already exits')</script>";
        }else if($password!=$conf_password){
            echo "<script>alert('Passwords do not match')</script>";
        }else{
            //-- insert query
            $insert_query="Insert into admin_table (admin_name,admin_email,admin_password) values 
            ('$username','$email','$hash_password')";
            
            $sql_execute=mysqli_query($con,$insert_query);

            if($sql_execute){
                echo "<script>alert('Data inserted successfully')</script>";
                echo "<script>window.open('admin_login','_self')</script>";
            }else{
                die("Connection failed: " . $con->connect_error);
            }
        }
    }
?>