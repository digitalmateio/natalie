@extends("layouts.main",['subMenu' => getSubMenu(1) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

<section>
	<div class="container beauty-head-blocks">

		<div class="row">
			<div class="col-md-12">
				<div class="treatmens-home-head">

					<div class="bauty-home-image">
						<img src="{{ $currentCategory->image }}">
						<!-- <span class="shadow-home"></span> -->

						<div class="treatmens-head-image-text">
							<div class="row">
								<div class="col-md-12">
									<a href="">{{ $currentCategory->TextTrans('title') }}</a>
								</div>
							</div>
						</div>

					</div>


					<hr class="selction-title-right-side-line">
@if(!array_key_exists("standart", $servicesArray) && !array_key_exists("premium", $servicesArray) )

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
                  @foreach( $item as $service )
					    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					      <div class="card-body">
					        <div class="treatmens-one-collapse-body">
					        	<p>{{ $service['service_title'] }}</p>	
					        </div>
					        <span>ხანგრძლივობა {{ $service['duration'] }} წუთი {{ $service['price'] }}₾</span>
					      </div>
					    </div>
				  @endforeach 
					  </div>
             @endforeach                   
                 </div>    
@else

<ul class="nav nav-tabs" role="tablist">
  <li class="nav-item">
    <a class="nav-link " href="#standartservice" role="tab" data-toggle="tab">STANDART SERVICE</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#premiumservice" role="tab" data-toggle="tab">PREMIUM SERVICE</a>
  </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div role="tabpanel" class="tab-pane fade in active" id="standartservice">
    
                <div class="accordion treatmens-collapse-list" id="accordionExample">
         @foreach($servicesArray['standart'] as $key => $item)
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
					        <span>ხანგრძლივობა {{ $item['duration'] }} - წუთი  {{ $item['price'] }}₾</span>
					      </div>
					    </div>
					  </div>
            @endforeach
					</div>
           
  </div>
  <div role="tabpanel" class="tab-pane fade" id="premiumservice">
    
                 <div class="accordion treatmens-collapse-list" id="accordionExample">
           @foreach($servicesArray['premium'] as $key => $item)
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
@endif         
				</div>
			</div>
		</div>

	</div>
</section>



@endsection

                 
                    

<!--
					<div class="accordion treatmens-collapse-list" id="accordionExample">
					  <div class="card">
					    <div class="card-header" id="headingOne">
					      <h5 class="mb-0">
					        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          EXCEL THERAPY О2
					        </button>
					      </h5>
					    </div>

					    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					      <div class="card-body">
					        <div class="treatmens-one-collapse-body">
					        	<p>Ritual program of skin elasticity restoration, fighting against first mimic wrinkles. 
								Aromatherapy - Cleansing - Exfoliation - Massage - Hydrogel Mask-Plaster - Massage</p>	
					        </div>
					        <span>80min - 280₾</span>
					      </div>
					    </div>
					  </div>
					  <div class="card">
					    <div class="card-header" id="headingTwo">
					      <h5 class="mb-0">
					        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					          TIMEXPERT +C
					        </button>
					      </h5>
					    </div>
					    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
					      <div class="card-body">
					        <div class="treatmens-one-collapse-body">
					        	<p>Ritual program of skin elasticity restoration, fighting against first mimic wrinkles. 
								Aromatherapy - Cleansing - Exfoliation - Massage - Hydrogel Mask-Plaster - Massage</p>	
					        </div>
					        <span>80min - 280₾</span>
					      </div>
					    </div>
					  </div>
					  <div class="card">
					    <div class="card-header" id="headingThree">
					      <h5 class="mb-0">
					        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					          TIMEXPERT RIDES 
					        </button>
					      </h5>
					    </div>
					    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
					      <div class="card-body">
					        <div class="treatmens-one-collapse-body">
					        	<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.</p> 
					        	<p>Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>	
					        </div>
					        <span>80min - 280₾</span>
					      </div>
					    </div>
					  </div>
					</div>
-->





<!--
<ul class="nav nav-tabs" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" href="#profile" role="tab" data-toggle="tab">profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#buzz" role="tab" data-toggle="tab">buzz</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#references" role="tab" data-toggle="tab">references</a>
  </li>
</ul>

 Tab panes 
<div class="tab-content">
  <div role="tabpanel" class="tab-pane fade in active" id="profile">...</div>
  <div role="tabpanel" class="tab-pane fade" id="buzz">bbb</div>
  <div role="tabpanel" class="tab-pane fade" id="references">ccc</div>
</div>
-->