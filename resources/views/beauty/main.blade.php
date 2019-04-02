@extends("layouts.main",['subMenu' => getSubMenu(1) ])
{{-- გადაეცემეა site_category-ს აიდი და გამოაქ მაგის მენიუს მასივი მაგ: beauty=1  გადავცემთ 1 და გამოიტანს beauty ის მენიუს--}}

{{-- გადაეცემეა ფეიჯის აიდი და გამოაქ მაგის სლაიდერი სურათების მასივი --}}
@section('content')

{{--     @foreach(getSlider(1) as $image)
    <img src="{{ $image ?? noImage() }}" alt="" width="200">
    @endforeach --}}

<section>
    <div class="container beauty-head-blocks">

        <div class="row">

            @foreach($servicesCategories as $serviceCategory)
               @php 
                 //$thumblir = optional($serviceCategory)->getImage;
               @endphp
                <!-- Line One -->
                <div class="col-md-2">
                    <div class="beauty-head-one-block">
                        <div class="beauty-image-block">
                            <a href="" class="image-hover-block">
                                <figure class="effect-apollo">
                                    <img src="{{ $serviceCategory->thumbnails_image_id ?? noImage() }}">
                                    <figcaption><!--  --></figcaption>          
                                </figure>
                            </a>
                            <a href="{{ route('beautyCategory',$serviceCategory->id ) }}" class="blocks-for-cat">{{$serviceCategory->TextTrans('title')}}</a>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>


    </div>
</section>



    
    
<section>
    <div class="container spa">

        <div class="row">
            <div class="col-md-10">
                <h2 class="section-title-head">WHATS NEW</h2>
            </div>
            <div class="col-md-2 float-right">
                <hr class="selction-title-right-side-line "></hr>
            </div>
        </div>



            
        <div class="row">

            @include('news', ['site_category_id' => 1])


        </div>



    </div>
</section>


@endsection