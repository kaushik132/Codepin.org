@extends('dashboard.layout.main')
@section('main-containers')


<div class="banner-sec inner-banner">
    <img src="{{url('new/images/inner-banner.jpg')}}" alt="" class="banner-img">
    <div class="banner-text">
       <div class="container">
          <div class="row align-items-center">
             <div class="col-md-8">
                <h2>Our Services</h2>
             </div>
             <div class="col-md-4 text-md-end">
                <img src="{{url('new/images/services-inner.png')}}" alt="" class="main-img">
             </div>
          </div>
       </div>
    </div>
    <img src="{{url('new/images/arrow-shape.png')}}" alt="" class="arrow-shape">
    <img src="{{url('new/images/triangle-shape.png')}}" alt="" class="triangle-shape">
 </div>
 <section class="cp-about solution">
    <div class="container">
       <div class="row">
          <div class="col-md-6">
             <div class="row">
                <div class="col-7">
                   <figure>
                      <img src="{{url('new/images/srv-dtls-img1.jpg')}}" alt="" class="radius20">
                   </figure>
                </div>
                <div class="col-5">
                <figure class="mb-md-4">
                   <img src="{{url('new/images/srv-dtls-img2.jpg')}}" alt="" class="radius20">
                </figure>
                
                <figure>
                   <img src="{{url('new/images/srv-dtls-img3.jpg')}}" alt="" class="radius20">
                </figure>
                
                </div>
             </div>
          </div>
          <div class="col-md-6 my-auto">
             <h2 class="lg-title">So, Why work with us?</h2>
             <!-- <h3>Data-Driven Strategies &amp; Expert Development for Maximum Impact</h3> -->
             <p><strong>CodePin</strong> is more than just a digital agency; we're your strategic growth partner. We're a passionate team of developers, marketers, and creative minds who work tirelessly to propel businesses like yours to unprecedented heights in the digital arena.</p>
             <p>We don't just take orders; we become <strong>active partners</strong> in your success story. We listen to your goals, understand your brand, and tailor our solutions to your unique needs.</p>
             <div class="arrow mt-5">
                <img src="{{url('new/images/right-arrow.png')}}" alt="">
             </div>
          </div>
       </div>
       <div class="row mt-5">
          <div class="col-md-4">
             <div class="inner-box">
                <h3><span>1.</span> Modern<br> Solution</h3>
                <p>Modern challenges require modern digital solutions that blend creativity and strategy at the core.</p>
             </div>
          </div>
          <div class="col-md-4">
             <div class="inner-box">
                <h3><span>2.</span> Competitive<br> Pricing</h3>
                <p>No hidden charges, no gimmicky offers. We know how to work around different budgets.</p>
             </div>
          </div>
          <div class="col-md-4">
             <div class="inner-box">
                <h3><span>3.</span> Team that<br> cares</h3>
                <p>We're not a fan of the discover-deliver-forget model. We care about our clients’ long-term success.</p>
             </div>
          </div>
       </div>
    </div>
 </section>
 
 <section class="service-aection line-pattern">
    <div class="container ">
       <div class="col-12 text-center title">
          <h2 class="lg-title">Our Services</h2>
          <p>
             Maximize your digital exposure with our comprehensive package of products.
          </p>
       </div>
       <div class="service_list">
          <ul>

            @foreach ($servicesList as $item)
                
            <li>
               <div class="cp-box">
                  <figure>
                     <img src="{{asset('uploads/'.$item->home_image)}}" alt="">
                  </figure>
                  <h3><a href="{{route('servicesDetails',$item->slug)}}">{{$item->serviceCategory->name}}</a></h3>
                  <!-- <h4>We have all marketing solutions</h4> -->
                  <a href="{{route('servicesDetails',$item->slug)}}" class="link-ui">
                     <img src="{{url('new/images/link-arrow.png')}}" alt="">
                  </a>
               </div>
            </li>
            @endforeach
       
    
          
  
          </ul>
       </div>
    </div>
 </section>

 <section class="tech-logo">
    <div class="container">
       <div class="row ">
          <div class="col-lg-12">
             <div class="inner_title text-center title_btm">
                <h1>Technologies We Use</h1>
             </div>
          </div>
       </div>
       <div class="row justify-content-center">
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/figma.svg')}}" alt="">
             </div>
          </div>
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/ps.svg')}}" alt="">
             </div>
          </div>
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/sass.svg')}}" alt="">
             </div>
          </div>
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/react.svg')}}" alt="">
             </div>
          </div>
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/js.svg')}}" alt="">
             </div>
          </div>
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/laravel.svg')}}" alt="">
             </div>
          </div>
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/node.svg')}}" alt="">
             </div>
          </div>
          <div class="col-3 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/wordpress.svg')}}" alt="">
             </div>
          </div>
       </div>
    </div>
 </section>
 <section class="work-process wh-bg">
    <div class="container">
       <div class="row ">
          <div class="col-lg-12">
             <div class="inner_title text-center title_btm">
                <h1>Our process to work for you and it goes a little something like this:</h1>
             </div>
             <div class="work-process-img">
                <img src="{{url('new/images/work-process.svg')}}" alt="">
             </div>
          </div>
       </div>
    </div>
 </section>
 
 <section class="amigos_inner social-media-mr">
    <div class="container">
       <!-- <div class="side_img"> <img src="images/social-media.jpg" alt="images" class="img-fluid "></div> -->
       <div class="row">
          <div class="col-md-5">
             <img src="{{url('new/images/social-media.jpg')}}" alt="images" class="img-fluid ">
          </div>
          <div class="col-md-7" >
             <div class="inner_title text-left">
                <h1>Brands</h1>
             </div>
             <p class="short_info" > From ambitious startups to industry
                leaders, we create brand experiences
                for clients all around the world.
             </h5>
             <div class="logos">
                <img src="{{url('new/images/costa-img.svg')}}" alt="logo">
                <img src="{{url('new/images/bbc.svg')}}" alt="logo">
                <img src="{{url('new/images/itv.svg')}}" alt="logo">
                <img src="{{url('new/images/deezer.svg')}}" alt="logo">
                <img src="{{url('new/images/bmw.svg')}}" alt="logo">
                <img src="{{url('new/images/jbcapital.svg')}}" alt="logo">
                <img src="{{url('new/images/mediatree.svg')}}" alt="logo">
                <img src="{{url('new/images/carrefour.svg')}}" alt="logo">
                <img src="{{url('new/images/jlc.svg')}}" alt="logo">
             </div>
          </div>
       </div>
    </div>
 </section>







@endsection