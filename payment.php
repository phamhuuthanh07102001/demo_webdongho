<?php
include 'inc/header.php';
// include 'inc/slider.php';
?>
<?php
$login_check = Session::get('customer_login');
if ($login_check == false) {
    header('Location:login.php');
}
?>
<?php
// if(!isset($_GET['proid']) || $_GET['proid'] == NULL){
//        echo "<script> window.location = '404.php' </script>";

//    }else {
//        $id = $_GET['proid']; // Lấy productid trên host
//    }

//    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
//        // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
//        $quantity = $_POST['quantity'];
//        $AddtoCart = $ct -> add_to_cart($id, $quantity); // hàm check catName khi submit lên
//    } 
?>
<style>
    ul.phuongthucthanhtoan {
        padding: 0;
        margin: 0;
    }

    .btn-thanhtoan {
        border: 0;
        padding: 10px;
        background: red;
        color: #fff;
        font-weight: bold;
    }

    ul.phuongthucthanhtoan li {
        margin: 0px 15px;
        float: left;
    }

    h3.payment {
        text-align: center;
        font-size: 20px;
        font-weight: bold;
        text-decoration: underline;
    }

    .wrapper_method {
        text-align: center;
        width: 550px;
        margin: 0 auto;
        border: 1px solid #666;
        padding: 20px;
        /* margin: 20px; */
        background: cornsilk;
    }

    .wrapper_method a {
        padding: 10px;

        background: red;
        color: #fff;

    }

    .wrapper_method h3 {
        margin-bottom: 20px;
    }
</style>
<div class="main">
    <div class="content">
        <div class="section group">
            <div class="content_top">
                <div class="heading">
                    <h3>Phương Thức Thanh Toán</h3>
                </div>
                <div class="clear"></div>
                <div class="wrapper_method">
                    <h3 class="payment">Chọn phương thức thanh toán của bạn</h3>
                    <a class="offpay" href="offlinepayment.php">Thanh Toán Offline</a>
                    <ul class="phuongthucthanhtoan">

                        <li>
                            <form action="thanhtoanmomo.php" method="POST">
                                <input type="hidden" value="<?php echo Session::get('gtotal') ?>" name="tongtien">

                                <input class="btn btn-danger btn-thanhtoan " name="payUrl" type="submit" value="Thanh toán MOMO">

                            </form>
                        </li>
                        <li>
                            <form action="thanhtoanvnpay.php" method="POST">
                                <input type="hidden" value="<?php echo Session::get('gtotal') ?>" name="tongtien">
                                <input class="btn btn-danger btn-thanhtoan" name="redirect" id="redirect" type="submit" value="Thanh toán VNPAY">
                            </form>

                        </li>
                        <li>
                            <form action="thanhtoanqrmomo.php" method="POST">
                                <input type="hidden" value="<?php echo Session::get('gtotal') ?>" name="tongtien">
                                <input class="btn btn-danger btn-thanhtoan" name="redirect" id="redirect" type="submit" value="Thanh toán QRMOMO">
                            </form>

                        </li>
                    </ul>



                    <br><br><br><br>
                    <a class="quayve" style="background:grey" href="cart.php">
                        << Quay về</a>
                </div>

            </div>

        </div>
    </div>

    <?php
    include 'inc/footer.php';
    ?>