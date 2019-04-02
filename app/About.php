<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Upload;
use App;

class About extends Model
{
    use SoftDeletes;
	
	protected $table = 'abouts';
	
	protected $hidden = [
        
    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];
    
    public function getImageAttribute($value)
    {
        $eloquents = Upload::find($value);
        return optional($eloquents)->url;
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
