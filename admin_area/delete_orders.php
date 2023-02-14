<?php
    if(isset($_GET['delete_orders'])){
        $order_id=$_GET['delete_orders'];
        
        // delete query
        $delete_query="Delete from user_orders where order_id=$order_id";
        $result_product=mysqli_query($con,$delete_query);
        if($result_product){
            echo "<script>alert('Order deleted successfully')</script>";
            echo "<script>window.open('index.php?list_orders','_self')</script>";
        }
    }
?>