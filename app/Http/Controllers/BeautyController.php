<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page_generator;
use App\Models\ServiceCategory;
use App\Models\ServiceSubCategory;
use App\Models\News;
use App\Models\Video;

class BeautyController extends Controller
{
    public function main()
    {
        $servicesCategories = ServiceCategory::where('site_category_id',1)->get();

        return view('beauty.main',[
            'servicesCategories' => $servicesCategories,
        ]);
    }
    
    public function salon()
    {
       $data = Page_generator::where('page_id',1)->get();
       $pages = [];
        
        foreach($data as $item){
            $pages[$item->section_select][] = $item;
        }
        
       return view('beauty.salon',[ 'pages' => $pages ]);
    }
    
    public function wellness()
    {
    
       $data = Page_generator::where('page_id',2)->get();
       $pages = [];
        
        foreach($data as $item){
            $pages[$item->section_select][] = $item;
        }
        
       return view('beauty.welness_lab',['pages'=>$pages]);

    }
    
    public function solarium()
    {
        $data = Page_generator::where('page_id',3)->get();
        $pages = [];
        
        foreach($data as $item){
            $pages[$item->section_select][] = $item;
        }
        
       return view('beauty.solarium',['pages'=>$pages]);
    }
    
    public function giftcard()
    {
       $data = Page_generator::where('page_id',4)->get();
       $pages = [];
        
        foreach($data as $item){
            $pages[$item->section_select][] = $item;
        }
        
       return view('beauty.giftcard',['pages'=>$pages]);
    }
    
    public function videos()
    {
//        $videos = Video::where('site_category_id',1)->get();
//        dd($videos);
        return view('videos',[
//            'videos' => $videos
        ]);
        
    }
    
    public function category(int $id = null)
    {
        $currentCategory = ServiceCategory::findOrfail($id);
        $ServiceSubCategories = ServiceSubCategory::where('parent_category_id',$id)->get();

        $servicesArray = [];
        
        foreach($ServiceSubCategories as $ServiceSubCategory)
        {
            $services = $ServiceSubCategory->service;
            foreach($services as $service)
            {
                if(in_array("standart", $service->service_type))
                {
                    $servicesArray['standart'][$ServiceSubCategory->TextTrans('title')] = [
                        'service_title' => $service->TextTrans('title'),
                        'duration' => $service->duration,
                        'price' => $service->price,
                        'subCategoryTitle' => $ServiceSubCategory->TextTrans('title')
                    ];
                }
                
                if(in_array("premium", $service->service_type))
                {
                    $servicesArray['premium'][$ServiceSubCategory->TextTrans('title')] = [
                        'service_title' => $service->TextTrans('title'),
                        'duration' => $service->duration,
                        'price' => $service->price,
                        'subCategoryTitle' => $ServiceSubCategory->TextTrans('title')
                    ];
                }
                
                if(!in_array("standart", $service->service_type) && !in_array("premium", $service->service_type) )
                {
                    $servicesArray[$ServiceSubCategory->TextTrans('title')][] = [
                        'service_title' => $service->TextTrans('title'),
                        'duration' => $service->duration,
                        'price' => $service->price,
                        'subCategoryTitle' => $ServiceSubCategory->TextTrans('title')
                    ];
                }
                    
            }

        }

        
       return view('beauty.services',[
           'ServiceSubCategories' => $ServiceSubCategories,
           'servicesArray' => $servicesArray,
           'currentCategory' => $currentCategory,
       ]);  
    }
    




}
