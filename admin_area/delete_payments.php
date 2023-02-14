<?php
    if(isset($_GET['delete_payments'])){
        $order_id=$_GET['delete_payments'];
        
        // delete query
        $delete_query="Delete from user_payments where order_id=$order_id";
        $result_product=mysqli_query($con,$delete_query);
        if($result_product){
            echo "<script>alert('Payment deleted successfully')</script>";
            echo "<script>window.open('index.php?list_payments','_self')</script>";
        }
    }
?>