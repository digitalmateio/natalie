@extends("layouts.main",['subMenu' => getSubMenu(1) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')
 

 
<section>
	<div class="container beauty-head-blocks">

		<div class="row">
			<div class="col-md-12">
				<div class="beauty-home-head">

					@if(!empty($pages['top section']))
					  	@foreach($pages['top section'] as $page)

						 	@php

						 		$title = $page->TextTrans('title');
						 		$description = $page->TextTrans('description');
						        $image = optional($page)->getImage;

						 	@endphp

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
											<a href="">BOOK NOW</a>
										</div>
									</div>
								</div>
							</div>

	  					@endforeach
	  				@endif

  					@if(!empty($pages['central section']))
	  					@foreach($pages['central section'] as $page)

	  						@php

					 		$title = $page->TextTrans('title');
					 		$description = $page->TextTrans('description');

					 		@endphp


							<div class="beauty-head-image-down-info">
								<h2>{{ $title }}</h2>
								<p>{{ $description }}</p>
							</div>

						@endforeach
					@endif


					@if(!empty($pages['bottom section']))

	  					@foreach($pages['bottom section'] as $page)

	  						@php

					 			$description = $page->TextTrans('description');
					 			$image = optional($page)->getImage;

					 		@endphp


							<img src="{{ optional($image)->url }}" class="image-home-beauty-two">


							<div class="beauty-head-image-down-info-two">
								<p>$description</p>
							</div>

						@endforeach

					@endif

				</div>
			</div>
		</div>

	</div>
</section>


 
@endsection