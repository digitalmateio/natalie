<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ServiceCategory;
use App\Models\Page_generator;
use App\Models\ServiceSubCategory;
use App\About;

class NatalieSpaController extends Controller
{
    public function main()
    {
        $servicesCategories = ServiceCategory::where('site_category_id',6)->get();
        $about = About::where('page_id',29)->first();
        $pages = Page_generator::where('page_id',29)->get();

        return view('NataliSpa.main',[
            'servicesCategories' => $servicesCategories,
            'pages' => $pages,
            'about' => $about,
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
                        'price' => $service->price,
                        'duration' => $service->duration,
                        'subCategoryTitle' => $ServiceSubCategory->TextTrans('title')
                    ];
                }
                
                if(in_array("premium", $service->service_type))
                {
                    $servicesArray['premium'][$ServiceSubCategory->TextTrans('title')] = [
                        'service_title' => $service->TextTrans('title'),
                        'price' => $service->price,
                        'duration' => $service->duration,
                        'subCategoryTitle' => $ServiceSubCategory->TextTrans('title')
                    ];
                }
                
                if(!in_array("standart", $service->service_type) && !in_array("premium", $service->service_type) )
                {
                    $servicesArray[$ServiceSubCategory->TextTrans('title')][] = [
                        'service_title' => $service->TextTrans('title'),
                        'price' => $service->price,
                        'duration' => $service->duration,
                        'subCategoryTitle' => $ServiceSubCategory->TextTrans('title')
                    ];
                }
            }
        }
  
       return view('NataliSpa.services',[
           'currentCategory' => $currentCategory,
           'ServiceSubCategories' => $ServiceSubCategories,
           'servicesArray' => $servicesArray,
       ]);  
    }
    
    
}
