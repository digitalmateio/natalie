<?php
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Models\Site_category;
use App\Models\Site_page;
use App\Slider;
use App\Models\News;
use App\Models\Partner;
use App\Models\Adress;
use App\Models\Video;

function noImage(){
    return 'https://images.puella-magi.net/thumb/2/27/No_Image_Wide.svg/800px-No_Image_Wide.svg.png?20110202071158';
}

function getMenu(int $category_name = null) {
     
    $categories = Site_category::all();
    $menu = [];
    
    foreach($categories as $category)
    {  
        $menu[$category->url] = $category->TextTrans('title');
    }

    return $menu;
}


function getSubMenu(int $category_id = null) {
    
    if(is_null($category_id))
    {
        return [];
    }
    
    $pages = Site_page::where('site_category_id',$category_id)->get();
    $menu = [];
   
    foreach($pages as $page)
    {
        $category = optional($page)->category;
        $menu[optional($category)->url.'/'.$page->url] = $page->TextTrans('title');
    }
//    array_pop( $menu );
    return  $menu;
}

function getSlider(int $page_id = null){
    
    $slider = [];
    $data = Slider::where('page_id',$page_id)->get();
    return $data;

}

function getNews(int $site_category_id = null){
    $data = News::where('site_category_id',$site_category_id)->take(4)->get();
    return $data;
}

function getPartners(){
    $partners = Partner::all();
    $images = [];
    foreach($partners as $partner){
        $image = optional($partner)->getImage;
        $images[] =  optional($image)->url ?? noImage();
    }
    return $images;
}

function getAddress(int $site_category_id = null){
    return Adress::where('site_category_id',$site_category_id)->first() ?? new Adress;
}
   
function getVideos(int $site_category_id = null){
    
    $videos = Video::where('site_category_id',$site_category_id)->get();
    return $videos;
}

?>