@extends("layouts.main",['subMenu' => getSubMenu(3) ])

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')
 {{--
    @foreach(getSlider(26) as $image)
    <img src="{{ $image->image }}" alt="" width="200">
    @endforeach --}}
    @php 
        $sliderData = getSlider(26);
    @endphp
    
    <div id="carouselExampleIndicators" class="carousel slide main-head-slider anti-age-carusel" data-ride="carousel">
  <ol class="carousel-indicators">
  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
   @for($i = 1; $i < count($sliderData)-1; $i++ )
    <li data-target="#carouselExampleIndicators" data-slide-to="{{$i}}"></li>
   @endfor
  </ol>
  <div class="carousel-inner">

     @foreach($sliderData as $image)
        <div class="carousel-item @if($loop->first) active @endif">
          <img class="d-block w-100" src="{{ $image->image }}" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <div class="info-block">
                  <h5>{{ $image->TextTrans('title') }}</h5>
                  <!-- <a href="">Read More</a>-->
                </div>
            </div>
        </div>
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
		</div>

      @if(isset($pages['top section']))
         @foreach($pages['top section'] as $page)
		<div class="row">
			<div class="col-md-12 academy-head-text">
				<p> {{ $page->TextTrans('title') }}</p>
			</div>
		</div>
       @endforeach
     @endif

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
	<div class="container spa">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">FOR MEN</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line ">
			</div>
		</div>

	
		<div class="beauty-lab-head-block anti-age-for-men">
			<div class="row">
				<div class="col-md-6">
					<div class="image-block">
						<img src="assets/image/anti-age-for-men-main.png">
					</div>
				</div>
				<div class="col-md-6">
					<div class="beauty-lab-head-left-text for-anti-age-for-men">
						<h3>Ritual Special Program for Male Skin</h3>
						<ul>
							<li>Cleansing</li>
							<li>Mask-Scrub</li>
							<li>Serum MassagE</li>
						</ul>
						<a href="">BOOK NOW</a>
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
				<h2 class="section-title-head">PARTNERS</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line ">
			</div>
		</div>

	
		<div class="anti-age-partners-block">
			<div class="row">
         @foreach(getPartners() as $partner)
				<div class="col-md-4">
					<img src="{{ $partner }}">
				</div>
         @endforeach
			</div>
		</div>


	</div>
</section>





<section>
	<div class="container spa">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">ON SALE</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line ">
			</div>
		</div>



			
		<div class="row">

			<div class="col-md-6 col-sm-12">
				<div class="what-is-new-insine">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-image">
								<img src="assets/image/for-sale-anti-age.png">
							</div>
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-text">
								<h3>HAIRCUT &amp; SPA</h3>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscingvt elit. Aenean 
								commodo ligula eget dolor. 
								Aenean&nbsp;massa. </p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-sm-12">
				<div class="what-is-new-insine">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-image">
								<img src="assets/image/for-sale-anti-age.png">
							</div>
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-text">
								<h3>FREE NAIL COSMETICS</h3>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscingvt elit. Aenean 
								commodo ligula eget dolor. 
								Aenean&nbsp;massa. </p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-sm-12">
				<div class="what-is-new-insine">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-image">
								<img src="assets/image/for-sale-anti-age.png">
							</div>
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-text">
								<h3>HAIR EXTENSIONS</h3>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscingvt elit. Aenean 
								commodo ligula eget dolor. 
								Aenean&nbsp;massa. </p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-sm-12">
				<div class="what-is-new-insine">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-image">
								<img src="assets/image/for-sale-anti-age.png">
							</div>
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="what-is-new-text">
								<h3>GET YOUR KIT FOR FREE</h3>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscingvt elit. Aenean 
								commodo ligula eget dolor. 
								Aenean&nbsp;massa. </p>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>



	</div>
</section>


@endsection
