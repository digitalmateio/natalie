@extends("layouts.main",['subMenu' => getSubMenu(4) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

<section>
	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<h2 class="spa-partners-title-head">SPA CONCEPT PARTNERS ARE LEADING EUROPEAN COMPANIES</h2>
<!--				<p class="spa-partners-title-head-content">Maletti Group  &nbsp  ;  &nbsp  Nilo  &nbsp   ;  &nbsp   Iris Ceramica    &nbsp ;  &nbsp  Germaine De Capuccini</p>-->
			</div>
		</div>

		<div class="row">
@foreach( $partners['top'] as $partner  )
    @php
        $image = optional($partner)->getImage;
    @endphp
			<div class="col-md-6">
				<div class="offers-one-block academy-mission-block spa-partners-page">
					<div class="offers-image-block">
						<img src="{{ optional($image)->url ?? noImage() }}">
					</div>
					<div class="offers-text-block">
						<h2>{{   $partner->TextTrans('title') }}</h2>
						<p>{{   $partner->TextTrans('description') }}</p>
					</div>
				</div>
			</div>  
@endforeach
		</div>
	</div>
</section>	

<section>
	<div class="container spa-partners-page-professionals">

		<div class="row">
			<div class="col-md-12">
				<h2 class="spa-partners-title-head w-700">OUR TEAM OF <i>PROFESSIONALS</i> SUCCESSFULLY WORKS IN INTERNATIONAL 
					PROJECTS AND COOPERATES WITH INTERNATIONAL DESIGNERS</h2>
			</div>
		</div>

		<div class="row">
    @foreach( $partners['central'] as $partner  )
        @php
        $image = optional($partner)->getImage;
        @endphp
			<div class="col-md-4">
				<div class="proffesionals-block-img">
					<img src="{{ optional($image)->url ?? noImage() }}">
				</div>
				<div class="proffesionals-block-title-info">
					<h3>{{   $partner->TextTrans('title') }}</h3>
					<p>{{   $partner->TextTrans('description') }}.</p>
				</div>
			</div>
    @endforeach
		</div>
	</div>
</section>




@endsection