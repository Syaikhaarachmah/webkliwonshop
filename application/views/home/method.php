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
							<li><span><?php echo $title; ?></span></li>
						</ul>					
					</div>	
				</div>
			</div>
		</div>
		
		<!-- Cart Page -->
		<div class="cart_page_area">
			<div class="container">
				<div class="flash-data" data-flashdata="<?php echo $this->session->flashdata('flash'); ?>"></div>
				<div class="cart-actions cart-button-cuppon">
					<div class="cuppon-wrap text-center">
						<h4><?php echo $title; ?></h4>
						<h3>Tagihan anda adalah : <span class="btn btn-warning">Rp. <?php echo number_format($this->session->userdata('tagihan'),0,',','.'); ?> ,-</span></h3>
						<p>Klik tombol dibawah ini untuk memilih metode pembayaran</p>
						<button id="pay-button" class="btn border-btn">Pilih</button>
					</div>
				</div>
			</div>
		</div>
