@extends("layouts.main",['subMenu' => getSubMenu(2) ])

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')


<section>
	<div class="container">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">ABOUT ACADEMY</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 academy-head-text">
				<p>{{ $about->textTrans('title') }}</p>
				<p>{{ $about->textTrans('description') }}</p>
			</div>
		</div>
	</div>
</section>



<section>
	<div class="container offers">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">OUR MISSION</h2>
			</div>
		</div>


		<div class="row">


			<div class="col-md-6">
				<div class="offers-one-block academy-mission-block">
					<div class="offers-image-block">
						<img src="assets/image/academy-mission-img-1.png">
					</div>
					<div class="offers-text-block">
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. 
						Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur 
						ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. 
						Nulla consequat massa quis enim. </p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="offers-one-block academy-mission-block">
					<div class="offers-image-block">
						<img src="assets/image/academy-mission-img-2.png">
					</div>
					<div class="offers-text-block">
						<p>I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>
					</div>
				</div>
			</div>


		</div>

	</div>
</section>
{{--
			@if(!empty($pages['central section']))
			<section>
				<div class="container offers">
					<div class="row">
						<div class="col-md-10">
							<h2 class="section-title-head">OUR MISSION</h2>
						</div>
					</div>
					<div class="row">
					  	@foreach($pages['central section'] as $page)
						 	@php
						 		$title = $page->TextTrans('title');
						 		$description = $page->TextTrans('description');
						        $image = optional($page)->getImage;
						 	@endphp

								<div class="col-md-6">
									<div class="offers-one-block academy-mission-block">
										<div class="offers-image-block">
											<img src="{{ optional($image)->url }}">
										</div>
										<div class="offers-text-block">
											<p>{{ $description }}</p>
										</div>
									</div>
								</div>

							@endforeach
					</div>

				</div>
			</section>

			@endif
--}}


			@if(!empty($teachers))
				<section>
					<div class="container products">

						<div class="row">
							<div class="col-md-10">
								<h2 class="section-title-head">TEACHERS</h2>
							</div>
						</div>

						<div class="row">
							<!-- Line One -->

						@foreach($teachers as $teacher)
						@php
						    $teacherImage = optional($teacher)->getImage;
						@endphp

					        <div class="col-md-2">
					        	<div class="products-one-block">
					        		<div class="products-image-block academy-teacher-img">
					        			<a href="">
					        				<img src="{{ optional($teacherImage)->url ?? noImage() }}">
					        				<p class="teacher-name">{{ $teacher->TextTrans('name') }}</p>
					        			</a>
					        		</div>
					        		<div class="products-text-info academy-teacher-text-block">
					        			<h3>{{ $teacher->TextTrans('specialist') }}</h3>
					        			<p>{{ $teacher->TextTrans('description') }}</p>
					        		</div>
					        	</div>
					        </div>
					        

						@endforeach


						</div>

					</div>
				</section>
			@endif




			@if(!empty($courses))
			<section>
				<div class="container">

					<div class="row">
						<div class="col-md-10">
							<h2 class="section-title-head">COURSES</h2>
						</div>
					</div>

					<div class="row">
						<!-- Line One -->
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



					</div>

				</div>
			</section>

			@endif




		@include('news', ['site_category_id' => 25])




@endsection