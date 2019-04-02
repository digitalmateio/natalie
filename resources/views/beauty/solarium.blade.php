@extends("layouts.main",['subMenu' => getSubMenu(1) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')



<section>
	<div class="container beauty-head-blocks">

		<div class="row">


		@if(!empty($pages['top section']))
		  	@foreach($pages['top section'] as $page)

			 	@php

			 		$title = $page->TextTrans('title');
			 		$description = $page->TextTrans('description');
			        $image = optional($page)->getImage;

			 	@endphp

				<div class="col-md-12">
					<div class="beauty-lab-head-block">
						<div class="row">
							<div class="col-md-6">
								<div class="image-block">
									<img src="{{ optional($image)->url }}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="beauty-lab-head-left-text for-solarium">
									<h3>{{ $title }}</h3>
									<p>{{ $description }}</p>
									<a href="" class="solarium-book-now">BOOK NOW</a>
								</div>
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


				<div class="col-md-12">
					<div class="bauty-lab-diet-dark-block">
						<h3>{{ $title }}</h3>
						<p>{{ $description }}</p>
					</div>
				</div>

			@endforeach
		@endif




		@if(!empty($pages['bottom section']))

			@foreach($pages['bottom section'] as $page)

				@php

		 			$title = $page->TextTrans('title');
		 			$description = $page->TextTrans('description');
		 			$image = optional($page)->getImage;

	 			@endphp

				<div class="col-md-12">
					<div class="beauty-lab-head-block solarium-for-down">
						<div class="row">
							<div class="col-md-6">
								<div class="beauty-lab-head-left-text">
									<h3>{{ $title }}</h3>
									<p>{{ $description }}</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="image-block">
									<img src="{{ optional($image)->url }}">
								</div>
							</div>
						</div>
					</div>
				</div>

			@endforeach

		@endif

		</div>

	</div>
</section>








@endsection



