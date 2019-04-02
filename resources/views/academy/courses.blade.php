@extends("layouts.main",['subMenu' => getSubMenu(2) ])

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')





<section>
	<div class="container">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">COURSES</h2>
			</div>
		</div>

		<div class="row">
			<!-- Line One -->


			@if(!empty($courses))
				@foreach($courses as $course)
				@php
				   $courseImage = optional($course)->getImage;
				@endphp

			        <div class="col-md-2">
			        	<div class="products-one-block">
			        		<div class="products-image-block academy-courses-img">
			        			<a href="">
			        				<img src="{{ optional($courseImage)->url ?? noImage() }}">
			        				<p class="courses-name">{{ $course->TextTrans('title') }}</p>
			        			</a>
			        		</div>
			        		<div class="products-text-info academy-courses-text-block">
			        			<a href="{{ route('AcademyCourse',$course->id) }}">view more</a>
			        		</div>
			        	</div>
			        </div>

			    @endforeach
	        @endif

		</div>

	</div>
</section>





@endsection