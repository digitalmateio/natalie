@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/servicesubcategories') }}">ServiceSubCategory</a> :
@endsection
@section("contentheader_description", $servicesubcategory->$view_col)
@section("section", "ServiceSubCategories")
@section("section_url", url(config('laraadmin.adminRoute') . '/servicesubcategories'))
@section("sub_section", "Edit")

@section("htmlheader_title", "ServiceSubCategories Edit : ".$servicesubcategory->$view_col)

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
				{!! Form::model($servicesubcategory, ['route' => [config('laraadmin.adminRoute') . '.servicesubcategories.update', $servicesubcategory->id ], 'method'=>'PUT', 'id' => 'servicesubcategory-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'parent_category_id')
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/servicesubcategories') }}">Cancel</a></button>
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
	$("#servicesubcategory-edit-form").validate({
		
	});
});
</script>
@endpush
