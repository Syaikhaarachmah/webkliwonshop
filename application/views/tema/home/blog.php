<!--  Blog -->
        <section id="blog_area" class="section_padding">
            <div class="container">	
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="section_title">							
							<h2>latest <span>Blog</span></h2>
							<div class="divider"></div>
						</div>
					</div>
				</div>			
				
				<div class="row">	
					<?php foreach($dataartikel as $art): ?>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single_blog">
							<div class="single_blog_img">
								<img src="<?php echo base_url(); ?>assets_home/img/blog/<?php echo $art['blog_gambar']; ?>" alt="<?php echo $art['blog_judul']; ?>">
								<div class="blog_date text-center">
									<div class="bd_day"> <?php echo date('d', strtotime($art['blog_tgl'])); ?></div>
									<div class="bd_month"><?php echo date('M', strtotime($art['blog_tgl'])); ?></div>
								</div>
							</div>
												
							<div class="blog_content">	
								<h4 class="post_title"><a href="<?php echo base_url(); ?>artikel/<?php echo $art['blog_url']; ?>"><?php echo word_limiter($art['blog_judul'], 5); ?></a> </h4>
								<ul class="post-bar">
									<li><i class="fa fa-user"></i> Admin</li>									
									<li><i class="fa fa-comments-o"></i> <a href="#">2 comments</a></li>
									<li><i class="fa fa-heart-o"></i> <a href="#">4 like</a></li>
								</ul>							
								<p><?php echo word_limiter($art['blog_isi'], 8); ?></p>
							</div>
						</div>
					</div> <!--  End Col -->				
					
					<?php endforeach; ?>
				</div>
            </div>
        </section>
        <!--  Blog end -->
		