@extends("layouts.main",['subMenu' => getSubMenu(2) ])

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')





<section>
	<div class="container products">

		<div class="row">
			<div class="col-md-12">
				<h2 class="section-head-center-title">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h2>
			</div>
		</div>

		<div class="row">
			<!-- Line One -->

			@if(!empty($teachers))
				@foreach($teachers as $teacher)
				@php
				    $teacherImage = optional($teacher)->getImage;
				@endphp

			        <div class="col-md-2">
			        	<div class="products-one-block">
			        		<div class="products-image-block academy-teacher-img">
			        			<a href="">
			        				<img src="{{ optional($teacherImage)->url ?? noImage() }}">
			        				<p class="teacher-name">{{ $teacher->TextTrans('name') }} </p>
			        			</a>
			        		</div>
			        		<div class="products-text-info academy-teacher-text-block">
			        			<h3>{{ $teacher->TextTrans('specialist') }}</h3>
			        			<p>{{ $teacher->TextTrans('description') }}</p>
			        		</div>
			        	</div>
			        </div>
			    @endforeach
	        @endif

		</div>

	</div>
</section>






@endsection


