@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/academycourses') }}">AcademyCourse</a> :
@endsection
@section("contentheader_description", $academycourse->$view_col)
@section("section", "AcademyCourses")
@section("section_url", url(config('laraadmin.adminRoute') . '/academycourses'))
@section("sub_section", "Edit")

@section("htmlheader_title", "AcademyCourses Edit : ".$academycourse->$view_col)

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
				{!! Form::model($academycourse, ['route' => [config('laraadmin.adminRoute') . '.academycourses.update', $academycourse->id ], 'method'=>'PUT', 'id' => 'academycourse-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'description_ge')
					@la_input($module, 'description_en')
					@la_input($module, 'description_ru')
					@la_input($module, 'duration')
					@la_input($module, 'price')
					@la_input($module, 'image')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/academycourses') }}">Cancel</a></button>
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
	$("#academycourse-edit-form").validate({
		
	});
});
</script>
@endpush
