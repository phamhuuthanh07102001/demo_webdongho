<?php
include 'inc/header.php';
// include 'inc/slider.php';
?>
<?php
if (!isset($_GET['proid']) || $_GET['proid'] == NULL) {
	echo "<script> window.location = '404.php' </script>";
} else {
	$id = $_GET['proid']; // Lấy productid trên host
}
$customer_id = Session::get('customer_id');

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['compare'])) {
	// LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
	$productid = $_POST['productid'];
	$insertCompare = $product->insertCompare($productid, $customer_id); // hàm check catName khi submit lên
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['wishlist'])) {
	// LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
	$productid = $_POST['productid'];
	$insertWishlist = $product->insertWishlist($productid, $customer_id); // hàm check catName khi submit lên
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
	// LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
	$quantity = $_POST['quantity'];
	$insertCart = $ct->add_to_cart($id, $quantity); // hàm check catName khi submit lên
}
if (isset($_POST['binhluan_submit'])) {
	$binhluan_insert = $cs->insert_binhluan();
}
?>
<div class="main">
	<div class="content">
		<div class="section group">
			<?php
			$get_product_details = $product->get_details($id);
			if ($get_product_details) {
				while ($result_details = $get_product_details->fetch_assoc()) {
					# code...

			?>
					<div class="cont-desc span_1_of_2">
						<div class="grid images_3_of_2">
							<img src="admin/uploads/<?php echo $result_details['image'] ?>" alt="" />
						</div>
						<div class="desc span_3_of_2">
							<h2><?php echo $result_details['productName'] ?> </h2>
							<p><?php echo $fm->textShorten($result_details['product_desc'], 150) ?></p>
							<div class="price">
								<p>Giá: <span><?php echo $fm->format_currency($result_details['price']) . " VND" ?></span></p>
								<p>Danh mục: <span><?php echo $result_details['catName'] ?></span></p>
								<p>Thương hiệu:<span><?php echo $result_details['brandName'] ?></span></p>
							</div>
							<div class="add-cart">
								<form action="" method="post">
									<input type="number" class="buyfield" name="quantity" value="1" min="1" />
									<input type="submit" class="buysubmit" name="submit" value="Mua ngay" />
								</form>
								<?php
								if (isset($insertCompare)) {
									echo $insertCompare;
								}
								?>
								<?php
								if (isset($AddtoCart)) {
									echo '<span style="color:red; font-size:18px;">Sản phẩm đã được bạn thêm vào giỏ hàng</span>';
								}
								?>
								<?php
								if (isset($insertCart)) {
									echo $insertCart;
								}
								?>

							</div>
							<!-- so sánh sản phẩm -->
							<div class="add-cart">
								<div class="button_details">
									<form action="" method="POST">

										<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>" />


										<?php

										$login_check = Session::get('customer_login');
										if ($login_check) {
											echo '<input type="submit" class="buysubmit" name="compare" value="So sánh sản phẩm"/>' . '  ';
										} else {
											echo '';
										}

										?>


									</form>

									<form action="" method="POST">

										<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>" />


										<?php

										$login_check = Session::get('customer_login');
										if ($login_check) {

											echo '<input type="submit" class="buysubmit" name="wishlist" value="Lưu vào yêu thích" />';
										} else {
											echo '';
										}

										?>
										<?php
										if (isset($insertWishlist)) {
											echo $insertWishlist;
										}
										?>

									</form>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="product-desc">
							<h2>Chi tiết sản phẩm</h2>
							<p><?php echo $result_details['product_desc'] ?></p>
						</div>
				<?php
				}
			}
				?>
					</div>
					<div class="rightsidebar span_3_of_1">
						<h2>Danh Mục</h2>
						<ul>
							<?php
							$getall_category = $cat->show_category_fontend();
							if ($getall_category) {
								while ($result_allcat = $getall_category->fetch_assoc()) {


							?>
									<li><a href="productbycat.php?catid=<?php echo $result_allcat['catId'] ?>"><?php echo $result_allcat['catName'] ?></a></li>
							<?php
								}
							}
							?>
						</ul>

					</div>
		</div>
		<div class="binhluan">
			<div class="row">
				<div class="col-md-8">
					<h5>Ý kiến sản phẩm</h5>
					<ul>
						<?php
						if (Session::get('customer_id')) {
							$customer_id = Session::get('customer_id');
							$get_star = $product->get_star($id, $customer_id);
							if ($get_star) {
								$tongsao = 0;
								$trungbinhsao = 0;
								$solan = 0;
								while ($result_star = $get_star->fetch_assoc()) {
									$tongsao += $result_star['rating'];
									$solan += 1;
									$trungbinhsao = $tongsao / $solan;
								}
								// echo $trungbinhsao;
							}
						}

						$get_product_details_2 = $product->get_details($id);
						if ($get_product_details_2) {
							while ($result_details2 = $get_product_details_2->fetch_assoc()) {
								# code...

						?>
								<?php
								for ($count = 1; $count <= 5; $count++) {

									if ($count <= 5) {
										$color = 'color:#ffcc00';
									} else {
										$color = 'color:#ccc';
									}

								?>
									<?php
									if (Session::get('customer_id')) {
									?>
										<li class="rating" style="cursor:pointer; font-size:30px;<?php echo $color ?>" id="<?php echo $result_details2['productId'] ?>-<?php echo $count ?>" data-product_id="<?php echo $result_details2['productId'] ?>" data-rating="<?php echo $count ?>" data-index="<?php echo $count ?>" data-customer_id="<?php echo Session::get('customer_id') ?>">
											&#9733;
										</li>
									<?php
									} else {
									?>

										<li class="rating_login" style="cursor:pointer; font-size:30px;color:#ccc;display:inline-block">&#9733;</li>
									<?php
									}
									?>
								<?php
								}
								?>
								<li class="danhgia">Đã đánh giá:5s</li>
					</ul>
			<?php
							}
						}
			?>



			<?php
			if (isset($binhluan_insert)) {
				echo $binhluan_insert;
			}
			?>
			<form action="" method="POST">
				<p><input type="hidden" value="<?php echo $id ?>" name="product_id_binhluan"></p>
				<input type="text" placeholder="Điền tên" class="form-control" name="tennguoibinhluan"></br>
				<textarea rows="5" style="resize:none" class="form-control" placeholder="bình luận" class="form-control" name="binhluan"></textarea>
				<p><input type="submit" name="binhluan_submit" class="btn btn-success " value="Gửi bình luận"></p>
			</form>
				</div>
			</div>

		</div>
	</div>

	<?php
	include 'inc/footer.php';
	?>