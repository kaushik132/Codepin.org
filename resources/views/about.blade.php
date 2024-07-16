@extends('dashboard.layout.main')
@section('main-containers')

     <!-- Start Banner -->
     <div class="banner-sec inner-banner">
        <img src="{{url('new/images/inner-banner.jpg')}}" alt="" class="banner-img">
        <div class="banner-text">
           <div class="container">
              <div class="row align-items-center">
                 <div class="col-md-8 col-sm-6">
                    <h2>About Us</h2>
                 </div>
                 <div class="col-md-4 col-sm-6 text-md-end">
                    <img src="{{url('new/images/cp-about-img.png')}}" alt="" class="main-img">
                 </div>
              </div>
           </div>
        </div>
        <img src="{{url('new/images/arrow-shape.png')}}" alt="" class="arrow-shape">
        <img src="{{url('new/images/triangle-shape.png')}}" alt="" class="triangle-shape">
     </div>

     <section class="cp-about-sec about-aection">
        <div class="container">
           <div class="row align-items-center">
              <div class="col-sm-5">
                 <div class="cp-about-img">
                    <img src="{{url('new/images/final-we-are.jpg')}}" alt="" class="thumb_img">
                    <!-- <img src="images/services.png" alt="" class="services-shape"> -->
                 </div>
              </div>
              <div class="col-sm-7">
                 <h2 class="lg-title">Who <span>We Are</span></h2>
                 <h5>We specialise in web development, app development and SEO Digital Marketing</h5>
                 <p>As a leading web development services specialising in SEO digital marketing and web app development services, we succeed at generating creative designs and digital tactics. In addition to turning these concepts into workable web apps, Our dedicated team creates winning marketing plans to elevate your product to new heights. Explore our comprehensive web development services, including top-notch SEO digital marketing solutions, to propel your online presence and business success.</p>
              </div>
           </div>
        </div>
        <img src="{{url('new/images/img-2-border.png')}}" alt="" class="img-shape">
     </section>

     <section class="cp-about primary-light line-pattern-wh">
        <div class="container">
           <div class="row">
              <div class="col-md-6 order-md-3">
                 <div class="row">
                       <div class="col-7">
                          <figure>
                             <img src="{{url('new/images/cp-about-img1.jpg')}}" alt="" class="radius20">
                          </figure>
                       </div>
                       <div class="col-5">
                       <figure class="mb-md-4">
                          <img src="{{url('new/images/cp-about-img2.jpg')}}" alt="" class="radius20">
                       </figure>
                       </a>
                       <figure>
                          <img src="{{url('new/images/cp-about-img3.jpg')}}" alt="" class="radius20">
                       </figure>
                       </a>
                       </div>
                 </div>
              </div>
              <div class="col-lg-10 title">
                 <h2 class="lg-title">Grow Your Business Online: Websites, Apps, & Marketing by <span class="primary-text">CodePin</span></h2>
              </div>
              <div class="col-md-6 order-md-2 my-auto">
                 <h3>Data-Driven Strategies & Expert Development for Maximum Impact</h3>
                 <p>CodePin is your one-stop shop for all things digital. Our passionate team of web developers, app developers, and marketing specialists are laser-focused on helping businesses like yours achieve online success. From crafting <strong>high-converting websites</strong> and <strong>user-centric mobile apps</strong> to developing <strong>data-driven marketing campaigns</strong> that reach your target audience, we empower you to navigate the ever-changing digital landscape with confidence.</p>
                 <div class="arrow mt-3 mt-md-5">
                    <img src="{{url('new/images/right-arrow.png')}}" alt="">
                 </div>
              </div>
           </div>
        </div>
     </section>
     
     <section class="cp-about dark-light">
        <div class="container">
           <div class="row">
              <div class="col-12 title">
                 <h2 class="lg-title">Your Trusted Partner in Digital Growth</h2>
              </div>
              <div class="col-md-4">
                 <div class="inner-box">
                    <img src="{{url('new/images/cp-about-img4.jpg')}}" alt="" class="radius20 mb-md-4">
                    <h3><a href="#">Digital Marketing</a></h3>
                    <p>We don't just create campaigns, we drive results. From SEO optimization to social media management, we deliver targeted strategies that attract, engage, and convert your ideal customers.</p>
                 </div>
              </div>
              <div class="col-md-4">
                 <div class="inner-box">
                    <img src="{{url('new/images/cp-about-img5.jpg')}}" alt="" class="radius20 mb-md-4">
                    <h3><a href="#">Web Development</a></h3>
                    <p>We craft beautiful, functional websites that not only look amazing but also deliver an exceptional user experience. From custom development to CMS solutions, we build sites that work for you.</p>
                 </div>
              </div>
              <div class="col-md-4">
                 <div class="inner-box">
                    <img src="{{url('new/images/cp-about-img6.jpg')}}" alt="" class="radius20 mb-md-4">
                    <h3><a href="#">App Development</a></h3>
                    <p>We bring your mobile app ideas to life with innovative functionalities and seamless user interfaces. Whether you need a native app or a hybrid solution, we deliver high-quality results.</p>
                 </div>
              </div>
           </div>
        </div>

        <div class="container contact-bd-sec line-pattern text-center">
           <div class="row">
              <div class="col-lg-9 mx-auto">
                 <img src="{{url('new/images/happy.png')}}" alt="">
                 <h2 class="lg-title">Ready to take your business to the next level?</h2>
                 <h4 class="mb-4">Contact <span class="primary-text">CodePin</span> today for a free consultation!</h4>
                 <a href="{{route('contact')}}" class="btn-outline line-animation">Contact Us</a>
              </div>
           </div>
        </div>
     </section>

     <section class="cp-about solution">
        <div class="container">
           <div class="row mb-md-5">
              <div class="col-md-6 order-md-2">
                 <div class="rds"><img src="{{url('new/images/cp-about-img7.jpg')}}" alt="images" class="img-fluid "></div>
              </div>
              <div class="col-md-6 order-md-1">
                 <h2 class="lg-title">Pixel-Perfect Solutions: Building Your Online Success Story</h2>
              </div>
           </div>
           <div class="row">
              <div class="col-md-4">
                 <div class="inner-box">
                    <h3><span>1.</span> Collaborative Client Partnerships</h3>
                    <p>This emphasizes the collaborative approach and open communication, key aspects for successful digital marketing campaigns.</p>
                 </div>
              </div>
              <div class="col-md-4">
                 <div class="inner-box">
                    <h3><span>2.</span> Data-Driven Marketing Strategies</h3>
                    <p>Highlights the data-driven approach and focus on return on investment (ROI), which are valuable aspects for businesses.</p>
                 </div>
              </div>
              <div class="col-md-4">
                 <div class="inner-box">
                    <h3><span>3.</span> Scalable & Future-Proof Digital Solutions</h3>
                    <p>Emphasizes the scalability of their solutions and future-proofing, important factors for businesses planning long-term growth.</p>
                 </div>
              </div>
           </div>
        </div>
     </section>
     <section class="basic_section team line-pattern" >
        <div class="container">
           <div class="row ">
              <div class="col-lg-12">
                 <div class="inner_title text-center">
                    <h5>OUR TEAM</h5>
                    <h1>We Have Best Member</h1>
                 </div>
              </div>
              <div class="col-lg-12">
                 <div class="team_list mrg_100">
                    <div class="member_box">
                       <img src="{{url('new/images/member3.jpg')}}" class="img-fluid">
                       <h5>Gavin Graham</h5>
                       <h6>Ceo</h6>
                    </div>
                    <div class="member_box">
                       <img src="{{url('new/images/member1.jpg')}}" class="img-fluid">
                       <h5>Theresa Knox</h5>
                       <h6>Designer</h6>
                    </div>
                    <div class="member_box">
                       <img src="{{url('new/images/member2.jpg')}}" class="img-fluid">
                       <h5>Joshua  Hamilton</h5>
                       <h6>App</h6>
                    </div>
                    <div class="member_box">
                       <img src="{{url('new/images/member4.jpg')}}" class="img-fluid">
                       <h5>Amelia  Miller</h5>
                       <h6>Developers</h6>
                    </div>
                 </div>
              </div>
           </div>
        </div>
     </section>



@endsection