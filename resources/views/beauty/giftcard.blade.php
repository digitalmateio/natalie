@extends("layouts.main",['subMenu' => getSubMenu(1) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

<section>
	<div class="container beauty-head-blocks">
		<div class="row">
		
			@if(isset($pages['top section']))
			  	@foreach($pages['top section'] as $page)
				 	@php
				 		$title = $page->TextTrans('title');
				 		$description = $page->TextTrans('description');
				 	@endphp
					<div class="col-md-12 gift-card-head">
									<h3>{{ $title }}</h3>
									<p>{{ $description }}</p>
								
					</div>
				@endforeach
			@endif
				
			@if(isset($pages['central section']))
			  	@foreach($pages['central section'] as $page)
				 	@php
				 		$title = $page->TextTrans('title');
				 		$description = $page->TextTrans('description');
				        $image = optional($page)->getImage;
				 	@endphp
					<div class="col-md-12 gift-card-image-section">
						<div class="row">
							<div class="col-md-6">
								<div class="gift-card-image">
									<img src="{{ optional($image)->url }}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="gift-card-text-info">
									<h3>{{ $title }}</h3>
									<p>{{ $description }}</p>
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