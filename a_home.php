    <?php Include('a_header_footer/header.php');?>
	<section id="main-slider" class="no-margin">
        <div class="carousel slide">      
            <div class="carousel-inner">
                <div class="item active" style="background-image: url(images/slider/bg1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h2 class="animation animated-item-1">Welcome to <br> <span>UCAM & eLMS</span></h2>
                                    <p class="animation animated-item-2">Thanks for visiting us....</p>
<!--                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>-->
                                </div>
                            </div>

<!--
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img3.png" class="img-responsive">
                                </div>
                            </div>
-->

                        </div>
                    </div>
                </div><!--/.item-->             
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
    </section><!--/#main-slider-->
	
	
	
	<div class="lates">
		<div class="container">
			<div class="text-center">
				<h2 >Latest News</h2>
			</div>
            <?php Include('s_header_footer/table.php');?>
<!--             coming table tada from table.php-->
		</div>
	</div>
	

	
	<section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="pull-left">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h2>Still need help? <br> Get in touch with Monir Sir.</h2>
                            <p class="helptext">You can get this type of help.. <br> 1. Registration <br>2. Payment <br> 3. Section Selection</p>
                        </div>
                    </div>
                </div>
                <div class="">
                    <p class="clickhere">Click here..</p>
                    <p href="" class="btnhelp">HELP</p>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
<?php Include('a_header_footer/footer.php');?>