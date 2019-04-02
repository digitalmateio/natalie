@extends("layouts.main",['subMenu' => getSubMenu($site_category_id) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

<section>
	<div class="container beauty-head-blocks">
		<div class="row">
			<div class="col-md-4 offset-md-2 contact">
				<h3>Contact</h3>
				<form action="{{ route('contact') }}" method="post">
				 {{ csrf_field() }}
					<div class="row">
						<div class="col-md-6">
							<input type="text" name="name" placeholder="Full name">
						</div>
						<div class="col-md-6">
							<input type="text" name="subject" placeholder="Subject">
						</div>
						<div class="col-md-12 insine-inputs">
							<div class="row">
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-12">
											<input type="text" name="email" placeholder="E-mail">
										</div>
										<div class="col-md-12">
											<input type="text" name="phone" placeholder="Phone Number">
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<textarea name="text" placeholder="text"></textarea>
								</div>
								<div class="col-md-12">
									<input type="submit" name="" value="SUBMIT">
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-4 offset-md-1 contact-right-side">
				<h3>Adress</h3>
				<div class="contact-address-small-info">
				@php
				$address = getAddress($site_category_id);
				@endphp
					<ul>
						<li>{{ $address->TextTrans('address') }}</li>
						<li>{{ $address->tel  }}</li>
						<li>{{ $address->mobile }}</li>
						<li>{{ $address->email  }}</li>
					</ul>
				</div>
			</div>
			<div class="col-md-12 contact-map">
				<img src="assets/image/contact-map.png">
			</div>
		</div>
	</div>
</section>


@endsection