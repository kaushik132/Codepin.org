@extends('dashboard.layout.main')
@section('main-containers')
@php
     use Carbon\Carbon;
@endphp



<div class="banner-sec inner-banner">
    <img src="{{url('new/images/inner-banner.jpg')}}" alt="" class="banner-img">
    <div class="banner-text">
       <div class="container">
          <div class="row align-items-center">
             <div class="col-md-8">
                <h2>Blogs</h2>
             </div>
             <div class="col-md-4 text-md-end">
                <img src="{{url('new/images/blog-img.png')}}" alt="" class="main-img">
             </div>
          </div>
       </div>
    </div>
    <img src="{{url('new/images/arrow-shape.png')}}" alt="" class="arrow-shape">
    <img src="{{url('new/images/triangle-shape.png')}}" alt="" class="triangle-shape">
 </div>

 <section class="main-blog">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="row row-flex justify-content-center">
            @foreach ($blogList as $item)
                
            <div class="col-md-6 col-sm-4" data-aos="fade-down" data-aos-delay="200">
              <div class="blog-box">
                <figure>
                  <img src="{{asset('uploads/'.$item->image)}}" alt="">
                </figure>
                <h5><a href="javascript: ;" >{{$item->title}}</a></h5>
                <p>{{$item->short_content}}</p>
                <h6></a>@php
                  
$date = Carbon::parse($item->created_at)->format('d M, Y');
                    echo $date; 
                @endphp</h6>
                <a href="{{route('blogDetails',$item->slug)}}" class="line-animation">Read More <i class="ri-arrow-right-line"></i></a>
              </div>
            </div>
            @endforeach
       
         
         
          </div>
          <div class="d-flex justify-content-center mt-3">
          {{$blogList->onEachSide(1)->links()}}
          </div>
        </div>
        <div class="col-lg-4 blog-sidebar">
          <div class="widget-text search" data-aos="fade-down" data-aos-delay="200">
            <h4>Search Blogs</h4>

            <form method="get" action="/search">
              <input type="search" name="search" placeholder="Search…" value="{{isset($search) ? $search : ''}}">
              <button type="submit" class="search-submit">Search</button>
            </form>

          </div>
          <div class="widget-text most-recent" data-aos="fade-down" data-aos-delay="400">
            <h4>Most Viewed Post</h4>
            <ul>
              <li>
                <h5>
                  <a href="javascript: ;">Nothing makes writing more powerful than brevity, clarity and candour</a>
                </h5>
                <h6>27 feb 2024</h6>
              </li>
              <li>
                <h5>
                  <a href="javascript: ;">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</a>
                </h5>
                <h6>27 feb 2024</h6>
              </li>
              <li>
                <h5>
                  <a href="javascript: ;">We break silos because it takes more than any one check or policy or letter to tackle big issues like economic security.</a>
                </h5>
                <h6>27 feb 2024</h6>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>






@endsection