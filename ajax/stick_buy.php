<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once ($filepath.'/../helpers/format.php');
?>
<?php
$db = new database();
$id_cart = $_POST['id_cart'];
$cart_status = $_POST['cart_status'];
 //mysqli gọi 2 biến. (catName and link) biến link -> gọi conect db từ file db


    $query = "UPDATE tbl_cart SET tbl_cart.status = '$cart_status' WHERE cartId = '$id_cart' ";
    $result = $db->update($query);
    if($result){
        echo 'update thành công';
    }else {
        echo 'update không thành công';
    }

?>