@extends('dashboard.layout.main')
@section('main-containers')
    <div class="banner-sec inner-banner">
        <img src="{{ url('new/images/inner-banner.jpg') }}" alt="" class="banner-img">
        <div class="banner-text">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <h2>{{$servicesData->serviceCategory->name}}</h2>
                    </div>
                    <div class="col-md-4 text-md-end">
                        <img src="{{ url('new/images/inner-banner.jpg') }}" alt="" class="main-img">
                    </div>
                </div>
            </div>
        </div>
        <img src="{{ url('new/images/arrow-shape.png') }}" alt="" class="arrow-shape">
        <img src="{{ url('new/images/triangle-shape.png') }}" alt="" class="triangle-shape">
    </div>

    <section class="section main-services">
        <img src="{{ url('new/images/dotted-square.png') }}" alt="" class="dotsquare">
        <div class="container">
            <div class="row row-flex">
                <div class="col-md-4 col-xs-12 sidebar">
                    <div class="service-box">
                        <ul>
                            @foreach ($servicelist as $item)
                                <li class="active">
                                    <a href="{{route('servicesDetails',$item->slug)}}">
                                        <figure>
                                            <img src="{{asset('uploads/'.$item->home_image)}}" alt="">
                                        </figure>
                                        {{$item->serviceCategory->name}}
                                    </a>
                                </li>
                            @endforeach



                        </ul>
                    </div>
                    <div class="rg-block">
                        <img src="{{ url('new/images/contact-bnr.jpg') }}" alt="" class="radius20">
                        <div class="rg-text">
                            <h3>We Answer Your Queries!</h3>
                            <p>Want To Hire The Best Talent?</p>
                            <a href="{{ route('contact') }}" class="btn-outline line-animation">Enquire now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="cp-about">
                        <h3>{{$servicesData->short_content}}</h3>
                        <p>{!!$servicesData->description!!}</p>
                  

                       
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="tech-logo dark-light">
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
                        <img src="{{ url('new/images/figma.svg') }}" alt="">
                    </div>
                </div>
                <div class="col-3 col-lg-1 col-md-2 col-sm-3">
                    <div class="tech-cp">
                        <img src="{{ url('new/images/ps.svg') }}" alt="">
                    </div>
                </div>
                <div class="col-3 col-lg-1 col-md-2 col-sm-3">
                    <div class="tech-cp">
                        <img src="{{ url('new/images/sass.svg') }}" alt="">
                    </div>
                </div>
                <div class="col-3 col-lg-1 col-md-2 col-sm-3">
                    <div class="tech-cp">
                        <img src="{{ url('new/images/react.svg') }}" alt="">
                    </div>
                </div>
                <div class="col-3 col-lg-1 col-md-2 col-sm-3">
                    <div class="tech-cp">
                        <img src="{{ url('new/images/js.svg') }}" alt="">
                    </div>
                </div>
                <div class="col-3 col-lg-1 col-md-2 col-sm-3">
                    <div class="tech-cp">
                        <img src="{{ url('new/images/laravel.svg') }}" alt="">
                    </div>
                </div>
                <div class="col-3 col-lg-1 col-md-2 col-sm-3">
                    <div class="tech-cp">
                        <img src="{{ url('new/images/node.svg') }}" alt="">
                    </div>
                </div>
                <div class="col-3 col-lg-1 col-md-2 col-sm-3">
                    <div class="tech-cp">
                        <img src="{{ url('new/images/wordpress.svg') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-sec choose-sec">
        <div class="container reason-sec text-center">
            <div class="row">
                <div class="col-lg-10 mx-auto title">
                    <h2 class="lg-title">Why Choose <span class="primary-text">CodePin</span> for Your Digital
                        Transformation?</h2>
                    <p>At CodePin, we understand the challenges of navigating the ever-evolving digital landscape. That's
                        why we offer a comprehensive suite of services designed to empower your business and achieve your
                        online goals. Here's what sets us apart:</p>
                </div>
            </div>
        </div>
        <div class="container cp-about">
            <div class="col-12 dark-light">
                <div class="row align-items-center">
                    <div class="col-md-4 pr-md-4 mb-md-0 mb-4">
                        <img src="{{ url('new/images/why-img1.jpg') }}" alt="images" class="thumb_img ">
                    </div>
                    <div class="col-md-8">
                        <h3><strong>Full-Service Digital Agency</strong></h3>
                        <p>Tired of juggling multiple vendors for your digital needs? CodePin provides a one-stop shop for
                            all your requirements, including <strong>digital marketing, UI/UX design, e-commerce solutions,
                                website development, app development, and custom software development</strong>. This saves
                            you time, simplifies project management, and ensures seamless integration across different
                            aspects of your digital strategy.</p>
                    </div>
                </div>
            </div>
            <div class="col-12 dark-light">
                <div class="row align-items-center">
                    <div class="col-md-4 pr-md-4 mb-md-0 mb-4">
                        <img src="{{ url('new/images/why-img2.jpg') }}" alt="images" class="thumb_img ">
                    </div>
                    <div class="col-md-8">
                        <h3><strong>User-Centric Design & Development</strong></h3>
                        <p>We understand that user experience (UX) is paramount to success. Our skilled designers and
                            developers focus on creating <strong>intuitive, user-friendly websites, apps, and marketing
                                campaigns</strong> that resonate with your target audience, driving engagement and
                            conversions.</p>
                    </div>
                </div>
            </div>
            <div class="col-12 dark-light">
                <div class="row align-items-center">
                    <div class="col-md-4 pr-md-4 mb-md-0 mb-4">
                        <img src="{{ url('new/images/why-img3.jpg') }}" alt="images" class="thumb_img ">
                    </div>
                    <div class="col-md-8">
                        <h3><strong>Expertise at Your Fingertips</strong></h3>
                        <p>Our team of <strong>experienced and passionate professionals</strong> brings together a wealth of
                            knowledge and expertise in various digital disciplines. We don't just create solutions, we
                            <strong>deliver results</strong> that contribute to your overall business growth.</p>

                        <p>This saves you time, simplifies project management, and ensures seamless integration across
                            different aspects of your digital strategy.</p>
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
                        <img src="{{ url('new/images/work-process.svg') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cp-about pt-0">

        <div class="container contact-bd-sec line-pattern text-center">
            <div class="row">
                <div class="col-lg-9 mx-auto">
                    <img src="{{ url('new/images/happy.png') }}" alt="">
                    <h2 class="lg-title">Ready to take your business to the next level?</h2>
                    <h4 class="mb-4">Contact <span class="primary-text">CodePin</span> today for a free consultation!
                    </h4>
                    <a href="{{ route('contact') }}" class="btn-outline line-animation">Contact Us</a>
                </div>
            </div>
        </div>
    </section>
@endsection
