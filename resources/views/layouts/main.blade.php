<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Natali</title>

	<!-- <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"> -->
	<link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}" type="text/css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>
	
	<script src="{{ asset('/js/jquery.min.js') }}"></script>
    <script src="{{ asset('/js/bootstrap.js') }}"></script>

	<link rel="stylesheet" href="{{ asset('css/style.css') }}" type="text/css">
	<link rel="stylesheet" href="{{ asset('/css/effects.css') }}" type="text/css">
</head>
<body>


<style type="text/css">
	.additional-checkout-button{
		display: none;
	}

</style>


<?php
	$array = getMenu();
	//$pieces = array_chunk($array, count($array) / 2);
	$pieces = array_chunk($array, ceil(count($array) / 2),true);
   // dump($array);
   // dump($pieces);
?>



<?php


if(empty($subMenu)) {
    $menuSubMenuClass = '';
    $showHideSubMenu = 'hide-sub';
}else{
	$menuSubMenuClass = 'navbar-not-mainpage';
	$showHideSubMenu = 'show-sub';
}

?>
<nav class="navbar navbar-expand-md navbar-inverse small-top-navbar">
	<div class="container">
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="navbar-nav  navbar-left container-fluid" id="navbarNav">
		    <ul class="navbar-nav navbar-left">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">{{ date("l, F d") }}</a>
		      </li>

                    <select id="LanguageSwitcher" class="" name="locale">
                      <option value="ge" @if(Session::get('locale') == 'ge' ) {{ 'selected' }} @endif>ge</option>
                      <option value="en" @if(Session::get('locale') == 'en' ) {{ 'selected' }} @endif>en</option>
                      <option value="ru" @if(Session::get('locale') == 'ru' ) {{ 'selected' }} @endif>ru</option>
                    </select>
              
                  
<script>
$(document).ready(function(){

  $("#LanguageSwitcher").change(function(event){

    var lang = $(this).val();

    $.ajaxSetup({
      url: "{{route('language')}}",
      global: false,
      type: "GET",
      headers: {
        'X-CSRF-TOKEN': '{{ csrf_token() }}'
      }
    });

    $.ajax({
            
            data : { locale : lang, _token: '{{ csrf_token() }}' },
            success :  function(data){

                location.reload(true);
            },
              error :  function(data){},
         beforeSend :  function(data){},
           complete :  function(data){

           }
    });


  });

});

</script>
		      
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
		      <li class="nav-item">
		        <a class="nav-link" href="#"><i class="fab fa-facebook-f"></i></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#"><i class="fab fa-youtube"></i></a>
		      </li>		      
		      <li class="nav-item">
		        <a class="nav-link" href="#"><i class="fab fa-instagram"></i></a>
		      </li>
		    </ul>
		  </div>
	</div>
</nav>
<!-- example 2 - using auto margins -->
<nav class="navbar navbar-expand-md navbar-dark bg-dark head-big-navbar {{ $menuSubMenuClass }}">
	<div class="container">
	    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
	        <ul class="navbar-nav mr-auto">

	        	@foreach($pieces[0] as $key => $url)
	        	
				    <li class="nav-item">
                        <a class="nav-link {{ Request::is($key.'*') ? 'active' : '' }}" href="/{{ $key }}">{{  $url }}</a>
		            </li>
			    @endforeach

	        </ul>
	    </div>
	    <div class="mx-auto order-0">
	        <a class="navbar-brand mx-auto" href="{{ asset('') }}">
	        	<img src="{{ asset('/image/head-logo.png') }}">
	        </a>
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
	            <span class="navbar-toggler-icon"></span>
	        </button>
	    </div>
	    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
	        <ul class="navbar-nav ml-auto nav-right">
       
	        	@foreach($pieces[1] as $key => $url)
		            <li class="nav-item ">
		                <a class="nav-link {{ Request::is($key.'*')?'active':''}}" href="/{{ $key }}">{{  $url }}</a>
		            </li>
			    @endforeach
          
	            <li class="nav-item">
	                <a class="nav-link" href="#">
	                	<svg aria-hidden="true" data-prefix="far" data-icon="shopping-cart" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" class="svg-inline--fa fa-shopping-cart fa-w-18"><path fill="currentColor" d="M551.991 64H144.28l-8.726-44.608C133.35 8.128 123.478 0 112 0H12C5.373 0 0 5.373 0 12v24c0 6.627 5.373 12 12 12h80.24l69.594 355.701C150.796 415.201 144 430.802 144 448c0 35.346 28.654 64 64 64s64-28.654 64-64a63.681 63.681 0 0 0-8.583-32h145.167a63.681 63.681 0 0 0-8.583 32c0 35.346 28.654 64 64 64 35.346 0 64-28.654 64-64 0-18.136-7.556-34.496-19.676-46.142l1.035-4.757c3.254-14.96-8.142-29.101-23.452-29.101H203.76l-9.39-48h312.405c11.29 0 21.054-7.869 23.452-18.902l45.216-208C578.695 78.139 567.299 64 551.991 64zM208 472c-13.234 0-24-10.766-24-24s10.766-24 24-24 24 10.766 24 24-10.766 24-24 24zm256 0c-13.234 0-24-10.766-24-24s10.766-24 24-24 24 10.766 24 24-10.766 24-24 24zm23.438-200H184.98l-31.31-160h368.548l-34.78 160z" class=""></path></svg>
	                </a>
	            </li>	            
	            <li class="nav-item">
	                <a class="nav-link" href="#">
	                	<svg aria-hidden="true" data-prefix="far" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-search fa-w-16"><path fill="currentColor" d="M508.5 468.9L387.1 347.5c-2.3-2.3-5.3-3.5-8.5-3.5h-13.2c31.5-36.5 50.6-84 50.6-136C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c52 0 99.5-19.1 136-50.6v13.2c0 3.2 1.3 6.2 3.5 8.5l121.4 121.4c4.7 4.7 12.3 4.7 17 0l22.6-22.6c4.7-4.7 4.7-12.3 0-17zM208 368c-88.4 0-160-71.6-160-160S119.6 48 208 48s160 71.6 160 160-71.6 160-160 160z" class=""></path></svg>
	                </a>
	            </li>
	        </ul>
	    </div>
	</div>
</nav>

<div class="header-down-menu {{ $showHideSubMenu }}">
	<div class="container">
		<nav class="navbar navbar-expand-md navbar-dark bg-primary">
		    <div class="navbar-collapse collapse justify-content-center" id="collapsingNavbar">
		        <ul class="navbar-nav">
				    @foreach($subMenu as $url => $item)
			            <li class="nav-item">
			                <a class="nav-link {{ Request::path() == $url ? 'active' : '' }}" href="{{ url($url) }}">{{ $item }}</a>
			            </li>
				    @endforeach
		        </ul>
		    </div>
		</nav>
	</div>
</div>










     
	@yield('content')
      









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
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-1.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-2.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-3.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-4.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-5.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-6.png') }}">
			                </div>
			            </div>

			        </div>
			        <!--/.First slide-->

			        <!--Second slide-->
			        <div class="carousel-item">

			            <div class="col-md-2">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-1.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-2.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-3.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-4.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-5.png') }}">
			                </div>
			            </div>

			            <div class="col-md-2 clearfix d-none d-md-block">
			                <div class="card mb-2">
			                    <img class="card-img-top mx-auto d-block" src="{{ asset('image/partner-6.png') }}">
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




<footer class="dark">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="footer-logo-block">
					<img src="{{ asset('image/head-logo.png') }}">
					<hr>
					<p>All rights reserved Natalie Group (C) 2018</p>
				</div>
			</div>
			<div class="col-md-9">
				<div class="row">
					
					<div class="col-md-2 footer-menu-list">
						<h3 class="menu-title">BEAUTY</h3>
						<ul>
							<li><a href="">About</a></li>
							<li><a href="">Offers</a></li>
							<li><a href="">Services</a></li>
							<li><a href="">Home Salon</a></li>
							<li><a href="">Wellness lab</a></li>
							<li><a href="">Solarium club</a></li>
							<li><a href="">Gift card</a></li>
							<li><a href="">Contact</a></li>
						</ul>	
					</div>
					
					<div class="col-md-2 footer-menu-list">
						<h3 class="menu-title">ACADEMY</h3>
						<ul>
							<li><a href="">About</a></li>
							<li><a href="">Offers</a></li>
							<li><a href="">Services</a></li>
							<li><a href="">Home Salon</a></li>
							<li><a href="">Wellness lab</a></li>
							<li><a href="">Solarium club</a></li>
							<li><a href="">Gift card</a></li>
							<li><a href="">Contact</a></li>
						</ul>	
					</div>
					
					<div class="col-md-2 footer-menu-list">
						<h3 class="menu-title">ANTI-AGE CLINIC</h3>
						<ul>
							<li><a href="">About</a></li>
							<li><a href="">Offers</a></li>
							<li><a href="">Services</a></li>
							<li><a href="">Home Salon</a></li>
							<li><a href="">Wellness lab</a></li>
							<li><a href="">Solarium club</a></li>
							<li><a href="">Gift card</a></li>
							<li><a href="">Contact</a></li>
						</ul>	
					</div>

										
					<div class="col-md-2 footer-menu-list">
						<h3 class="menu-title">SPA-CONCEPT</h3>
						<ul>
							<li><a href="">About</a></li>
							<li><a href="">Offers</a></li>
							<li><a href="">Services</a></li>
							<li><a href="">Home Salon</a></li>
							<li><a href="">Wellness lab</a></li>
							<li><a href="">Solarium club</a></li>
							<li><a href="">Gift card</a></li>
							<li><a href="">Contact</a></li>
						</ul>	
					</div>

										
					<div class="col-md-2 footer-menu-list">
						<h3 class="menu-title">DRY BAR</h3>
						<ul>
							<li><a href="">About</a></li>
							<li><a href="">Offers</a></li>
							<li><a href="">Services</a></li>
							<li><a href="">Home Salon</a></li>
							<li><a href="">Wellness lab</a></li>
							<li><a href="">Solarium club</a></li>
							<li><a href="">Gift card</a></li>
							<li><a href="">Contact</a></li>
						</ul>	
					</div>

															
					<div class="col-md-2 footer-menu-list">
						<h3 class="menu-title">NATALIE-SPA</h3>
						<ul>
							<li><a href="">About</a></li>
							<li><a href="">Offers</a></li>
							<li><a href="">Services</a></li>
							<li><a href="">Home Salon</a></li>
							<li><a href="">Wellness lab</a></li>
							<li><a href="">Solarium club</a></li>
							<li><a href="">Gift card</a></li>
							<li><a href="">Contact</a></li>
						</ul>	
					</div>

					
				</div>
			</div>
		</div>
	</div>
</footer>



<!--<script src="/la-assets/plugins/jQuery/jQuery-2.1.4.min.js"></script>-->

<!--<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>-->
<!--
<script src="{{ asset('/js/jquery.min.js') }}"></script>
<script src="{{ asset('/js/bootstrap.js') }}"></script>
-->




<script type="text/javascript">
	

	$('#carouselExampleIndicators').carousel();


</script>

</body>
</html>


      

