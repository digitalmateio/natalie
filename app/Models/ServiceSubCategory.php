<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App;

class ServiceSubCategory extends Model
{
    use SoftDeletes;
	
	protected $table = 'servicesubcategories';
	
	protected $hidden = [
        
    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];
    
       
    public function TextTrans( $text = null, $lang = null ){

        if($lang != null){
            $locale = $lang;
        }else{
            $locale = App::getLocale();
        }
        
        $column = $text.'_'.$locale;

        return $this->{$column};
    }
    
    public function category()
    {
       return $this->HasOne('App\Models\ServiceCategory','id','parent_category_id');
    }
    
    public function service()
    {  
        return $this->HasMany('App\Service','parent_id','id');
    }
}
