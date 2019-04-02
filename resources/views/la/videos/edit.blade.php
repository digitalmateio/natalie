@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/videos') }}">Video</a> :
@endsection
@section("contentheader_description", $video->$view_col)
@section("section", "Videos")
@section("section_url", url(config('laraadmin.adminRoute') . '/videos'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Videos Edit : ".$video->$view_col)

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
				{!! Form::model($video, ['route' => [config('laraadmin.adminRoute') . '.videos.update', $video->id ], 'method'=>'PUT', 'id' => 'video-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'site_category_id')
					@la_input($module, 'title_ge')
					@la_input($module, 'title_en')
					@la_input($module, 'title_ru')
					@la_input($module, 'description_ge')
					@la_input($module, 'description_en')
					@la_input($module, 'description_ru')
					@la_input($module, 'url')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/videos') }}">Cancel</a></button>
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
	$("#video-edit-form").validate({
		
	});
});
</script>
@endpush
