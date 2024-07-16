@extends('dashboard.layout.main')
@section('main-containers')



<div class="banner-sec inner-banner">
    <img src="{{url('new/images/inner-banner.jpg')}}" alt="" class="banner-img">
    <div class="banner-text">
       <div class="container">
          <div class="row align-items-center">
             <div class="col-md-10 mx-auto text-center">
                <h2>We love hearing about <br> new projects</h2>
             </div>
             <div class="down_arrow inner_down show_arrow">
                <a href="#basic_contact">
                   <svg class="circle" xmlns="http://www.w3.org/2000/svg">
                      <g>
                         <ellipse class="background" ry="40" rx="40" cy="62.5" cx="62.5" stroke-width="1"/>
                         <ellipse class="foreground" ry="40" rx="40" cy="62.5" cx="62.5" stroke-width="1"/>
                      </g>
                   </svg>
                </a>
             </div>
          </div>
       </div>
    </div>
    <img src="{{url('new/images/arrow-shape.png')}}" alt="" class="arrow-shape">
    <img src="{{url('new/images/triangle-shape.png')}}" alt="" class="triangle-shape">
 </div>

 <section class="basic_section contact_inner" id="basic_contact">
    <div class="container">
       <h3 class="text-center">Please don't hesitate to tell us about yours.</h3>
       <div class="contact_form_box">
    <div align="center" style="padding-top: 30px;">
      @if (session()->has('message'))
      <div class="alert alert-success">
         <button type="button" class="close" data-dismiss="alert">x</button>
         
         {{session()->get('message')}}
      </div>
          
      @endif
    </div>
          <form action="{{route('contactPost')}}" method="POST">
            @csrf
             <div class="row mrg-0">
                <div class="col-md-12 pd-5">
                   <input type="text" name="name" placeholder="Name" class="form-control" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');"  value="{{old('name')}}">
                   <span class="text-danger">
                     @error('name')
                        {{$message}}
                     @enderror
                   </span>
                </div>
                <div class="col-md-6 pd-5">
                   <input type="email" name="email" placeholder="Email" class="form-control"  value="{{old('email')}}">
                   <span class="text-danger">
                     @error('email')
                        {{$message}}
                     @enderror
                   </span>
                </div>
                <div class="col-md-6 pd-5">
                   <input type="text" name="phone" placeholder="Phone" class="form-control" maxlength="10" oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');"  value="{{old('phone')}}">
                   <span class="text-danger">
                     @error('phone')
                        {{$message}}
                     @enderror
                   </span>
                </div>
                <div class="col-md-6 pd-5">
                   <input type="text" name="company" placeholder="Company" class="form-control" value="{{old('company')}}">
                   <span class="text-danger">
                     @error('company')
                        {{$message}}
                     @enderror
                   </span>
                </div>
                <div class="col-md-6 pd-5">
                   <input type="text" name="company_website" placeholder="Company website" class="form-control"  value="{{old('company_website')}}">
                   <span class="text-danger">
                     @error('company_website')
                        {{$message}}
                     @enderror
                   </span>
                </div>

               <div class="col-md-6 pd-5">
                   <select name="subject" id="help" required="" class="form-control" >
                      <option>How can we help?</option >
                      <option value="Branding">Branding</option>
                      <option value="ERP or CRM">ERP or CRM</option>
                      <option value="Web Design / build">Web Design / build</option>
                      <option value="Mobile App Development">Mobile App Development</option>
                      <option value="Online Marketing [SEO, SMO]">Online Marketing [SEO, SMO]</option>
                      <option value="Others">Others</option>
                 </select>
                 <span class="text-danger">
                  @error('subject')
                     {{$message}}
                  @enderror
                </span>
               </div>

                <div class="col-md-6 pd-5">
                   <select name="budget" id="budget" required="" class="form-control">
                      <option>What's your ideal budget?</option>
                      <option value="Less than ₹15,000">Less than ₹15,000</option>
                      <option value="₹15,000 - ₹30,000">₹15,000 - ₹30,000</option>
                      <option value="₹30,000 - ₹50,000">₹30,000 - ₹50,000</option>
                      <option value="₹50,000 - ₹100,000">₹50,000 - ₹100,000</option>
                      <option value="₹100,000 - ₹250,000">₹100,000 - ₹250,000</option>
                      <option value="₹250,000+">₹250,000+</option>
                   </select>
                   <span class="text-danger">
                     @error('budget')
                        {{$message}}
                     @enderror
                   </span>
                </div>
                <div class="col-md-12 pd-5">
                   <textarea name="message"  class="form-control" placeholder="Anything else?"></textarea>
                   <span class="text-danger">
                     @error('message')
                        {{$message}}
                     @enderror
                   </span>
                </div>
                <div class="col-md-12 pd-5">
                   <div class="custome_checkbox">
                      <input type="checkbox"  id="check">  <label for="check">I agree to the AdSquad <a href="javascript: ;">Privacy Policy</a></label>
                   </div>
                </div>
                <div class="col-md-12 pd-5 text-md-right">
                   <input type="submit" id="submitBtn" disabled  value="Submit" class="submit_btn">
                </div>
             </div>
          </form>
       </div>
    </div>
 </section>

 <script>
   document.getElementById("check").addEventListener("change", function() {
       var submitBtn = document.getElementById("submitBtn");
       submitBtn.disabled = !this.checked;
   });
</script>





@endsection