<!-- Page item Area -->
	<div id="page_item_area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 text-left">
					<h3><?php echo $title; ?></h3>
				</div>		

				<div class="col-sm-6 text-right">
					<ul class="p_items">
						<li><a href="<?php echo base_url(); ?>">home</a></li>
						<li><span><?php echo $detail['produk_name']; ?></span></li>
					</ul>					
				</div>	
					
			
				
			</div>
		</div>
	</div>

	<!-- Product Details Area  -->
	<div class="prdct_dtls_page_area">
		<div class="flash-data" data-flashdata="<?php echo $this->session->flashdata('flash'); ?>"></div>
		<div class="container">
			<div class="row">
				<!-- Product Details Image -->
				<div class="col-md-6 col-xs-12">
					<div class="pd_img fix">
						<a class="venobox" title="Klik untuk melihat lebih detail" href="<?php echo base_url(); ?>assets_home/img/product/<?php echo $detail['produk_image']; ?>"><img src="<?php echo base_url(); ?>assets_home/img/product/<?php echo $detail['produk_image']; ?>" alt="<?php echo $detail['produk_name']; ?>"/></a>
					</div>
				</div>
				<!-- Product Details Content -->
				<div class="col-md-6 col-xs-12">
					<div class="prdct_dtls_content">
						<a class="pd_title" href="#"><?php echo $detail['produk_name']; ?></a>
						<div class="pd_price_dtls fix">
							<!-- Product Price -->
							<div class="pd_price">
								<span class="new">Rp. <?php echo number_format($detail['produk_price'],0,',','.'); ?></span>
							</div>
							<!-- Product Ratting -->
							<div class="pd_ratng">
								<div class="rtngs">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div>
							</div>
						</div>
						<div class="pd_text">
							<h4>overview:</h4>
							<p><?php echo $detail['produk_description']; ?></p>
						</div>
						<form action="<?php echo base_url(); ?>cart/add_cart" method="post">
						<div class="pd_clr_qntty_dtls fix">
							<div class="pd_qntty_area">
								<h4>quantity:</h4>
								<div class="pd_qty fix">
									<input value="1" name="qttybutton" min="1" max="<?php echo $detail['produk_stok']; ?>" class="cart-plus-minus-box" type="number">
									<input type="hidden" name="produkid" value="<?php echo $detail['produk_id']; ?>">
								</div>
							</div>
						</div>
						<!-- Product Action -->
						<div class="pd_btn fix">
							<button type="submit" class="btn btn-default acc_btn">add to bag</button>
							<a href="<?php echo base_url(); ?>wishlist/<?php echo $detail['produk_id']; ?>" class="btn btn-default acc_btn btn_icn"><i class="fa fa-heart"></i></a>
							<a class="btn btn-default acc_btn btn_icn"><i class="fa fa-refresh"></i></a>
						</div>
						</form>
						<div class="pd_share_area fix">
							<h4>share this on:</h4>
							<div class="pd_social_icon">
								<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
								<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
								<a class="vimeo" href="#"><i class="fa fa-vimeo"></i></a>
								<a class="google_plus" href="#"><i class="fa fa-google-plus"></i></a>
								<a class="tumblr" href="#"><i class="fa fa-tumblr"></i></a>
								<a class="pinterest" href="#"><i class="fa fa-pinterest"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-12">					
					<div class="pd_tab_area fix">									
						<ul class="pd_tab_btn nav nav-tabs" role="tablist">
						  <li>
							<a class="active" href="#description" role="tab" data-toggle="tab">Description</a>
						  </li>
						  <li>
							<a href="#information" role="tab" data-toggle="tab">Information</a>
						  </li>
						  <li>
							<a href="#reviews" role="tab" data-toggle="tab">Komentar</a>
						  </li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade show active" id="description">
								<p><?php echo $detail['produk_description']; ?></p>
							</div>

							<div role="tabpanel" class="tab-pane fade" id="information">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
								incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
								exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
								dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>										  
							</div>

								<div role="tabpanel" class="tab-pane fade" id="reviews">
									<?php if(count($komentar) > 0) { ?>
										<div class="pda_rtng_area fix">
											<h4>Ada <?php echo count($komentar); ?> komentar untuk produk ini</h4>
										</div>
										<?php foreach($komentar as $komen): ?>
											<div class="rtng_cmnt_area fix">
													<div class="single_rtng_cmnt">
														<div class="rtngs">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														<span>(4)</span>
														</div>
														<div class="rtng_author">
															<h3><?php echo $komen['user_nama']; ?></h3>
															<span><?php echo date('H:i', strtotime($komen['komentar_tgl'])); ?></span>
															<span><?php echo date('d F Y', strtotime($komen['komentar_tgl'])); ?></span>
														</div>
														<p><?php echo $komen['komentar_isi']; ?></p>
													</div>
												
											</div>
										<?php endforeach; ?>
									<?php }else { ?>
										<div class="pda_rtng_area fix">
											<h4>Tidak ada komentar untuk produk ini</h4>
										</div>
									<?php } ?>
									
									<div class="col-md-12 rcf_pdnglft">
										<div class="rtng_cmnt_form_area fix">
											<?php if($this->session->userdata('userid') == '') { ?>
												<h3><a href="<?php echo base_url(); ?>account">Silahkan login untuk berkomentar</a></h3>
											<?php }else { ?>
												<h3>Add your Comments</h3>
												<div class="rtng_form">
													<form action="#" method="post">
														<input type="hidden" name="produkid" value="<?php echo $detail['produk_id']; ?>">
														<div class="input-area"><textarea name="message" placeholder="Write a review"></textarea><small class="text-danger"><?php echo form_error('message'); ?></small></div>
														<button class="btn border-btn" type="submit">Kirim</button>
													</form>
												</div>
											<?php } ?>
											
										</div>
									</div>				  
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
