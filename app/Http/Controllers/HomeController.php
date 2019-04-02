<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
//use App\Models\Site_category;
//use App\Models\Site_page;
//use App\Models\BeautyCategory;
//use App\Models\BeautySubCategory;
//use App\Models\AcademyCourse;
//use App\Models\AcademyTeacher;
//use App\Models\AcademyProgramm;
//use App\Models\ServiceCategory;
//use App\Models\Partner;
use App\Models\Service;
//use App\Models\Slider;
use App\Models\News;
use App\About;
// use App\FmgService;

//use App\Models\Shop_category;
//use App\Models\Shop_subcategory;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }
    
    public function main()
    {
        $about = About::where('page_id',22)->first();
        return view('main',[
            'about' => $about
        ]);
    }

    /**
     * Show the application dashboard.
     *
     * @return Response
     */
    public function index()
    {
        
      
       
//        foreach($categories as $category)
//        {
//            echo $category->id.' '$category->TextTrans('title') ;
//        }
        // კატეგორიები
//        $url = 'http://178.134.109.218/rest/getCategoryes.php'; 
        
        //პარამეტრი არ გადაეცემა აბრუნებს ფილიალების მასივს 
//        $url = 'http://178.134.109.218/rest/getFilials.php'; 
        
        //შედეგად ბრუნდება სტილისტების სია (მხოლოდ აქტიურები SHOW=1) კონკრეტულ ფილიალში თავიანთი სამუსაო გრაფიკით მთელი კვირის განმავლობაში
//          $url = 'http://178.134.109.218/rest/getStylists.php?filiali=Kostava'; 
        
//        აბრუნებს კატეგორიის მიხედვით მომსახურებას და პროდუქტს პარამეტრად გადაეცემა წინა მეთოდში დაბრუნებული კატეგორიის ID
//          $url = 'http://178.134.109.218/rest/getProducts.php?category=9'; 
        
        // აბრუნებს კონტაქტების მთლიან სიას ფილტრების დამატება შეიძლება ამაზე მაგრამ ინფორმაცია არ არის შევსებული სწორად და ყოველგვარ აზრს კარგავს აქ ფილტრის დამატება
        // აქ json არ მოდის უბრალოდ  მასივი მოდის
//          $url = 'http://178.134.109.218/rest/getContactList.php'; 
        
            //აბრუნებს კონკრეტულ მომხმარებელს  პარამეტრად გადაეცემა მომხმარებლის ID
//          $url = 'http://178.134.109.218/rest/getCustomer.php?id_customer=123'; 
        
        
        
        /*
        გადაეცემა 3 პარამეტრი. 
ფილიალის დასახელება
დაწყების თარიღი
დასრულების თარიღი (თუ მხოლოდ ერთი დღე გინდათ დაწყებას და დასრულებას ერთი და იგივე თარიღს გადააწოდებთ)
დროის გადაწოდება  არ არის საჭირო,   მთელი სამუშაო დღე მოაქვს გადაწოდებული თარიღების შუალედში.

პასუხად გიბრუნდებათ კონკრეტულ ფილიალში სტილისტები თავისი სამშაო გრაფიკით "MedicWorkGraphic"  და ჩაწერები "Deals" რომელსაც მოყვება სტილისტის ID 
        */
//          $url = 'http://178.134.109.218/rest/getStylistTimeLines.php?filiali=kostava&startDate=12/20/2018&endDate=12/20/2018'; 
    
//         $url = 'http://178.134.109.218/rest/getProducts.php?category=9'; 
//        $jsonData = json_decode(file_get_contents( $url));
        
//        dd( $jsonData );
          dd( 'dsadewf' );
        
            return;
        
        // FmgService::getStylist();

        dd("**********");
       $subcat = Service::first();  dd($subcat->service_type);
          $service = $subcat->ServiceType;
//          $service = optional($subcat)->getThumbnail;
        dd( optional($service)->url ?? '');
//        dd( $service->url);
        dd('die');
        $roleCount = \App\Role::count();
		if($roleCount != 0) {
			if($roleCount != 0) {
				return view('home');
			}
		} else {
			return view('errors.error', [
				'title' => 'Migration not completed',
				'message' => 'Please run command <code>php artisan db:seed</code> to generate required table data.',
			]);
		}
    }
}