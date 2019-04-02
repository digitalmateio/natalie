@extends("layouts.main",['subMenu' => getSubMenu(5) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

 @php
 $slider = getSlider(28);
 @endphp

<div id="carouselExampleIndicators" class="carousel slide  anti-age-carusel" data-ride="carousel">
  <ol class="carousel-indicators">
   @for($i = 0; $i < count($slider); $i++)
    <li data-target="#carouselExampleIndicators" data-slide-to="{{$i}}" class="@if($i == 0) active @endif"></li>
   @endfor
  </ol>
  <div class="carousel-inner">
@foreach($slider as $image)
    <div class="carousel-item @if($loop->first) active @endif ">
		<div class="bauty-home-image">
			<img src="{{ $image->image ?? noImage() }}">
			<span class="shadow-home"><!-- Shadow --></span>
			<div class="beauty-head-image-text">
				<div class="row">
					<div class="col-md-9">
						<h2>{{  $image->textTrans('title') }}</h2>
					</div>
					<div class="col-md-3">
						<a href="">READ MORE</a>
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
				<h2 class="section-title-head">about dry bar</h2>
			</div>
		</div>
		<div class="row gift-card-image-section dry-bar-about">
			<div class="col-md-6">
				<div class="gift-card-image">
					<img src="{{ $about->image }}">
				</div>
			</div>
			<div class="col-md-6">
				<div class="gift-card-text-info">
					<h3>{{ $about->TextTrans('title')}}</h3>
					<p>{{ $about->TextTrans('description') }}</p>
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
			<!-- Line One -->
       @foreach($servicesCategories as $serviceCategory)
               @php 
                 //$thumblir = optional($serviceCategory)->getImage;
               @endphp
	        <div class="col-md-2">
	        	<div class="products-one-block">
	        		<div class="products-image-block">
	        			<a href="{{ route('drybarCategory',$serviceCategory->id ) }}">
	        				<img src="{{ $serviceCategory->thumbnails_image_id ?? noImage() }}">
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>{{$serviceCategory->TextTrans('title')}}</h3>
	        		</div>
	        	</div>
	        </div>
	   @endforeach
	        <div class="col-md-2">
	        	<div class="products-one-block">
	        		<div class="all-products">
	        			<a href="{{ route('drybarVip') }}" class="all-products-btn" style="background: url('assets/image/dry-bar-pr-6.png');">
	        				<p>VIP</p>
	        			</a>
	        		</div>
	        		<div class="products-text-info">
	        			<h3>vip <small>(all products)</small></h3>
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
				<h2 class="section-title-head">visitor club</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line ">
			</div>
		</div>

	
		<div class="beauty-lab-head-block visitor-club-block">
			<div class="row become-memeber-padding">
				<div class="col-md-12">
					<h2>become a member</h2>
				</div>
				<div class="col-md-3">
					<label>Full name</label>
					<input type="text" name="">
				</div>
				<div class="col-md-3">
					<label>Email</label>
					<input type="text" name="">
				</div>
				<div class="col-md-3">
					<label>Prone</label>
					<input type="text" name="">
				</div>
				<div class="col-md-3">
					<input type="submit" name="" value="submit">
				</div>
				<div class="col-md-12">
					 <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
					dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen 
					book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
				</div>
			</div>
		</div>


	</div>
</section>


@include('news', ['site_category_id' => 5])

<section>
	<div class="container partners">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">OUR PARTNERS</h2>
			</div>
			<div class="col-md-2 float-right">
				<hr class="selction-title-right-side-line "></hr>
			</div>
		</div>

		<div class="row">

		<!--Carousel Wrapper-->
			<div id="multi-item-example" class="carousel slide partner" data-ride="carousel" style="width: 100%;height: 160px;">

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

			            <div class="col-md-2">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-1.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-2.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-3.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-4.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-5.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-6.png">
			                </div>
			            </div>

			        </div>
			        <!--/.First slide-->

			        <!--Second slide-->
			        <div class="carousel-item">

			            <div class="col-md-2">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-1.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-2.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-3.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-4.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-5.png">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="assets/image/partner-6.png">
			                </div>
			            </div>

			        </div>
			        <!--/.Second slide-->

			    </div>
			    <!--/.Slides-->

			</div>
			<!--/.Carousel Wrapper-->


			<hr class="footer-hr-line">

		</div>

	</div>
</section>



@endsection