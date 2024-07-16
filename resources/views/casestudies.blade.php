@extends('dashboard.layout.main')
@section('main-containers')


<div class="banner-sec inner-banner">
    <img src="{{url('new/images/inner-banner.jpg')}}" alt="" class="banner-img">
    <div class="banner-text">
       <div class="container">
          <div class="row align-items-center">
             <div class="col-md-8">
                <h2>Case Studies</h2>
             </div>
             <div class="col-md-4 text-md-end">
                <img src="{{url('new/images/case-inner.png')}}" alt="" class="main-img">
             </div>
          </div>
       </div>
    </div>
    <img src="{{url('new/images/arrow-shape.png')}}" alt="" class="arrow-shape">
    <img src="{{url('new/images/triangle-shape.png')}}" alt="" class="triangle-shape">
 </div>
 <section class="cp-pofolio">
    <div class="container ">
       <div class="row">
       </div>

       <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item">
             <a class="nav-link active" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">all</a>
          </li>
          <li class="nav-item">
             <a class="nav-link" id="web-tab" data-toggle="tab" href="#web" role="tab" aria-controls="web" aria-selected="false">web</a>
          </li>
          <li class="nav-item">
             <a class="nav-link" id="ecommerce-tab" data-toggle="tab" href="#ecommerce" role="tab" aria-controls="ecommerce" aria-selected="false">E-Commerce</a>
          </li>
          <li class="nav-item">
             <a class="nav-link" id="mobile-tab" data-toggle="tab" href="#mobile" role="tab" aria-controls="mobile" aria-selected="false">mobile</a>
          </li>
          <li class="nav-item">
             <a class="nav-link" id="desktop-tab" data-toggle="tab" href="#desktop" role="tab" aria-controls="desktop" aria-selected="false">desktop</a>
          </li>
       </ul>
       <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
             <div class="row">
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio1.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>G4</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio2.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>DRS Engineering</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio3.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Mediconnect</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio4.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Job Swiper</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio5.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Fitness Pro</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio6.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Healthworld Hospital</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio7.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Disha Eye Hospital</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio8.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Pioneer Enterprises</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio9.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Ability Foundation</h4>
                   </div>
                </div>
             </div>
          </div>
          <div class="tab-pane fade" id="web" role="tabpanel" aria-labelledby="web-tab">
             <div class="row">
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio1.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>G4</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio2.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>DRS Engineering</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio3.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Mediconnect</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio6.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Healthworld Hospital</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio7.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Disha Eye Hospital</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio8.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Pioneer Enterprises</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio9.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Ability Foundation</h4>
                   </div>
                </div>
             </div>
          </div>
          <div class="tab-pane fade" id="ecommerce" role="tabpanel" aria-labelledby="ecommerce-tab">
             <div class="row">
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio1.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>G4</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio8.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Pioneer Enterprises</h4>
                   </div>
                </div>
             </div>
          </div>
          <div class="tab-pane fade" id="mobile" role="tabpanel" aria-labelledby="mobile-tab">
             <div class="row">
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio4.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Job Swiper</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio5.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Fitness Pro</h4>
                   </div>
                </div>
             </div>
          </div>
          <div class="tab-pane fade" id="desktop" role="tabpanel" aria-labelledby="desktop-tab">
             <div class="row">
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio1.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>G4</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio2.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>DRS Engineering</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio3.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Mediconnect</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio6.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Healthworld Hospital</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio7.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Disha Eye Hospital</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio8.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Pioneer Enterprises</h4>
                   </div>
                </div>
                <div class="col-md-4 col-6">
                   <div class="box">
                      <img src="{{url('new/images/portfolio/portfolio9.jpg')}}" alt="">
                   </div>
                   <div class="box-text">
                      <h4>Ability Foundation</h4>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
 </section>

@endsection