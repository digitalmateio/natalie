@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/stylists') }}">Stylist</a> :
@endsection
@section("contentheader_description", $stylist->$view_col)
@section("section", "Stylists")
@section("section_url", url(config('laraadmin.adminRoute') . '/stylists'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Stylists Edit : ".$stylist->$view_col)

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
				{!! Form::model($stylist, ['route' => [config('laraadmin.adminRoute') . '.stylists.update', $stylist->id ], 'method'=>'PUT', 'id' => 'stylist-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'ListID')
					@la_input($module, 'showability')
					@la_input($module, 'monday')
					@la_input($module, 'tuesday')
					@la_input($module, 'wednesday')
					@la_input($module, 'thursday')
					@la_input($module, 'friday')
					@la_input($module, 'saturday')
					@la_input($module, 'sunday')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/stylists') }}">Cancel</a></button>
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
	$("#stylist-edit-form").validate({
		
	});
});
</script>
@endpush
