@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/spaconceptestimonials') }}">SpaConcepTestimonial</a> :
@endsection
@section("contentheader_description", $spaconceptestimonial->$view_col)
@section("section", "SpaConcepTestimonials")
@section("section_url", url(config('laraadmin.adminRoute') . '/spaconceptestimonials'))
@section("sub_section", "Edit")

@section("htmlheader_title", "SpaConcepTestimonials Edit : ".$spaconceptestimonial->$view_col)

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
				{!! Form::model($spaconceptestimonial, ['route' => [config('laraadmin.adminRoute') . '.spaconceptestimonials.update', $spaconceptestimonial->id ], 'method'=>'PUT', 'id' => 'spaconceptestimonial-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'text_ge')
					@la_input($module, 'text_en')
					@la_input($module, 'text_ru')
					@la_input($module, 'profession')
					@la_input($module, 'image')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/spaconceptestimonials') }}">Cancel</a></button>
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
	$("#spaconceptestimonial-edit-form").validate({
		
	});
});
</script>
@endpush
