<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App;

class AcademyTeacher extends Model
{
    use SoftDeletes;
	
	protected $table = 'academyteachers';
	
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
    
    public function getImage()
    {
        return $this->belongsTo('App\Models\Upload','image','id'); 
    }
}
