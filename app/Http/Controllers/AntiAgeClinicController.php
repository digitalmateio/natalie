<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page_generator;
use App\Models\ServiceCategory;
use App\Models\ServiceSubCategory;
use App\About;

class AntiAgeClinicController extends Controller
{
    public function main()
    {
        $data = Page_generator::where('page_id',26)->get();
        $about = About::where('page_id',26)->first();
        $pages = [];
        
        foreach($data as $item){
            $pages[$item->section_select][] = $item;
        }

        return view('AntiAgeClinic.main',[
           'pages' => $pages, 
           'about' => $about
        ]);
    }
    
    public function skincare()
    {
        $servicesCategories = ServiceCategory::where('tag','skincare')->where('site_category_id',3)->get();
        return view('AntiAgeClinic.skincare',[
            'servicesCategories' => $servicesCategories,
        ]);

    }
    
    public function  bodycare()
    {
        $servicesCategories = ServiceCategory::where('tag','bodycare')->where('site_category_id',3)->get();
        return view('AntiAgeClinic.bodycare',[
            'servicesCategories' => $servicesCategories,
        ]);
    }
    
    public function  laser()
    {
        $servicesCategories = ServiceCategory::where('tag','laser')->where('site_category_id',3)->get();
        return view('AntiAgeClinic.laser',[
            'servicesCategories' => $servicesCategories,
        ]);
    }
    
    public function  products()
    {

    }
    
    public function  contact()
    {

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
        
        return view('AntiAgeClinic.services',[
           'ServiceSubCategories' => $ServiceSubCategories,
           'servicesArray' => $servicesArray,
           'currentCategory' => $currentCategory,
       ]); 
        
    }
}
