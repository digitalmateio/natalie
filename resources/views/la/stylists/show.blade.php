@extends('la.layouts.app')

@section('htmlheader_title')
	Stylist View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	

	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/stylists') }}" data-toggle="tooltip" data-placement="right" title="Back to Stylists"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info"><i class="fa fa-bars"></i> General Info</a></li>
		
	</ul>

	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>General Info</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'name')
						@la_display($module, 'ListID')
						@la_display($module, 'showability')
						@la_display($module, 'monday')
						@la_display($module, 'tuesday')
						@la_display($module, 'wednesday')
						@la_display($module, 'thursday')
						@la_display($module, 'friday')
						@la_display($module, 'saturday')
						@la_display($module, 'sunday')
					</div>
				</div>
			</div>
		</div>
		
		
	</div>
	</div>
	</div>
</div>
@endsection
