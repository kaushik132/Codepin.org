<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Contact;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\Title;
use App\Models\Service;
use App\Models\ServiceCategory;

class HomeController extends Controller
{
    public function index() 
    {
        $servicelist = Service::latest()->limit(6)->get();
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_home;
        $seo_data['seo_description'] = $homepage->seo_des_home;
        $seo_data['keywords'] = $homepage->seo_key_home;
        return view('home',compact('seo_data','servicelist'));
    }

    public function about()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_about;
        $seo_data['seo_description'] = $homepage->seo_des_about;
        $seo_data['keywords'] = $homepage->seo_key_about;
        return view('about',compact('seo_data'));
    }

    public function services($slug=null)
    {
        $homepage = Title::select('seo_title_services','seo_des_services','seo_key_services')->first();
        if($slug!=null){
            $servicesCategory = ServiceCategory::where('slug',$slug)->first();
            $servicesList = Service::latest()->with('serviceCategory')->where('category_id',$servicesCategory->id)->paginate(6);
            $seo_data['seo_title'] =$servicesCategory->seo_title;
            $seo_data['seo_description'] =$servicesCategory->seo_description;
           $seo_data['keywords'] =$servicesCategory->seo_keyword;

         

        }else{
            $servicesList = Service::latest()->with('serviceCategory')->paginate(6);
            $seo_data['seo_title'] =$homepage->seo_title_services;
            $seo_data['seo_description'] =$homepage->seo_des_services;
            $seo_data['keywords'] =$homepage->seo_key_services;
         
         }
        return view('services',compact('seo_data','servicesList'));
    }

    public function servicesDetails($slug=null)
    {
        $servicelist = Service::latest()->limit(6)->get();
        $servicesData = Service::with('serviceCategory')->where('slug',$slug)->first();
        $seo_data['seo_title'] =$servicesData->seo_title;
        $seo_data['seo_description'] =$servicesData->seo_description;
       $seo_data['keywords'] =$servicesData->seo_keyword;
        return view('service-details',compact('seo_data','servicesData','servicelist'));
    }

    public function blogs($slug=null)
    {
        $homepage = Title::select('seo_title_blog','seo_des_blog','seo_key_blog')->first();
        $title = 'All blog Page';
        if($slug!=null){
            $blogCategory = BlogCategory::where('slug',$slug)->first();
            $blogList = Blog::latest()->with('blogCategory')->where('category_id',$blogCategory->id)->paginate(4);
            $seo_data['seo_title'] =$blogCategory->seo_title;
            $seo_data['seo_description'] =$blogCategory->seo_description;
           $seo_data['keywords'] =$blogCategory->seo_keyword;

         

        }else{
            $blogList = Blog::latest()->with('blogCategory')->paginate(4);
            $seo_data['seo_title'] =$homepage->seo_title_blog;
            $seo_data['seo_description'] =$homepage->seo_des_blog;
            $seo_data['keywords'] =$homepage->seo_key_blog;
         
         }
        return view('blogs',compact('title','blogList','seo_data'));
    }

    public function blogDetails($slug=null)
    {
        $title = 'Blog details';
        
        // $blogCategory = BlogCategory::withcount('blogs')->get(); // Filter by blog Category
        $blog = Blog::latest()->limit(3)->get();
        $blogData = Blog::with('blogCategory')->where('slug',$slug)->first();
        $seo_data['seo_title'] =$blogData->seo_title;
        $seo_data['seo_description'] =$blogData->seo_description;
       $seo_data['keywords'] =$blogData->seo_keyword;
       
           
        return view('blog-details',compact('title','blogData','blog','seo_data'));
    }


    public function casestudies()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_case;
        $seo_data['seo_description'] = $homepage->seo_des_case;
        $seo_data['keywords'] = $homepage->seo_key_case;

        return view('casestudies',compact('seo_data'));
    }


    public function contact()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_contact;
        $seo_data['seo_description'] = $homepage->seo_des_contact;
        $seo_data['keywords'] = $homepage->seo_key_contact;
        return view('contact',compact('seo_data'));
    }

    public function contactPost(Request $request)    
    {
        $this->validate(request(), [
            'name' => "required",
            'email' => "required",
            'phone' => "required",
            'company' => "required",
            'company_website'  => "required",
            'subject' => "required",
            'budget' => "required",
            'message' => "required",
         
          ], [], 
        [
          'name' => 'Full Name',
          'email' => 'Email',
          'phone' => 'Number',
          'company' => 'Company',
          'company_website'  => "Company Website",
            'subject' => "Subject",
            'budget' => "Budget",
            'message' => "Message",
          
         
        ]);

        
  $contact_obj = new Contact;
  $contact_obj->name   =$request->name;
  $contact_obj->email  =$request->email;
  $contact_obj->phone=$request->phone;
  $contact_obj->company=$request->company;
  $contact_obj->company_website=$request->company_website;
  $contact_obj->subject=$request->subject;
  $contact_obj->budget=$request->budget;
  $contact_obj->message=$request->message;
  $contact_obj->save();
 
  return back()->with('message', 'Form Submitted Successfully!');
    }



public function search(Request $request){

    $homepage = Title::first();
    $seo_data['seo_title'] = $homepage->seo_title_search;
    $seo_data['seo_description'] = $homepage->seo_des_search;
    $seo_data['keywords'] = $homepage->seo_key_search;

    $search = $request->search;
    $blogList = Blog::where(function ($query) use ($search) {

        $query->where('title','like',"%$search%");
       
        
    })
    ->paginate(4);

    return view('blogs',compact('blogList','search','seo_data'));
}



}
