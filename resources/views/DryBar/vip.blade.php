@extends("layouts.main",['subMenu' => getSubMenu(5) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

<section>
	<div class="container beauty-head-blocks">

		<div class="row">
			<div class="col-md-12">
				<div class="treatmens-home-head">

					<div class="bauty-home-image">
<!--						<img src="">-->
						<!-- <span class="shadow-home"></span> -->

						<div class="treatmens-head-image-text">
							<div class="row">
								<div class="col-md-12">
									<a href="">VIP</a>
								</div>
							</div>
						</div>

					</div>


					<hr class="selction-title-right-side-line">

     <div class="accordion treatmens-collapse-list" id="accordionExample">
           @foreach($servicesArray as $key => $item)
					  <div class="card">
					    <div class="card-header" id="headingOne">
					      <h5 class="mb-0">
					        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					         {{ $key }}
					        </button>
					      </h5>
					    </div>

					    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					      <div class="card-body">
					        <div class="treatmens-one-collapse-body">
					        	<p>{{ $item['service_title'] }}</p>	
					        </div>
					        <span>ხანგრძლივობა {{ $item['duration'] }} წუთი {{ $item['price'] }}₾</span>
					      </div>
					    </div>
					  </div>
             @endforeach                   
                 </div>    

				</div>
			</div>
		</div>

	</div>
</section>

@endsection

