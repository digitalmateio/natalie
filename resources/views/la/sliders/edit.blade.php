@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/sliders') }}">Slider</a> :
@endsection
@section("contentheader_description", $slider->$view_col)
@section("section", "Sliders")
@section("section_url", url(config('laraadmin.adminRoute') . '/sliders'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Sliders Edit : ".$slider->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($slider, ['route' => [config('laraadmin.adminRoute') . '.sliders.update', $slider->id ], 'method'=>'PUT', 'id' => 'slider-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'site_category_id')
					@la_input($module, 'page_id')
					@la_input($module, 'images')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/sliders') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#slider-edit-form").validate({
		
	});
});
</script>
@endpush
