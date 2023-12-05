<?php
date_default_timezone_set('Asia/Ho_Chi_Minh');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$vnp_TmnCode = "5HAU3ROW"; //ID VNPAY
$vnp_HashSecret = "QKSUAPIZHNYNAIHBRFXFUUWKBJBDTMDL"; //Secret key VNPAY
$vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
$vnp_Returnurl = "http://localhost:8080/doandongho/thank.php";
$vnp_apiUrl = "http://sandbox.vnpayment.vn/merchant_webapi/merchant.html";
//Config input format
//Expire
$startTime = date("YmdHis");
$expire = date('YmdHis', strtotime('+15 minutes', strtotime($startTime)));
