<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Service;

class SitemapController extends Controller
{
    public function index(){
$blogs = Blog::all();
$services = Service::all();

        return response()->view('sitemap',['blogs'=> $blogs,'services'=>$services ])->header('Content-Type','text/xml');
    }
}
