<?php

namespace App\Http\Middleware;

use Closure;
use App;
use Cookie;
use Crypt;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;
//use Session;

class Language
{
      /**
       * Handle an incoming request.
       *
       * @param  \Illuminate\Http\Request  $request
       * @param  \Closure  $next
       * @param  string|null  $guard
       * @return mixed
       */
      public function handle($request, Closure $next, $guard = null)
      {

//         dd(  $request->cookie('locale') );
//         dd( Session::has('locale') );
//         dd(  Session::get('locale') );
//         dd( $request->cookie('locale') );
//         dd( Cookie::get('locale') );
//         dd( Crypt::decrypt($request->cookie('locale')) );
//         dd( Crypt::decrypt($request->cookie('locale')) );
//         dd( Crypt::decrypt($request->cookie('locale')) );
//         dd(Crypt::decrypt( Cookie::get('locale') ));

              if(Session::has('locale')){

                  $locale = Session::get('locale');
                    App::setLocale($locale);
                  
              }else{

                  if($request->cookie('locale') != null)
                  {
//                    dd(Cookie::get('locale'));
//                    dd($request->cookie('locale'));
                   // dump(Cookie::get('locale'));
//                   $locale = Crypt::decrypt( Cookie::get('locale') );
                   // dd( $locale);
                      if(in_array(Cookie::get('locale'), ['en', 'ru','ge']) )
                      {
                        $locale =  Cookie::get('locale');
    //                    $locale = $request->cookie('locale');
    //                    $locale = Crypt::decrypt($request->cookie('locale'));
                        $request->session()->put('locale',$locale);
                        App::setLocale($locale);
    //                  session(['locale' => $locale]);
                     }else{
                           
                        $locale =  Cookie::get('locale');
    //                  $locale = $request->cookie('locale');
                         
                        $locale = Crypt::decrypt($request->cookie('locale'));
                         
                        $request->session()->put('locale',$locale);
                        App::setLocale($locale);
    //                  session(['locale' => $locale]);
                      }

                  }else{

                      $locale = Config::get('app.locale');
                      App::setLocale($locale);
                      $request->session()->put('locale',$locale);
                  }
              }

              return $next($request);
/* old 
            if(Session::has('locale')){
                    $locale = Session::get('locale');

            }elseif($request->cookie('locale') != null){

                    $locale = Crypt::decrypt($request->cookie('locale'));
                    $request->session()->put('locale',$locale);
            }else{
                    $locale = Config::get('app.locale');
            }


              App::setLocale($locale);

              return $next($request);
*/
      }
}
