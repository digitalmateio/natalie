<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AcademyCourse;
use App\Models\AcademyTeacher;
use App\Models\Page_generator;
use App\Models\AcademyProgramm;
use App\About;



class AcademyController extends Controller
{
    
    public function main()
    {
        $AcademyTeachers = AcademyTeacher::take(5)->get();
        $AcademyCourse = AcademyCourse::take(5)->get();
        $data = Page_generator::where('page_id',25)->get();
        $about = About::where('page_id',25)->first();
        $pages = [];
        
        foreach($data as $item){
            $pages[$item->section_select][] = $item;
        }
        
        return view('academy.main',[
            'courses'  => $AcademyCourse,
            'teachers' => $AcademyTeachers,
            'pages'    => $pages,
            'about'    => $about,
        ]);
    }
    
    public function programms()
    {
        $data = AcademyProgramm::all();
        $pages = Page_generator::where('page_id',6)->get();
        $standart = null;
        $programms = [];

        foreach($data as $program)
        {
            if($program->program_type == 'standart')
            {
                $standart = $program;
                continue;
            }
            
            $programms[$program->program_type][] = $program;
        }
        
        return view('academy.programms',[ 
            'programmsData' => $programms,
            'standart' => $standart,
            'pages' => $pages,
        ]);
    }
        
    public function teachers()
    {
        $AcademyTeachers = AcademyTeacher::all();
        return view('academy.teachers',[
            'teachers' => $AcademyTeachers,
        ]);
    }

    public function courses()
    {
        $AcademyCourse = AcademyCourse::all();
        return view('academy.courses',[
            'courses'  => $AcademyCourse,
        ]);
    }

    public function library()
    {

    }

    public function  haircutebystudents()
    {

    }

    public function  contact()
    {

    }
    
    public function course(int $id = null)
    {
        $course = AcademyCourse::find($id);
        return view('academy.course',['couser' => $course ]);
    }
}
