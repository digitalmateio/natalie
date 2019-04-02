<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Stylist;
use SoapClient;

class FmgService extends Model
{
	public static function getStylist()
	{
       
	
    try {
                $url = 'https://178.134.109.218/stream/GetStylists.php?wsdl';
                
                $params = array(
                  "filiali" => 'drybar',
                );

                $options = array(
                    'cache_wsdl' => 0,
                    'trace' => 1,
                    'stream_context' => stream_context_create(array(
                          'ssl' => array(
                               'verify_peer' => false,
                                'verify_peer_name' => false,
                                'allow_self_signed' => true
                          )
                    )));

                $client = new SoapClient($url, $options);
                $response =  $client->GetStylists($params);
                $stilysts = json_decode($response->Result);

                foreach ($stilysts as $key => $value) {

                    if (strpos($value->ორშაბათი, '-') !== false) {
                               $value->ორშაბათი = null;
                    }else{
                       $value->ორშაბათი = json_encode( explode(',',$value->ორშაბათი) );
                    } 
                    if (strpos($value->სამშაბათი, '-') !== false) {
                               $value->სამშაბათი = null;
                    }else{
                       $value->სამშაბათი = json_encode( explode(',',$value->სამშაბათი) );
                    } 
                    if (strpos($value->ოთხშაბათი, '-') !== false) {
                               $value->ოთხშაბათი = null;
                    }else{
                        $value->ოთხშაბათი = json_encode( explode(',',$value->ოთხშაბათი) );
                    } 
                    if (strpos($value->ხუთშაბათი, '-') !== false) {
                               $value->ხუთშაბათი = null;
                    }else{
                        $value->ხუთშაბათი = json_encode( explode(',',$value->ხუთშაბათი) );
                    } 
                    if (strpos($value->პარასკევი, '-') !== false) {
                               $value->პარასკევი = null;
                    }else{
                        $value->პარასკევი = json_encode( explode(',',$value->პარასკევი) );
                    } 
                    if (strpos($value->შაბათი, '-') !== false) {
                               $value->შაბათი = null;
                    }else{
                        $value->შაბათი = json_encode( explode(',',$value->შაბათი) );
                    } 
                    if (strpos($value->კვირა, '-') !== false) {
                               $value->კვირა = null;
                    }else{
                        $value->კვირა = json_encode( explode(',',$value->კვირა) );
                    } 
                    // dump(json_encode( explode(',',$value->ორშაბათი) )  );
                    // dump([
                    //     'name'        => $value->name,
                    //     'ListID'      => $value->ListID,
                    //     'showability' => $value->showability,
                    //     'monday'      => $value->ორშაბათი,
                    //     'tuesday'     => $value->სამშაბათი,
                    //     'wednesday'   => $value->ოთხშაბათი,
                    //     'thursday'    => $value->ხუთშაბათი,
                    //     'friday'      => $value->პარასკევი,
                    //     'saturday'    => $value->შაბათი,
                    //     'sunday'      => $value->კვირა,
                    // ]);
                    Stylist::create([
                        'name'        => $value->name,
                        'ListID'      => $value->ListID,
                        'showability' => $value->showability,
                        'monday'      => $value->ორშაბათი,
                        'tuesday'     => $value->სამშაბათი,
                        'wednesday'   => $value->ოთხშაბათი,
                        'thursday'    => $value->ხუთშაბათი,
                        'friday'      => $value->პარასკევი,
                        'saturday'    => $value->შაბათი,
                        'sunday'      => $value->კვირა,
                    ]);
                   
                }
     
 
        }catch(Exception $e) {
            echo $e->getMessage();
        }

    }


}
