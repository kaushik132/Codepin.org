@extends('dashboard.layout.main')
@section('main-containers')


<div class="banner-sec home-banner">
    <img src="{{url('new/images/final-banner.jpg')}}" alt="" class="banner-img">
    <div class="banner-text">
       <div class="container">
          <div class="row">
             <div class="col-md-10">
                <div class="typing"><div class="change-to">Are you ready to interact our </div> <div class="text"></div></div>
                <h2>Remarkable?</h2>
                <h3>So are we.</h3>
                <a class="btn-outline line-animation" href="contact.html">Contact Us</a>
             </div>
          </div>
       </div>
    </div>
    <div class="img-area">
       <img src="{{url('new/images/cp-banner.png')}}" alt="" class="main-img">
    </div>
    <img src="{{url('new/images/arrow-shape.png')}}" alt="" class="arrow-shape">
    <img src="{{url('new/images/triangle-shape.png')}}" alt="" class="triangle-shape">
 </div>

 <section class="cp-about-sec about-aection dark-light line-pattern">
    <div class="container">
       <div class="row ">
          <div class="col-12 text-center title">
             <h2 class="lg-title">What <span>We Do</span></h2>
             <h5>Boost Your Brand with Innovative Digital Marketing Services</h5>
          </div>
          <div class="col-sm-6 mb-lg-0 mb-md-4">
             <img src="{{url('new/images/final-what-we-do.jpg')}}" alt="images" class="thumb_img ">
          </div>
          <div class="col-sm-6 my-auto">
             <p>At our core, we are driven by a passion for online marketing excellence. Specialising in digitalmarketing services and solutions, we deploy powerful SEO strategies, execute impactful SEMinitiatives. Furthermore, our  expertise extends to the creation and expert management of robustsocial media and email marketing campaigns. If you aspire to thrive in the digital environment,explore the possibilities with our comprehensive suite of services that include digital marketingsolutions and cutting-edge SEO digital marketing.</p>
             <a class="btn-outline line-animation" href="about.html">Discover More</a>
          </div>
       </div>
    </div>
 </section>
 <section class="service-aection">
    <div class="container ">
       <div class="col-12 text-center title">
          <h2 class="lg-title">Our Services</h2>
          <p>
             Maximize your digital exposure with our comprehensive package of products.
          </p>
       </div>
       <div class="service_list">
          <ul>
      
       @foreach ($servicelist as $item)
           
       <li>
          <div class="cp-box">
             <figure>
                <img src="{{asset('uploads/'.$item->home_image)}}" alt="">
             </figure>
             <h3><a href="{{route('servicesDetails',$item->slug)}}">{{$item->serviceCategory->name}}</a></h3>
             <!-- <h4>Empower your business to soar beyond expectations.</h4> -->
             <a href="{{route('contact')}}" class="link-ui">
                <img src="{{url('new/images/link-arrow.png')}}" alt="">
             </a>
          </div>
       </li>
       @endforeach
      


          </ul>
       </div>
    </div>
 </section>
 
 <section class="tech-logo line-pattern">
    <div class="container">
       <div class="row ">
          <div class="col-lg-12">
             <div class="inner_title text-center title_btm">
                <h1>Technologies We Use</h1>
             </div>
          </div>
       </div>
       <div class="row justify-content-center">
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/figma.svg')}}" alt="">
             </div>
          </div>
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/ps.svg')}}" alt="">
             </div>
          </div>
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/sass.svg')}}" alt="">
             </div>
          </div>
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/react.svg')}}" alt="">
             </div>
          </div>
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/js.svg')}}" alt="">
             </div>
          </div>
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/laravel.svg')}}" alt="">
             </div>
          </div>
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
             <div class="tech-cp">
                <img src="{{url('new/images/node.svg')}}" alt="">
             </div>
          </div>
          <div class="col-2 col-lg-1 col-md-2 col-sm-3">
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
 <section class="about-sec choose-sec">
    <div class="container reason-sec text-center">
      <div class="row">
        <div class="col-lg-10 mx-auto title">
          <h2 class="lg-title">Why Choose <span class="primary-text">CodePin</span> for Your Digital Transformation?</h2>
          <p>At CodePin, we understand the challenges of navigating the ever-evolving digital landscape. That's why we offer a comprehensive suite of services designed to empower your business and achieve your online goals. Here's what sets us apart:</p>
        </div>
      </div>
    </div>
    <div class="container cp-about">
       <div class="col-12 dark-light">
          <div class="row align-items-center">
             <div class="col-md-4 pr-md-4 mb-md-0 mb-4">
                <img src="{{url('new/images/why-img1.jpg')}}" alt="images" class="thumb_img ">
             </div>
             <div class="col-md-8">
                <h3><strong>Full-Service Digital Agency</strong></h3>
                <p>Tired of juggling multiple vendors for your digital needs? CodePin provides a one-stop shop for all your requirements, including <strong>digital marketing, UI/UX design, e-commerce solutions, website development, app development, and custom software development</strong>. This saves you time, simplifies project management, and ensures seamless integration across different aspects of your digital strategy.</p>
             </div>
          </div>
       </div>
       <div class="col-12 dark-light">
          <div class="row align-items-center">
             <div class="col-md-4 pr-md-4 mb-md-0 mb-4">
                <img src="{{url('new/images/why-img2.jpg')}}" alt="images" class="thumb_img ">
             </div>
             <div class="col-md-8">
                <h3><strong>User-Centric Design & Development</strong></h3>
                <p>We understand that user experience (UX) is paramount to success. Our skilled designers and developers focus on creating <strong>intuitive, user-friendly websites, apps, and marketing campaigns</strong> that resonate with your target audience, driving engagement and conversions.</p>
             </div>
          </div>
       </div>
       <div class="col-12 dark-light">
          <div class="row align-items-center">
             <div class="col-md-4 pr-md-4 mb-md-0 mb-4">
                <img src="{{url('new/images/why-img3.jpg')}}" alt="images" class="thumb_img ">
             </div>
             <div class="col-md-8">
                <h3><strong>Expertise at Your Fingertips</strong></h3>
                <p>Our team of <strong>experienced and passionate professionals</strong> brings together a wealth of knowledge and expertise in various digital disciplines. We don't just create solutions, we <strong>deliver results</strong> that contribute to your overall business growth.</p>
       
                <p>This saves you time, simplifies project management, and ensures seamless integration across different aspects of your digital strategy.</p>
             </div>
          </div>
       </div>
    </div>
 </section>
 
 <section class="project-count bg-img" style="background-image: url('.new/images/count-bg.jpg');">
    <div class="container">
      <div class="row row-flex">
        <div class="col-12">
          <div class="title">
            <h2 class="lg-title"><span>Take the right step,</span> do the big things.</h2>
          </div>
          <div class="counter-sec">
            <div class="counters">
              <span class="counter">100</span>
              <h4>Project Completed</h4>
            </div>
            <div class="counters">
              <span class="counter">50</span>
              <h4>Active clients</h4>
            </div>
            <div class="counters">
              <span class="counter">120</span>
              <h4>Satisfied Clients</h4>
            </div>
          </div>
        </div>
      </div>
    </div>
    <img src="{{url('new/images/angle-shape.png')}}" alt=""  class="b-shape1">
 </section>
 <section class="cp-about mission-sec">
    <div class="container">
       <div class="row">
          <div class="col-md-6 text-center">
             <div class="shake-hand">
                <img src="{{url('new/images/shake-hand.png')}}" alt="">
             </div>
          </div>
          <div class="col-md-6 my-auto">
             <div class="title">
                <h2 class="lg-title">Codepin Technology: Your All-in-One Digital Growth Partner</h2>
             </div>
          </div>
          <div class="col-md-6 pr-md-5">
             <p>Codepin Technology has transformed from a web design and graphic design startup into a comprehensive digital marketing and development agency. Our diverse team of specialists leverages cutting-edge solutions to propel your brand's online presence.</p>
             <p>We don't just create websites and graphics; we craft digital experiences that resonate. By combining data-driven insights with exceptional design, we forge emotional connections and drive meaningful conversations that convert.</p>
          </div>
          <div class="col-md-6 global-list">
             <h3>Your Success is Our Mission</h3>
             <p>At Codepin Technology, customer satisfaction is paramount. We achieve this through:</p>
             <ul>
                <li><strong>Innovation</strong> We embrace cutting-edge technologies and strategies to stay ahead of the curve.</li>
                <li><strong>Cost-Effective Solutions</strong> We deliver exceptional value, ensuring your digital marketing budget goes further.</li>
                <li><strong>Unwavering Reliability</strong>  We meet deadlines, even under tight constraints, so you can focus on running your business.</li>
             </ul>
          </div>
       </div>
    </div>
 </section>
 
 
 <section class="cp-about pt-0">

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
 
 <section class="service-aection">
    <div class="container">
       <h2 class="lg-title">Brands</h2>
       <p>
          Trusted By Brands Who Hire Remote Teams
       </p>
       <div class="logos">
          <img src="{{url('new/images/costa-img.svg')}}" alt="logo">
          <img src="{{url('new/images/bbc.svg')}}" alt="logo">
          <img src="{{url('new/images/itv.svg')}}" alt="logo">
          <img src="{{url('new/images/deezer.svg')}}" alt="logo">
          <img src="{{url('new/images/bmw.svg')}}" alt="logo">
          <img src="{{url('new/images/jbcapital.svg')}}" alt="logo">
          <img src="{{url('new/images/mediatree.svg')}}" alt="logo">
          <img src="{{url('new/images/carrefour.svg')}}" alt="logo">
       </div>
    </div>
 </section>


@endsection