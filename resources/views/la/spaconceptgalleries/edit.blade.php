@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/spaconceptgalleries') }}">SpaConceptGallery</a> :
@endsection
@section("contentheader_description", $spaconceptgallery->$view_col)
@section("section", "SpaConceptGalleries")
@section("section_url", url(config('laraadmin.adminRoute') . '/spaconceptgalleries'))
@section("sub_section", "Edit")

@section("htmlheader_title", "SpaConceptGalleries Edit : ".$spaconceptgallery->$view_col)

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
				{!! Form::model($spaconceptgallery, ['route' => [config('laraadmin.adminRoute') . '.spaconceptgalleries.update', $spaconceptgallery->id ], 'method'=>'PUT', 'id' => 'spaconceptgallery-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'image')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/spaconceptgalleries') }}">Cancel</a></button>
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
	$("#spaconceptgallery-edit-form").validate({
		
	});
});
</script>
@endpush