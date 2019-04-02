 @extends("layouts.main",['subMenu' => getSubMenu(3) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}
@section('content')
      
<section>
	<div class="container">

		<div class="row">
			<div class="col-md-10">
				<h2 class="section-title-head">Face/Moisturizing Treatments</h2>
			</div>
		</div>

		<div class="row">
			<!-- Line One -->
        @foreach($servicesCategories as $serviceCategory)
   
	        <div class="col-md-2">
	        	<div class="products-one-block">
	        		<div class="products-image-block academy-courses-img">
	        			<a href="">
	        				<img src="{{ $serviceCategory->image ?? noImage() }}">
	        				<p class="courses-name">{{$serviceCategory->TextTrans('title')}}</p>
	        			</a>
	        		</div>
	        		<div class="products-text-info academy-courses-text-block">
	        			<a href="{{ route('AntiAgeClinicCategory',$serviceCategory->id ) }}">view more</a>
	        		</div>
	        	</div>
	        </div>
	       @endforeach
		</div>

	</div>
</section>
    

@endsection