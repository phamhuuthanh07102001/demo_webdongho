<?php
	$filepath = realpath(dirname(__FILE__));
	include ($filepath.'/../lib/session.php');
	Session::checkLogin(); // gọi hàm check login để ktra session
	include_once($filepath.'/../lib/database.php');
	include_once($filepath.'/../helpers/format.php');
?>



<?php 
	/**
	* 
	*/
	class adminlogin
	{
		private $db;
		private $fm;
		public function __construct()
		{
			$this->db = new Database();// this là chỉ chạy trong trang này
			$this->fm = new Format();//truyền Format vào fm
		}
		public function longin_admin($adminUser,$adminPass){
			$adminUser = $this->fm->validation($adminUser); //gọi ham validation từ file Format để ktra adminUser hợp lệ k 
			$adminPass = $this->fm->validation($adminPass);

			$adminUser = mysqli_real_escape_string($this->db->link, $adminUser);
			$adminPass = mysqli_real_escape_string($this->db->link, $adminPass); //mysqli_real_escape_string có 2 biến this->db->link để kết nối csdl
			
			if(empty($adminUser) || empty($adminPass)){
				$alert = "User và Pass không nhập rỗng";
				return $alert;
			}else{
				$query = "SELECT * FROM tbl_admin WHERE adminUser = '$adminUser' AND adminPass = '$adminPass' LIMIT 1 ";
				$result = $this->db->select($query);

				if($result != false){
					//session_start();
					// $_SESSION['login'] = 1;
					//$_SESSION['user'] = $user;
					$value = $result->fetch_assoc();
					Session::set('adminlogin', true); // set adminlogin đã tồn tại
					// gọi function Checklogin để kiểm tra true.
					Session::set('adminId', $value['adminId']);
					Session::set('adminUser', $value['adminUser']);
					Session::set('adminName', $value['adminName']);
					header("Location:index.php");
				}else {
					$alert = "Tài khoản và mật khẩu không đúng";
					return $alert;
				}
			}


		}
	}
 ?>