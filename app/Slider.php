<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\models\Upload;
use App;

class Slider extends Model
{
    use SoftDeletes;
	
	protected $table = 'sliders';
	
	protected $hidden = [
        
    ];
    public $imagesUrls = [];

	protected $guarded = [];

	protected $dates = ['deleted_at'];
   
    public function getImageAttribute($value)
    {
        $eloquents = Upload::find($value);
        return optional($eloquents)->url;
//        $eloquents = Upload::whereIn('id',explode(',',str_replace(array('[',']','"'), '',$value)))->get();
//        try {
//          
//            foreach($eloquents as $eloquent)
//            {
//               array_push($this->imagesUrls,$eloquent->url);
//            }
//            
//            return $this->imagesUrls;
//            
//        } catch (Exception $e) {
//            
//            Log::debug($e->getMessage());
//            return $this->imagesUrls;
//        }
    }
 
    public function TextTrans( $text = null, $lang = null ){

        if($lang != null){
            $locale = $lang;
        }else{
            $locale = App::getLocale();
        }
        
        $column = $text.'_'.$locale;

        return $this->{$column};
    }
    
    public function getImage()
    {
        return $this->belongsTo('App\Models\Upload','image','id'); 
    }
}
