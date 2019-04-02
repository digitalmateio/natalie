@extends("layouts.main",['subMenu' => getSubMenu(6) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

{{--
    @foreach($servicesCategories as $serviceCategory)
       @php 
         $thumblir = optional($serviceCategory)->getImage;
       @endphp
        <p> <a href="{{ route('natalispaCategory',$serviceCategory->id ) }}"><img src="{{ optional($thumblir)->url ?? noImage() }}" alt="" width="200">
        {{$serviceCategory->TextTrans('title')}}
        </a>
        </p>
    @endforeach
    --}}
     @php 
      
    $slider = getSlider(29);
  @endphp
<div id="carouselExampleIndicators" class="carousel slide  anti-age-carusel" data-ride="carousel">
  <ol class="carousel-indicators">
   @for($i = 0; $i < count($slider); $i++ )
    <li data-target="#carouselExampleIndicators" data-slide-to="{{$i}}" class="@if($i == 0) active @endif"></li>
  @endfor
  </ol>
  <div class="carousel-inner">
    @foreach($slider as $image)
    <div class="carousel-item @if($loop->first) active @endif">
		<div class="bauty-home-image">
			<img src="{{ $image->image ?? noImage() }}">
			<span class="shadow-home"><!-- Shadow --></span>
			<div class="beauty-head-image-text">
				<div class="row">
					<div class="col-md-10">
						<h2>{{  $image->textTrans('title') }}</h2>
					</div>
				</div>
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
				<h2 class="section-title-head">about natali spa</h2>
			</div>
		</div>


		<div class="row dry-bar-about">
			<div class="col-md-12">
				<div class="spa-natali-about-text">
					<h3>{{ optional($about)->TextTrans('title')}}</h3>
					<p>{{ optional($about)->TextTrans('description') }}</p>
				</div>
			</div>
		</div>

	</div>
</section>

<section>
	<div class="container products dry-bar-services">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">services</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line "></hr>
			</div>
		</div>

		<div class="row">

  @foreach($servicesCategories as $serviceCategory)

			<div class="col-md-3">
	        	<div class="beauty-head-one-block">
	        		<div class="beauty-image-block">
	        			<a href="{{ route('natalispaCategory',$serviceCategory->id ) }}" class="image-hover-block">
	        				<figure class="effect-apollo">
	        					<img src="{{ $serviceCategory->thumbnails_image_id ?? noImage() }}">
								<figcaption><!--  --></figcaption>			
							</figure>
	        			</a>
	        			<a href="{{ route('natalispaCategory',$serviceCategory->id ) }}" class="blocks-for-cat">{{$serviceCategory->TextTrans('title')}}</a>
	        		</div>
	        	</div>
	        </div>
 @endforeach
			
	        

		</div>

	</div>
</section>








<section>
	<div class="container spa">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">offers</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line ">
			</div>
		</div>

	
		<div class="beauty-offers-one">
			<div class="row">
				<div class="col-md-6">
					<div class="beauty-offers-one-image">
						<img src="assets/image/spa-natalie-pr-bg.png">
					</div>
				</div>
				<div class="col-md-6">
					<div class="beauty-one-offers-title-line">
						<h3>HAIRCUT &amp; SPA</h3>
					</div>
					<p class="beauty-one-offers-text">Lorem ipsum dolor sit amet, consectetuer adipiscingvt elit. 
					Aenean commodo ligula eget dolor. Aenean&nbsp;massa. </p>
					<p class="beauty-offer-price-now">$150</p>
					<p class="beauty-offer-saleprice">$250</p>
				</div>
			</div>
		</div>
	
		<div class="beauty-offers-one">
			<div class="row">
				<div class="col-md-6">
					<div class="beauty-offers-one-image">
						<img src="assets/image/spa-natalie-pr-bg.png">
					</div>
				</div>
				<div class="col-md-6">
					<div class="beauty-one-offers-title-line">
						<h3>HAIRCUT &amp; SPA</h3>
					</div>
					<p class="beauty-one-offers-text">Lorem ipsum dolor sit amet, consectetuer adipiscingvt elit. 
					Aenean commodo ligula eget dolor. Aenean&nbsp;massa. </p>
					<p class="beauty-offer-price-now">$150</p>
					<p class="beauty-offer-saleprice">$250</p>
				</div>
			</div>
		</div>
		
	</div>
</section>

@include('news', ['site_category_id' => 6])


@endsection