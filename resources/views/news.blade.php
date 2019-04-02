  
      @foreach(getNews($site_category_id) as $news)
       @php 
         $newsthumblir = optional($news)->getThumbnail;
       @endphp


            <div class="col-md-6 col-sm-12">
                <div class="what-is-new-insine">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class="what-is-new-image">
                                <img src="{{ optional($newsthumblir)->url ?? noImage() }}">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div class="what-is-new-text">
                                <h3>{{ $news->TextTrans('title') }}</h3>
                                <p>{{ $news->TextTrans('description') }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    @endforeach
