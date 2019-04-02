@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/servicecategories') }}">ServiceCategory</a> :
@endsection
@section("contentheader_description", $servicecategory->$view_col)
@section("section", "ServiceCategories")
@section("section_url", url(config('laraadmin.adminRoute') . '/servicecategories'))
@section("sub_section", "Edit")

@section("htmlheader_title", "ServiceCategories Edit : ".$servicecategory->$view_col)

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
				{!! Form::model($servicecategory, ['route' => [config('laraadmin.adminRoute') . '.servicecategories.update', $servicecategory->id ], 'method'=>'PUT', 'id' => 'servicecategory-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'site_category_id')
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'tile_ru')
					@la_input($module, 'image')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/servicecategories') }}">Cancel</a></button>
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
	$("#servicecategory-edit-form").validate({
		
	});
});
</script>
@endpush
