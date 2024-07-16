<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="icon" type="image/x-icon" href="{{url('new/images/f-logo.png')}}">

      @if(isset($seo_data['seo_title']))
      <title>{{ $seo_data['seo_title'] }}</title>
      @endif
    
      @if(isset($seo_data['seo_description']))
          <meta name="description" content="{{$seo_data['seo_description']}}" />
          @endif
    
          @if(isset($seo_data['keywords']))
          <meta name="keywords"  content="{{$seo_data['keywords']}}" />
          @endif  
          
          
          <meta property="og:title" content="{{$seo_data['seo_title']}}">
    <meta property="og:site_name" content="Codepin">

    @if(isset($canocial))
    <meta property="og:url" content="{{$canocial}}">
    @endif

    <meta property="og:description" content="{{$seo_data['seo_description']}}">
    <meta property="og:type" content="website">
    <meta property="og:image" content="">
      

    <script async src="https://www.googletagmanager.com/gtag/js?id=G-S9RSKCL40Y"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-S9RSKCL40Y');
</script>
      
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="{{url('new/css/bootstrap.min.css')}}">
      <!-- <link rel="stylesheet" href="css/main.css"> -->
      <link rel="stylesheet" href="{{url('new/css/custom.css')}}">
      <!--font-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   </head>
   <body class="full_content">
      
      <!-- New header -->
      <header class="sticky header-part">

         <div class="container-fluid">
            <div class="row align-items-center">

            <div class="col-md-3 col-6 nav-brand">
               <a class="logo" href="{{route('index')}}">
                  <img src="{{url('new/images/logo.png')}}" alt="CodePin Logo" class="logo-img ">
                  <img src="{{url('new/images/f-logo.png')}}" alt="CodePin Logo" class="logo-icon ">
               </a>
            </div>
            <div class="col usp-nav">
               <nav class="d-none d-lg-block">
                  <ul>
                     <li class="active">
                        <a href="{{route('index')}}">Home</a>
                     </li>
                     <li >
                        <a href="{{route('about')}}">About</a>
                     </li>
                     <li>
                        <a href="{{route('services')}}">Services</a>
                     </li>
                     <li>
                        <a href="{{route('blogs')}}">Blogs</a>
                     </li>
                     <li>
                        <a href="{{route('casestudies')}}">Case Studies</a>
                     </li>
                     <!-- <li>
                        <a href="contact.html">Contact us</a>
                     </li> -->
                  </ul>
               </nav>
               <a href="{{route('contact')}}" class="btn-outline line-animation">Contact us</a>
               <div class="menu-icon-area d-lg-none">
                  <a href="javascript: ;" class="hummenu" id="hummenu">
                     <div class="site-header-menu-btn  theme_menu">
                        <span>menu</span>
                        <div class="site-header-menu-btn-circle">
                           <svg id="circle-anim-small" class="circle-anim" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 40 40">
                              <g class="bg" style="opacity:0.2">
                              <path d="M4,30.51a19.21,19.21,0,1,0,0-21" transform="translate(-3.5 -0.3)" style="fill:none;stroke:#fff;stroke-width: 1;"></path>
                              </g>
                              <g class="over">
                              <path d="M4,30.51a19.21,19.21,0,1,0,0-21" transform="translate(-3.5 -0.3)" style="fill: none; stroke: rgb(255, 255, 255); stroke-width: 1px; visibility: visible; stroke-dashoffset: -84.5632px; stroke-dasharray: 14.9229px, 109.486px;"></path>
                              </g>
                           </svg>
                        </div>
                     </div>
                  </a>

               </div>

            </div>


            </div>
         </div>
      </header>

      <!-- Mobile Menu -->
      <div class="slidemenu-overlay"></div>
      <div class="slidemenu" id="slidemenu">
         <div class="slidemenu-header">
           <a href="javascript: ;" class="close-menu" id="closemenu"><img src="{{url('new/images/close.png')}}" alt="hello"></a>
         </div> 
   
         <div class="slidemenu-menu-area">
            <ul class="list-unstyled slidemenu-items">
               <li class="active">
                  <a href="{{route('index')}}">Home</a>
               </li>
               <li>
                  <a href="{{route('about')}}">About</a>
               </li>
               <li>
                  <a href="{{route('services')}}">Services</a>
               </li>
               <li>
                  <a href="{{route('blogs')}}">Blogs</a>
               </li>
               <li>
                  <a href="{{route('casestudies')}}">Case Studies</a>
               </li>
            </ul>
   
           <div class="login-signup">
            <a href="{{route('contact')}}" class="btn-outline line-animation">Contact us</a>
            
           </div>
         </div>
      </div>
      <!-- End Header -->