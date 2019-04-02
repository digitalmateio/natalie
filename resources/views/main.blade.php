@extends("layouts.main",['subMenu' => getSubMenu(null) ])
{{-- თუ კატეგორიას სუბ მენიუ არ გააჩნია მაშინ გადავცეთ null-ი    --}}

@section('content')

<?php
	$sliderGet = getSlider(22);
	$ButtonsFr = true; 
	$ImagesFr = true; 
?>

<div id="carouselExampleIndicators" class="carousel slide main-head-slider" data-ride="carousel">
  <ol class="carousel-indicators">

    @foreach(getSlider(22) as $kay => $image)
    	@if($ButtonsFr)
	    	<li data-target="#carouselExampleIndicators" data-slide-to="{{ $kay }}" class="active"></li>
	    	{{ $ButtonsFr = false }} 
		@else
			<li data-target="#carouselExampleIndicators" data-slide-to="{{ $kay }}" class=""></li>
		@endif
    @endforeach

  </ol>
  <div class="carousel-inner">

    @foreach($sliderGet as $kay => $image)

        @if($ImagesFr)
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="{{ $image->image }}" alt="First slide">
		    </div>
		   {{ $ImagesFr = false }} 
		@else
		    <div class="carousel-item ">
		      <img class="d-block w-100" src="{{ $image->image }}" alt="First slide">
		    </div>
		@endif

    @endforeach

  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <i class="fas fa-arrow-left"></i>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <i class="fas fa-arrow-right"></i>
    <span class="sr-only">Next</span>
  </a>
</div>






<section>
	<div class="container">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">Services</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line "></hr>
			</div>
		</div>


		<div class="row">

			<div class="col-md-5">
				<div class="services-one-block">
					<img src="assets/image/services-img-1.png">
					<div class="services-info-text">
						<h2>HAIRCUT & STYLE</h2>
						<hr></hr>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="row">
					<div class="col-md-12">

						<div class="services-one-block two-line-block">
							<img src="assets/image/services-img-2.png">
							<div class="services-info-text">
								<h2>HAIR EXTENSIONS</h2>
								<hr></hr>
							</div>
						</div>

						<div class="services-one-block two-line-block">
							<img src="assets/image/services-img-2-2.png">
							<div class="services-info-text">
								<h2>TEXTURING SERVICES</h2>
								<hr></hr>
							</div>
						</div>

					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="row">
					<div class="col-md-12">

						<div class="services-one-block three-line-block">
							<img src="assets/image/services-img-3.png">
							<div class="services-info-text">
								<h2>HAIR COLOR</h2>
								<hr></hr>
							</div>
						</div>

						<div class="services-one-block three-line-block">
							<img src="assets/image/services-img-3-3.png">
							<div class="services-info-text">
								<h2>HAIR COLOR</h2>
								<hr></hr>
							</div>
						</div>

						<button class="btn view-all-services">View All Services</button>

					</div>
				</div>
			</div>
			


		</div>


	</div>
</section>



<section>
	<div class="container offers">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">Offers</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line "></hr>
			</div>
		</div>


		<div class="row">
			<div class="col-md-3">
				<div class="offers-one-block">
					<div class="offers-image-block">
						<img src="assets/image/offers-1.png">
					</div>
					<div class="offers-text-block">
						<h3>Hair cut</h3>
						<p>I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="offers-one-block">
					<div class="offers-image-block">
						<img src="assets/image/offers-2.png">
					</div>
					<div class="offers-text-block">
						<h3>Hair Trim</h3>
						<p>I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="offers-one-block">
					<div class="offers-image-block">
						<img src="assets/image/offers-3.png">
					</div>
					<div class="offers-text-block">
						<h3>Hair Trim</h3>
						<p>I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="offers-one-block">
					<div class="offers-image-block">
						<img src="assets/image/offers-4.png">
					</div>
					<div class="offers-text-block">
						<h3>Styling basic</h3>
						<p>I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>
					</div>
				</div>
			</div>

		</div>

	</div>
</section>





<section>
	<div class="container products">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">Products</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line "></hr>
			</div>
		</div>

		<div class="row">
			<!-- Line One -->
	        <div class="col-md-2">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-1.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-2.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-3.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-4.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-5.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <!-- Line Two -->
	        <div class="col-md-2">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-1.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-2.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-3.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>
	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="">
	        				<img src="assets/image/products-4.png">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>Summer Vacation Fragrance Lotion</h3>
	        			<p>$150</p>
	        		</div>
	        	</div>
	        </div>

	        <div class="col-md-2 col-half-offset">
	        	<div class="products-one-block">
	        		<div class="all-products">
	        			<a href="" class="all-products-btn">
	        				<p>GO TO SHOP</p>
	        				<p class="arrow"><!-- Arrow --></p>
	        			</a>
	        		</div>
	        	</div>
	        </div>

		</div>

	</div>
</section>



<section>
	<div class="container about-us">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">About Us</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line "></hr>
			</div>
		</div>


		<div class="row">
			<div class="col-md-12">
				<div class="about-block">
					<div class="row">
						<div class="col-md-5 col-sm-12">
							<div class="image-about">
								<div class="circle-about-image">
									<img src="{{ $about->image }}" class="person">
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="block-for-text-about">
								<p>{{ $about->TextTrans('title')}}</p>
								<hr>
								<p>{{ $about->TextTrans('description') }}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
</section>





<section>
	<div class="container spa">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">SPA CONCEPT</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line "></hr>
			</div>
		</div>


		<div class="row">
			<div class="col-md-4">
				<div class="spa-title-block">
					<img src="assets/image/spa-one-1.png" height="230">
					<h3>HIGH QUALITY FURNITURE</h3>
				</div>
			</div>
			<div class="col-md-4">
				<div class="spa-title-block">
					<img src="assets/image/spa-one-2.png" height="230">
					<h3>HIGH QUALITY FURNITURE</h3>
				</div>
			</div>
			<div class="col-md-4">
				<div class="spa-title-block">
					<img src="assets/image/spa-one-3.png" height="230">
					<h3>HIGH QUALITY FURNITURE</h3>
				</div>
			</div>



			<div class="col-md-12">
				<div class="class-spa-shadow">					
					<div class="row">

						<div class="col-md-6">
							<div class="left-spa-block-for-img">
								<img src="assets/image/left-spa-image.png">
							</div>
						</div>
						<div class="col-md-6">
							<div class="right-spa-text-block">
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget 
								dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, 
								nascetur ridic-ulusmus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, 
								sem. Nulla consequat massaquis enim. Donec pede justo, fringilla vel, aliquet nec, vulp
								utate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. 
								Nullam dictum felis eu pede mollis pretium.</p>
								<div class="see-more-about-spa">
									<a href="">See More</a>
									<hr>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			


		</div>



	</div>
</section>






@endsection

