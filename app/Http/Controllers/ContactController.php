<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Contact;

class ContactController extends Controller
{
    public function contact(Request $request)
    {
        if($request->isMethod('get'))
        {
            return view('contact');
        }
        
        if($request->isMethod('post'))
        { 
               $rules = [
                  'name'  => 'string',
                  'email' => 'email',
                  'text'  => 'string',
                  'phone'  => 'string',
                  'subject'  => 'string',
              ];

          $validator = Validator::make($request->all(),$rules);

                if ($validator->fails())
                {
                     return redirect()->back()->withErrors($validator)->withInput();
                }
           
            Contact::create($request->all());
            return redirect()->back();
//            return redirect('/contact');
        }
        
        
    }
}
