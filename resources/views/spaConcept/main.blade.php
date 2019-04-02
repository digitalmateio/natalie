@extends("layouts.main",['subMenu' => getSubMenu(4) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

	@if(!empty($pages['top section']))
		@foreach($pages['top section'] as $page)
            @php
                $title = $page->TextTrans('title');
                $description = $page->TextTrans('description');
                $image = optional($page)->getImage;
            @endphp

<section>
	<div class="bauty-home-image">
		<img src="{{ optional($image)->url }}">
		<span class="shadow-home"><!-- Shadow --></span>
		<div class="beauty-head-image-text">
			<div class="row">
				<div class="col-md-9">
					<h2>{{ $title }}</h2>
					<p>{{ $description }}</p>
				</div>
				<div class="col-md-3">
					<a href="">READ MORE</a>
				</div>
			</div>
		</div>
	</div>
</section>
        @endforeach
	 @endif




<section>
	<div class="container">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">catalog</h2>
			</div>
		</div>


		<div class="row">



		<!--Carousel Wrapper-->
			<div id="multi-item-example" class="carousel slide spa-concept-carusel" data-ride="carousel" style="width: 100%;">

			    <!--Controls-->
			    <div class="controls-top">
			        <a class="btn-floating prv" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
			        <a class="btn-floating nxt" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
			    </div>
			    <!--/.Controls-->


			    <!--Slides-->
			    <div class="carousel-inner partnier-logo-block" role="listbox">

			        <!--First slide-->
			        <div class="carousel-item active">

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-1.png">
				        				<p class="courses-name">BERGERE AIR MASSAGE</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-2.png">
				        				<p class="courses-name">MUSETTE - Chair</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-3.png">
				        				<p class="courses-name">WASH UNIT SENSOR AIR</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-.png">
				        				<p class="courses-name">GRISETTE – Make up mirror</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>
			        </div>
			        <!--/.First slide-->

			        <!--Second slide-->

			        <!--First slide-->
			        <div class="carousel-item">

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-1.png">
				        				<p class="courses-name">BERGERE AIR MASSAGE</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-2.png">
				        				<p class="courses-name">MUSETTE - Chair</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-3.png">
				        				<p class="courses-name">WASH UNIT SENSOR AIR</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>

			            <div class="col-md-3">
							<div class="products-one-block">
				        		<div class="products-image-block academy-courses-img">
				        			<a href="">
				        				<img src="assets/image/spa-carusel-.png">
				        				<p class="courses-name">GRISETTE – Make up mirror</p>
				        			</a>
				        		</div>
				        	</div>
			            </div>
			        </div>
			        <!--/.Second slide-->

			    </div>
			    <!--/.Slides-->

			</div>
			<!--/.Carousel Wrapper-->


		</div>


	</div>
</section>



<section>
	<div class="container">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">partners</h2>
			</div>
		</div>


		<div class="row spa-parrners-img">
          @foreach(getPartners() as $partner)
			<div class="col-md-3">
				<img src="{{ $partner }}">
			</div>
          @endforeach
		</div>
		
	</div>
</section>			

   
<section>
	<div class="container spa-gallery">
	<div class="row">
		<div class="col-md-10">
			<h2 class="section-title-head">gallery</h2>
		</div>
	</div>
	  <div class="row">
		<div class="card-columns">
      @foreach($galleries as $gallery )
         @foreach(optional($gallery)->gallery as $image)
         
		  <div class="card card-pin">
		  	<a href="#" data-gallery="example-gallery" data-toggle="lightbox">
				<img class="card-img" src="{{ $image }}" alt="Card image" class="img-fluid">
			</a>
		  </div>   
       @endforeach
    @endforeach

		</div>    
	  </div>
	</div>
</section>		



 @include('news', ['site_category_id' => 4])


<section>
	<div class="container spa">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">TESTIMONIALS</h2>
			</div>
		</div>


		<div class="row">
			<div class="col-md-12 testimonials-spa-block">


			<!--Carousel Wrapper-->
			<div id="multi-item-example-spa" class="carousel slide spa-concept-carusel" data-ride="carousel" style="width: 100%;">
			    <!--Controls-->
			    <div class="controls-top">
			      <a class="btn-floating prv" href="#multi-item-example-spa" data-slide="prev"><i class="fas fa-arrow-left"></i></a>
			      <a class="btn-floating nxt" href="#multi-item-example-spa" data-slide="next"><i class="fas fa-arrow-right"></i></a>
			    </div>
			    <!--/.Controls-->
			    <!--Slides-->
			    <div class="carousel-inner partnier-logo-block justify-content-center" role="listbox">
			        <!--First slide-->
			    @foreach($testimonials as $testimonial)
                     @php
                      $testimonialImage = optional($testimonial)->getImage;
                     @endphp
			        <div class="carousel-item @if($loop->first) active @endif">
			            <div class="col-md-12">
							<div class="testimonials-carusel-left-block">
								<img src="{{ optional($testimonialImage)->url ?? noImage() }}">
								<span  class="bg-shadow-block"></span>
							</div>
							<div class="testimonials-carusel-right-block">
								<h2>{{ $testimonial->TextTrans('name') }}</h2>
								<span>{{ $testimonial->TextTrans('profession') }}</span>
                                <p>{{ $testimonial->TextTrans('text') }}</p>
							</div>
			            </div>
			        </div>
			   @endforeach
			    </div>
			    <!--/.Slides-->
			</div>
			<!--/.Carousel Wrapper-->
			</div>
		</div>

	</div>
</section>



{{-- 
    @foreach(getPartners() as $partner)
    <img src="{{ $partner }}" alt="" width="200">
    @endforeach
      
     @include('news', ['site_category_id' => 4])
   
     @foreach($testimonials as $testimonial)
     @php
      $testimonialImage = optional($testimonial)->getImage;
     @endphp
     <img src="{{ optional($testimonialImage)->url ?? noImage() }}" alt="" width="200">
     <p>{{ $testimonial->TextTrans('name') }}</p>
     <p>{{ $testimonial->TextTrans('profession') }}</p>
     <p>{{ $testimonial->TextTrans('text') }}</p>
     @endforeach
--}}
@endsection