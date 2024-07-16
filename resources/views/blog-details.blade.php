@extends('dashboard.layout.main')
@section('main-containers')

@php
    use Carbon\Carbon;

// Assuming $item->created_at is a Carbon instance or a string in a format that Carbon can parse
$date = Carbon::parse($blogData->created_at)->format('d M, Y');
@endphp
<div class="banner-sec inner-banner">
    <img src="{{url('new/images/inner-banner.jpg')}}" alt="" class="banner-img">
    <div class="banner-text">
       <div class="container">
          <div class="row align-items-center">
             <div class="col-md-8">
                <h2>Tech Story</h2>
             </div>
             <div class="col-md-4 text-md-end">
                <img src="{{url('new/images/blog-img3.png')}}" alt="" class="main-img">
             </div>
          </div>
       </div>
    </div>
    <img src="{{url('new/images/arrow-shape.png')}}" alt="" class="arrow-shape">
    <img src="{{url('new/images/triangle-shape.png')}}" alt="" class="triangle-shape">
 </div>

 <section class="single-post-area">
    <div class="container">
       <div class="row">
          <div class="col-lg-8 ">

             <div class="main-single-img">
                <img src="{{ asset('uploads/' . $blogData->image) }}" alt="">
             </div>
             <h1>{{ $blogData->title }}</h1>
             <div class="auther">
                <a href="javascript:void(0)">John Deo</a> - <h4>@php
                   echo $date;
                @endphp</h4> - <h4><a href="javascript: ;">{{$blogData->blogCategory->name}}</a></h4>
             </div>
             <p>{!!$blogData->description!!}</p>
             
             <div class="coment-area">
                <h3>Leave a Comment</h3>
                <form>
                   <div class="form-group">
                      <textarea rows="3" placeholder="Type your message here"></textarea>
                   </div>
                   <div class="row">
                      <div class="form-group col-md-4">
                         <input type="text" placeholder="Name">
                      </div>
                      <div class="form-group col-md-4">
                         <input type="email" placeholder="Email">
                      </div>
                      <div class="form-group col-md-4">
                         <input type="text" placeholder="Website">
                      </div>
                   </div>
                   <div class="form-group">
                      <!-- <p class="comment-check">
                         <input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" type="checkbox" value="yes"> 
                         <label for="wp-comment-cookies-consent">Save my name, email, and website in this browser for the next time I comment.</label> 
                      </p> -->
                      <div class="custome_checkbox">
                         <input type="checkbox" id="check2" rows="1">  
                         <label for="check2">Save my name, email, and website in this browser for the next time I comment.</label>
                      </div>
                   </div>
                   <input type="submit" name="" value="Post Comment">
                </form>
             </div> 
    
             <!-- <div class="pagination col-12">
                <ul class="page-nav">
                <li class=" active"><span aria-current="page" class="page-numbers current">1</span></li>
                <li class=""><a class="page-numbers" href="javascript:void(0)">2</a></li>
                <li class=""><a class="page-numbers" href="javascript:void(0)">3</a></li>
                <li class=""><a class="page-numbers" href="javascript:void(0)">4</a></li>
                <li class=""><a class="page-numbers previous-nxt" href="javascript:void(0)"><i class="fa fa-chevron-right"></i></a></li>
    
                </ul>
             </div> -->
          </div>
          <div class="col-lg-4 blog-sidebar">
          <div class="widget-text search" data-aos="fade-down" data-aos-delay="200">
             <h4>Search Blogs</h4>
             <form>
                <input type="search" placeholder="Search…" value="">
                <button type="submit" class="search-submit">Search</button>
             </form>
          </div>
          <div class="widget-text most-recent" data-aos="fade-down" data-aos-delay="400">
             <h4>Most Viewed Post</h4>
             <ul>
               @foreach ($blog as $item)
                   
               <li>
               <h5>
                  <a href="{{route('blogDetails',$item->slug)}}">{{ $item->title }}</a>
               </h5>
               <h6>@php
                   $date = Carbon::parse($blogData->created_at)->format('d M, Y');
                   echo $date;
               @endphp</h6>
               </li>
               @endforeach
             `
           
             </ul>
          </div>
          </div>
       </div>
    </div>
  </section>













@endsection