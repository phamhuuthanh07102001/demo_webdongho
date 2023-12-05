</div>
<div class="footer">
	<div class="wrapper">
		<div class="section group">
			<div class="col_1_of_4 span_1_of_4">
				<h4>Thông tin</h4>
				<ul>
					<li><a href="#">Về chúng tôi</a></li>
					<li><a href="#">Dịch vụ</a></li>
					<li><a href="#"><span>Tìm dịch vụ</span></a></li>

					<li><a href="#"><span>Liên hệ</span></a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4>Tại sao bạn chọn chúng tôi</h4>
				<ul>
					<li><a href="about.html">Về chúng tôi</a></li>
					<li><a href="faq.html">Dịch vụ</a></li>
					<li><a href="#">Tìm dịch vụ</a></li>
					<li><a href="contact.html"><span>Chính sách</span></a></li>

				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4>Giỏ hàng của tôi</h4>
				<ul>
					<li><a href="contact.html">Đăng nhập</a></li>
					<li><a href="index.html">Xem giỏ hàng</a></li>
					<li><a href="#">Sản phẩm yêu thích</a></li>
					<!-- <li><a href="#">Track My Order</a></li> -->
					<li><a href="faq.html">Giúp đỡ</a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h4>Liên hệ</h4>
				<ul>
					<li><span>0967456692</span></li>
					<li><span>0967456692</span></li>
				</ul>
				<div class="social-icons">
					<h4>Thêm dõi chúng tôi</h4>
					<ul>
						<li class="facebook"><a href="#" target="_blank"> </a></li>
						<li class="twitter"><a href="#" target="_blank"> </a></li>
						<li class="googleplus"><a href="#" target="_blank"> </a></li>
						<li class="contact"><a href="#" target="_blank"> </a></li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
		</div>
		<div class="copy_right">
			<p>coppy right @2023</p>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
    $('.buy_checked').change(function(){
        var id_cart = $(this).val();
        // alert(id_cart);

        if($(this).is(':checked')){
			var cart_status = 1;
			$.ajax({ url: 'ajax/stick_buy.php',
					data: {id_cart:id_cart,cart_status:cart_status},
					type: 'post',
					success:function(){
						alert('check mua thành công');
					}
			});
        }else{
			var cart_status = 0;
			$.ajax({ url: 'ajax/stick_buy.php',
					data: {id_cart:id_cart,cart_status:cart_status},
					type: 'post',
					success:function(){
						alert('check bỏ mua thành công');
					}
			});
        }
    })
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/

		$().UItoTop({
			easingType: 'easeOutQuart'
		});

	});
</script>
<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
<link href="css/flexslider.css" rel='stylesheet' type='text/css' />
<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
	$(function() {
		SyntaxHighlighter.all();
	});
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation: "slide",
			start: function(slider) {
				$('body').removeClass('loading');
			}
		});
	});
</script>

<script>
	// When the user scrolls the page, execute myFunction
	window.onscroll = function() {
		myFunction()
	};

	// Get the header
	var headerr = document.getElementById("myHeader");

	// Get the offset position of the navbar
	var sticky = headerr.offsetTop;

	// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
	function myFunction() {
		if (window.pageYOffset > sticky) {
			headerr.classList.add("sticky");
		} else {
			headerr.classList.remove("sticky");
		}
	}
</script>
<script>
				 function remove_background(product_id)
					{
						for(var count = 1; count <= 5; count++)
						{
						$('#'+product_id+'-'+count).css('color', '#ccc'); 
						}
					}
					//hover chuột đánh giá sao
					$(document).on('mouseenter', '.rating', function(){
							var index = $(this).data("index"); //3
							var product_id = $(this).data('product_id'); //13
						
							// alert(index);
							// alert(product_id);
							remove_background(product_id);
							for(var count = 1; count<=index; count++)
							{
							$('#'+product_id+'-'+count).css('color', '#ffcc00');
							}
					});
					  //nhả chuột ko đánh giá
						$(document).on('mouseleave', '.rating', function(){
							var index = $(this).data("index");
							var product_id = $(this).data('product_id');
							var rating = $(this).data("rating");
							remove_background(product_id);
							//alert(rating);
							for(var count = 1; count<=rating; count++)
							{
							$('#'+product_id+'-'+count).css('color', '#ffcc00');
							}
							});

				</script>
				<script>
					 $('.rating').click(function(){
						var index = $(this).data("index"); //3
						var product_id = $(this).data('product_id');
						var customer_id = $(this).data('customer_id');
						$.ajax(
								{ url: 'ajax/rating.php',
									data: {index:index, product_id:product_id, customer_id:customer_id},
									type: 'POST',
									success: function(data) {
										
											alert('Đánh giá '+index+' sao thành công');
										
											

											}
							});
					})
					$(document).on('mouseenter', '.rating_login', function(){
						alert('Làm ơn đăng nhập để đánh giá sao.');
					})
				</script>


</body>

</html>