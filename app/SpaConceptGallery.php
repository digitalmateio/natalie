<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\models\Upload;

class SpaConceptGallery extends Model
{
    use SoftDeletes;
	
	protected $table = 'spaconceptgalleries';
	
	protected $hidden = [
        
    ];

    public $imagesUrls = [];
    
	protected $guarded = [];

	protected $dates = ['deleted_at'];
    
    public function getGalleryAttribute($value)
    {
        $eloquents = Upload::whereIn('id',explode(',',str_replace(array('[',']','"'), '',$value)))->get();
        
        try {
          
            foreach($eloquents as $eloquent)
            {
               array_push($this->imagesUrls,$eloquent->url);
            }
            
            return $this->imagesUrls;
            
        } catch (Exception $e) {
            
            Log::debug($e->getMessage());
            return $this->imagesUrls;
        }
    }
}
