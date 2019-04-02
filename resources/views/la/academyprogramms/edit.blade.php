@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/academyprogramms') }}">AcademyProgramm</a> :
@endsection
@section("contentheader_description", $academyprogramm->$view_col)
@section("section", "AcademyProgramms")
@section("section_url", url(config('laraadmin.adminRoute') . '/academyprogramms'))
@section("sub_section", "Edit")

@section("htmlheader_title", "AcademyProgramms Edit : ".$academyprogramm->$view_col)

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
				{!! Form::model($academyprogramm, ['route' => [config('laraadmin.adminRoute') . '.academyprogramms.update', $academyprogramm->id ], 'method'=>'PUT', 'id' => 'academyprogramm-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'program_type')
					@la_input($module, 'file')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/academyprogramms') }}">Cancel</a></button>
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
	$("#academyprogramm-edit-form").validate({
		
	});
});
</script>
@endpush
