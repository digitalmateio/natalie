<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', 'HomeController@main');
Route::get('/home', 'HomeController@index');

Route::group(['prefix' => 'beauty'],function(){
        
    Route::get('/', 'BeautyController@main')->name('BeautyHomePage');
    Route::get('/salon', 'BeautyController@salon')->name('beautysalon');
    Route::get('/wellness', 'BeautyController@wellness')->name('beautywellness');
    Route::get('/solarium', 'BeautyController@solarium')->name('beautysolarium');
    Route::get('/giftcard', 'BeautyController@giftcard')->name('beautygiftcard');
    Route::get('/video', function(){
        return view('videos',[ 'site_category_id' => 1 ]);
    })->name('beautyvideos');
    Route::get('/category/{id}', 'BeautyController@category')->name('beautyCategory');
    Route::get('/contact',  function(){
        return view('contact',[ 'site_category_id' => 1 ]);
    })->name('beautycontact');
        
});

Route::group(['prefix' => 'academy'],function(){
        
    Route::get('/', 'AcademyController@main')->name('AcademyHomePage');
    Route::get('/course/{id}', 'AcademyController@course')->name('AcademyCourse');
    Route::get('/programms', 'AcademyController@programms')->name('Academyprogramms');
    Route::get('/teachers', 'AcademyController@teachers')->name('Academyteachers');
    Route::get('/courses', 'AcademyController@courses')->name('Academycourses');
    Route::get('/video', function(){
        return view('videos',[ 'site_category_id' => 2 ]);
    })->name('Academyvideos');
    Route::get('/contact',  function(){
        return view('contact',[ 'site_category_id' => 2 ]);
    })->name('AcademyContact');
        
});

Route::group(['prefix' => 'antiageclinic'],function(){
    
    Route::get('/', 'AntiAgeClinicController@main')->name('AntiAgeClinicHomePage');
    Route::get('/skincare', 'AntiAgeClinicController@skincare')->name('AntiAgeClinicskincare');
    Route::get('/bodycare', 'AntiAgeClinicController@bodycare')->name('AntiAgeClinicbodycare');
    Route::get('/laser', 'AntiAgeClinicController@laser')->name('AntiAgeCliniclaser');
    Route::get('/products', 'AntiAgeClinicController@products')->name('AntiAgeClinicproducts');
    Route::get('/category/{id}', 'AntiAgeClinicController@category')->name('AntiAgeClinicCategory');
    Route::get('/video', function(){
        return view('videos',[ 'site_category_id' => 3 ]);
    })->name('AntiAgeClinicvideos');
    Route::get('/contact',  function(){
        return view('contact',[ 'site_category_id' => 3 ]);
    })->name('AntiAgeClinicyContact');
    
});

Route::group(['prefix' => 'spaconcept'],function(){

    Route::get('/', 'SpaConceptController@main')->name('SpaConceptHomePage');
    Route::get('/products', 'SpaConceptController@products')->name('SpaConceptProducts');
    Route::get('/offers', 'SpaConceptController@offers')->name('SpaConceptOffers');
    Route::get('/partners', 'SpaConceptController@partners')->name('SpaConceptPartners');
    Route::get('/gallery', 'SpaConceptController@gallery')->name('SpaConceptGaller');
    Route::get('/video', function(){
        return view('videos',[ 'site_category_id' => 4 ]);
    })->name('SpaConceptvideos');
    Route::get('/contact',  function(){
        return view('contact',[ 'site_category_id' => 4 ]);
    })->name('SpaConceptContact');
    
});

Route::group(['prefix' => 'drybar'],function(){
    
    Route::get('/', 'DryBarController@main')->name('drybarHomePage');
    Route::get('/category/{id}', 'DryBarController@category')->name('drybarCategory');    
    Route::get('/vip', 'DryBarController@vip')->name('drybarVip'); 
    Route::get('/video', function(){
        return view('videos',[ 'site_category_id' => 5 ]);
    })->name('drybarvideos');
});

Route::group(['prefix' => 'natalispa'],function(){
    
    Route::get('/', 'NatalieSpaController@main')->name('natalispaHomePage');
    Route::get('/category/{id}', 'NatalieSpaController@category')->name('natalispaCategory'); 
    Route::get('/video', function(){
        return view('videos',[ 'site_category_id' => 6 ]);
    })->name('natalispavideos');

});


Route::get('/language','LanguageController@changeLanguage')->name('language');


Route::match( ['get','post'],'/contact', 'ContactController@contact')->name('contact');


/* ================== Homepage + Admin Routes ================== */

require __DIR__.'/admin_routes.php';
