<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ServiceCategory;
use App\Models\Page_generator;
use App\Models\ServiceSubCategory;
use App\About;

class DryBarController extends Controller
{
    
    public function main()
    {
        $servicesCategories = ServiceCategory::where('site_category_id',5)->get();
        $about = About::where('page_id',28)->first();
        $pages = Page_generator::where('page_id',28)->get();

        return view('DryBar.main',[
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
  
       return view('DryBar.services',[
           'ServiceSubCategories' => $ServiceSubCategories,
           'servicesArray'        => $servicesArray,
           'currentCategory'      => $currentCategory,
       ]);  
    }
    
    public function vip()
    {
        $ServiceSubCategories = ServiceSubCategory::all();
        $servicesArray = [];
    
        foreach($ServiceSubCategories as $ServiceSubCategory)
        {
            $services = $ServiceSubCategory->service;
            foreach($services as $service)
            {
                
                $servicesArray[$ServiceSubCategory->TextTrans('title')] = [
                    'service_title' => $service->TextTrans('title'),
                    'price' => $service->price,
                    'duration' => $service->duration,
                    'subCategoryTitle' => $ServiceSubCategory->TextTrans('title')
                ];
               
            }
        }
  
       return view('DryBar.vip',[
           'ServiceSubCategories' => $ServiceSubCategories,
           'servicesArray'        => $servicesArray,
       ]);  
    }
}
