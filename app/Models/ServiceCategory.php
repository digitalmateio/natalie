<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App;
    
class ServiceCategory extends Model
{
    use SoftDeletes;
	
	protected $table = 'servicecategories';
	
	protected $hidden = [
        
    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];
    

    public function getThumbnailsImageIdAttribute($value)
    {  
        $eloquents = Upload::find($value);
        return optional($eloquents)->url;
    }
    
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
    
    public function subCategories()
    { 
        return $this->HasMany('App\Models\ServiceSubCategory','parent_category_id','id');
    }
    
    public function getImage()
    {
        return $this->belongsTo('App\Models\Upload','image','id'); 
    }
    
    public function getThumbnail()
    {
        return $this->belongsTo('App\Models\Upload','thumbnails_image_id','id'); 
    }
}
