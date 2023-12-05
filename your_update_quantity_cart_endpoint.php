<?php
// Include file kết nối CSDL và đối tượng Cart
include 'header.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $cartId = $_POST['cartId'];
    $proId = $_POST['proId'];
    $quantity = $_POST['quantity'];

    // Cập nhật giá trị trong CSDL tại đây, sử dụng đối tượng $ct hoặc phương thức của bạn
    // $ct->update_quantity_Cart($proId, $cartId, $quantity);

    echo json_encode(['success' => true, 'message' => 'Cập nhật thành công']);
} else {
    echo json_encode(['success' => false, 'message' => 'Phương thức không hợp lệ']);
}
