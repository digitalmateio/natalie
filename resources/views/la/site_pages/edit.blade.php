@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/site_pages') }}">Site page</a> :
@endsection
@section("contentheader_description", $site_page->$view_col)
@section("section", "Site pages")
@section("section_url", url(config('laraadmin.adminRoute') . '/site_pages'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Site pages Edit : ".$site_page->$view_col)

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
				{!! Form::model($site_page, ['route' => [config('laraadmin.adminRoute') . '.site_pages.update', $site_page->id ], 'method'=>'PUT', 'id' => 'site_page-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'site_category_id')
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'url')
					@la_input($module, 'title_ru')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/site_pages') }}">Cancel</a></button>
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
	$("#site_page-edit-form").validate({
		
	});
});
</script>
@endpush