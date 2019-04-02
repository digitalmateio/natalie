@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/shop_subcategories') }}">Shop subcategory</a> :
@endsection
@section("contentheader_description", $shop_subcategory->$view_col)
@section("section", "Shop subcategories")
@section("section_url", url(config('laraadmin.adminRoute') . '/shop_subcategories'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Shop subcategories Edit : ".$shop_subcategory->$view_col)

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
				{!! Form::model($shop_subcategory, ['route' => [config('laraadmin.adminRoute') . '.shop_subcategories.update', $shop_subcategory->id ], 'method'=>'PUT', 'id' => 'shop_subcategory-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'parent_category')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/shop_subcategories') }}">Cancel</a></button>
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
	$("#shop_subcategory-edit-form").validate({
		
	});
});
</script>
@endpush
