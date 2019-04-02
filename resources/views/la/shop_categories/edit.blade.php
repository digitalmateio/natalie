@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/shop_categories') }}">Shop category</a> :
@endsection
@section("contentheader_description", $shop_category->$view_col)
@section("section", "Shop categories")
@section("section_url", url(config('laraadmin.adminRoute') . '/shop_categories'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Shop categories Edit : ".$shop_category->$view_col)

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
				{!! Form::model($shop_category, ['route' => [config('laraadmin.adminRoute') . '.shop_categories.update', $shop_category->id ], 'method'=>'PUT', 'id' => 'shop_category-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/shop_categories') }}">Cancel</a></button>
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
	$("#shop_category-edit-form").validate({
		
	});
});
</script>
@endpush
