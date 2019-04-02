@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/adresses') }}">Adress</a> :
@endsection
@section("contentheader_description", $adress->$view_col)
@section("section", "Adresses")
@section("section_url", url(config('laraadmin.adminRoute') . '/adresses'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Adresses Edit : ".$adress->$view_col)

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
				{!! Form::model($adress, ['route' => [config('laraadmin.adminRoute') . '.adresses.update', $adress->id ], 'method'=>'PUT', 'id' => 'adress-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'site_category_id')
					@la_input($module, 'address_ge')
					@la_input($module, 'address_en')
					@la_input($module, 'address_ru')
					@la_input($module, 'tel')
					@la_input($module, 'mobile')
					@la_input($module, 'email')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/adresses') }}">Cancel</a></button>
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
	$("#adress-edit-form").validate({
		
	});
});
</script>
@endpush
