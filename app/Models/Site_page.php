<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App;

class Site_page extends Model
{
    use SoftDeletes;
	
	protected $table = 'site_pages';
	
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
        return $this->HasOne('App\Models\Site_category','id','site_category_id');
    }
}
