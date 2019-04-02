@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/page_generators') }}">Page generator</a> :
@endsection
@section("contentheader_description", $page_generator->$view_col)
@section("section", "Page generators")
@section("section_url", url(config('laraadmin.adminRoute') . '/page_generators'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Page generators Edit : ".$page_generator->$view_col)

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
				{!! Form::model($page_generator, ['route' => [config('laraadmin.adminRoute') . '.page_generators.update', $page_generator->id ], 'method'=>'PUT', 'id' => 'page_generator-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'site_category_id')
					@la_input($module, 'page_id')
					@la_input($module, 'section_select')
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'description_ge')
					@la_input($module, 'description_en')
					@la_input($module, 'description_ru')
					@la_input($module, 'image')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/page_generators') }}">Cancel</a></button>
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
	$("#page_generator-edit-form").validate({
		
	});
});
</script>
@endpush
