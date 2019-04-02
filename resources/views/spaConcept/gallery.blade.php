@extends("layouts.main",['subMenu' => getSubMenu(4) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

<section>
	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<p class="spa-partners-gallery-title-head-content">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum</p>
			</div>
		</div>
		<div class="row spa-gallery-block">

			<div class="col-md-3 spa-gallery-flter-block">
				<h2>FILTER BY CATEGORY</h2>
				<ul>
					<li><a href=""><i class="fas fa-plus"></i> Products</a></li>
					<li><a href=""><i class="fas fa-plus"></i> Interior</a></li>
					<li><a href=""><i class="fas fa-plus"></i> Devices</a></li>
				</ul>
			</div>
	@foreach($galleries as $gallery )
       @foreach(optional($gallery)->gallery as $image)
			<div class="col-md-3" data-category="{{ $gallery->category }}">
				<img src="{{ $image }}">
			</div>
      @endforeach
   @endforeach
		</div>
	</div>
</section>	

@endsection