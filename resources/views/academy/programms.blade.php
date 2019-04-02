@extends("layouts.main",['subMenu' => getSubMenu(2) ])

@section('content')

{{--
 @foreach($pages as $page)
   
 @endforeach
--}}


<section>
  <div class="container">

      @if(!empty($pages))
          @foreach($pages as $page)
          @php

            $title = $page->TextTrans('title');
            $description = $page->TextTrans('description');
            $image = optional($page)->getImage;

          @endphp

            <div class="row">
              <div class="col-md-6">
                <div class="beauty-offers-one-image">
                  <img src="{{ optional($image)->url }}">
                </div>
              </div>
              <div class="col-md-6">
                <div class="beauty-one-offers-title-line academy-programs">
                  <h3>{{ $title }}</h3>
                </div>
                <p class="beauty-one-offers-text">
                  {{ $description }}
                </p>
                <div class="beauty-offer-read-btn-line academy">

                    @if(!is_null($standart) )
                        @php
                          $stanradtfile = optional($standart)->getFile;
                        @endphp
                        <a href="{{ optional($stanradtfile)->url ?? '#' }}"><i class="icon-file-pdf"></i>DOWNLOAD PDF</a> 
                    @endif

                  <hr>
                </div>
              </div>
            </div>


          @endforeach
      @endif




      <div class="row">

            <div class="col-md-12">
              <h4 class="academy-programs-list">For authorized personel only</h4>
            </div>


            @foreach($programmsData as $key => $programms)

                @if($key == 'standart')
                    @continue
                @endif


                  <div class="col-md-3">
                    <div class="academy-list-of-mrograms">
                      <h3>{{$key}}</h3>
                        <ul>

                          @foreach($programms as $program)
                          
                            @php
                                $file = optional($program)->getFile;
                            @endphp
                    

                            <li>
                              <a href="{{ optional($file)->url ?? '#' }}"><i class="icon-file-pdf"></i>  {{ optional($file)->name }}</a>
                            </li>

                          @endforeach

                        </ul>
                    </div>
                  </div>
            @endforeach



        </div>
      </section>
        




@endsection 

