<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SpaConceptPartner;
use App\Models\Page_generator;
use App\Models\SpaConcepTestimonial;
use App\SpaConceptGallery;

class SpaConceptController extends Controller
{
    
   public function main()
   {
       $data = Page_generator::where('page_id',27)->get();
       $testimonials = SpaConcepTestimonial::all();
       $galleries = SpaConceptGallery::take(5)->get();
       $pages = [];
        
        foreach($data as $item){
            $pages[$item->section_select][] = $item;
        }
       
       return view('spaconcept.main',[
           'testimonials' => $testimonials,
           'pages'        => $pages,
           'galleries'    => $galleries,
       ]);
   }

   public function products()
   {
        return view('spaconcept.products');
   }
   
   public function offers()
   {
        return view('spaconcept.offers');
   }
   
   public function partners()
   {
      $data = SpaConceptPartner::all();
      $partners = [];
       
       foreach( $data as $item)
       {
           if($item->position == 'top')
           {
               $partners[$item->position][] = $item;
           }
            
           if($item->position == 'central')
           {
               $partners[$item->position][] = $item;
           }
       }
       
      return view('spaConcept.partners',[
          'partners' => $partners,
      ]);
       
   }
     
   public function gallery()
   {
       $galleries = SpaConceptGallery::all();
       return view('spaConcept.gallery',[
           'galleries' => $galleries 
       ]); 
   }
    
   public function contact()
   {
       
   }
       
        
}
