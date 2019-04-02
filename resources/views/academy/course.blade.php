@extends("layouts.main",['subMenu' => getSubMenu(2) ])

@section('content')

@php
$image = optional($couser)->getImage;
@endphp
<img src="{{ optional($image)->url ?? noImage() }}" alt="">
{{ $couser->TextTrans('title') }} <br>
{{ $couser->TextTrans('description') }}<br>
{{ $couser->duration }}<br>
{{ $couser->price }}<br>

@endsection