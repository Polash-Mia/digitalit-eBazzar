<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>eBazar - Easy Online Shopping in Bangladesh</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    
     <meta name="csrf-token" content="{{ csrf_token() }}">


   
    <!-- Favicon -->
    <link href="{{asset('/')}}website/img/fabicon.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <!--<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">-->
    
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Libraries Stylesheet -->
    <link href="{{asset('/')}}website/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <link rel="stylesheet" href="{{asset('/')}}website/css/glightbox.min.css" />
    <link rel="stylesheet" href="{{asset('/')}}website/css/xzoom.css" media="all" />
    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{asset('/')}}website/css/multipleimage.css" rel="stylesheet">
    <link href="{{asset('/')}}website/css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5 topnav">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center navicon ">
                    <a class="text-dark" href="">FAQs</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Help</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Support</a>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center navicon">
                    <a class="text-dark px-2" href="https://www.facebook.com/ebazarlimited" target="_blank">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-dark px-2" href="https://www.tiktok.com/@ebazarbd?fbclid=IwAR1JXWKYGjG0YB8laf6Dh16K0sXa-06c6G7261Npyzp0-jVIgicdgfw6QD4" target="_blank">
                        {{-- <i class="fab fa-twitter"></i> --}}
                        <i class="fa-brands fa-tiktok"></i>
                    </a>
                    {{-- <a class="text-dark px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a> --}}
                    <a class="text-dark px-2" href="https://www.instagram.com/ebazarofficials/?fbclid=IwAR0VOWRN6EBaPVE4YdMoRoaFhvXdW_h77-6Z4jgUCfnDTer2Nl5Grsnq8z8" target="_blank">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-dark pl-2" href="https://www.youtube.com/@ebazarbd" target="_blank">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="{{route('home')}}" class="text-decoration-none">
                    {{-- <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">e</span>Bazar</h1> --}}
                    <img src="{{asset('/')}}website/img/unnamed.png" alt="">
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
               <form action="{{route('search')}}" method="get">
                    @csrf
                    <div class="input-group">
                        <input type="text" name="search" class="form-control" placeholder="Search for products">
                        <button type="submit" class="input-group-text bg-transparent text-primary"><i class="fa fa-search"></i></button>
                       
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                {{-- <a href="" class="btn border">
                    <i class="fas fa-heart text-primary"></i>
                    <span class="badge">0</span>
                </a> --}}
                <a href="{{route('show-cart')}}" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge">{{$totalCartProduct}}</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid mb-1">
        <div class="row border-top px-xl-5 ">
            
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="{{route('home')}}" class="text-decoration-none d-block d-lg-none">
                        {{-- <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1> --}}
                        <img src="{{asset('/')}}website/img/unnamed.png" alt="">
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle bg-danger text-white" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                    Categories
                                </a>
                                <div class="dropdown-menu">
                                    @foreach ($categories as $category)
                                  <a class="dropdown-item" href="{{route('category', ['id' => $category->id])}}">{{$category->name}}</a>
                                  @endforeach
                                
                                </div>
                              </li>
                            <a href="{{route('home')}}" class="nav-item nav-link active">Home</a>
                            <a href="{{route('shop')}}" class="nav-item nav-link">Shop</a>
                           
                            <a href="{{route('contact')}}" class="nav-item nav-link">Contact</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0">
                            {{-- <a href="{{route('customer-login')}}" class="nav-item nav-link">Login</a>
                            <a href="{{route('customer-register')}}" class="nav-item nav-link">Register</a> --}}
                        
                            <div class="top-end">
                                @if(Session::get('customer_id'))
                                <div class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                        {{Session::get('customer_name')}}
                                      </a>
                                    {{-- <div class="user dropdown">
                                        <i class="lni lni-user"></i>
                                        Hello {{Session::get('customer_name')}}
                                    </div> --}}
                                    <div class="user-login">

                                        <ul class="dropdown-menu">
                                        
                                          <li><a href="{{route('customer-dashboard')}}" class="dropdown-item">Dashboard</a></li>  
                                        
                                        
                                           <li><a href="{{route('customer-logout')}}" class="dropdown-item">Logout</a></li> 
                                        </ul>
                                    </div>
                                @else
                                    <div class="user-login">
                                        
                                            <a href="{{route('customer-login')}}" class="nav-item nav-link">Sign In</a>
                                       
                                        
                                            <a href="{{route('customer-register')}}" class="nav-item nav-link">Register</a>
                                        
                                    </div>
                                @endif
                            </div>                       
                        </div>
                    </div>
                </nav>
                @yield('slider')
            </div>
        </div>
    </div>
    <!-- Navbar End -->


   @yield('body')


    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-dark ">
        <div class="row px-xl-5 pt-3 footicon">
            <div class="col-lg-4 col-md-12 mb-3 pr-3 pr-xl-5">
                <a href="{{route('home')}}" class="text-decoration-none mb-3">
                    <img src="{{asset('/')}}website/img/unnamed.png" alt="">
                </a>
                <p class="mt-2">ই বাজার বাংলাদেশের একটি সিলেক্টিভ পণ্যের ই কমার্স প্রতিষ্ঠান যেখানে আপনি শুধু মাত্র বেস্ট এবং ট্রেন্ডিং পণ্যগুলো পাবেন।  ইবাজার আপনাকে পণ্য ক্যাশ অন ডেলিভারি দিবে (পণ্য হাতে পাওয়ার পর টাকা )। </p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>5th floor, ADDL Tower, 67/B Shankar Bus stand,<br/> Dhanmondi-27, Dhaka,1209</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>ebazarofficials@gmail.com, <br/> &nbsp; &nbsp; &nbsp; &nbsp; info@ebazar.com.bd</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>01409-367310</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                             @foreach ($pages as $page)
                            <a class="text-dark mb-2" href="{{route('page', ['id' => $page->id])}}"><i class="fa fa-angle-right mr-2"></i>{{$page->title}}</a>
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About Us</a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Customer Service </a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Privacy Policy </a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Order and Returns </a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Contact</a>-->
                             @endforeach
                            
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                             @foreach ($pagetwo as $page)
                            <a class="text-dark mb-2" href="{{route('pagetwo', ['id' => $page->id])}}"><i class="fa fa-angle-right mr-2"></i>{{$page->title}}</a>
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Shipping & Returns</a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Customer Reviews </a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Blog </a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>FAQs </a>-->
                            <!--<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Delivery information</a>-->
                            @endforeach
                            
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <h5 class="font-weight-bold text-dark mb-4">Newsletter</h5>
                        <form action="">
                            <div class="form-group">
                                <input type="text" class="form-control border-0 py-4" placeholder="Your Name" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-0 py-4" placeholder="Your Email"
                                    required="required" />
                            </div>
                            <div>
                                <button class="btn btn-primary btn-block border-0 py-3" type="submit">Subscribe Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top border-light mx-xl-5 py-4">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-dark">
                   Cpoyright &copy; 2019 <a class="text-dark font-weight-semi-bold" href="#">eBazar</a>   All Rights Reserved

                </p>
            </div>
            <div class="col-md-6 px-xl-0 text-center text-md-right">
                <img class="{{asset('/')}}website/img-fluid" src="{{asset('/')}}website/img/monytransfer.png" alt="">
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

    

   
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('/')}}website/lib/easing/easing.min.js"></script>
    <script src="{{asset('/')}}website/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="{{asset('/')}}website/mail/jqBootstrapValidation.min.js"></script>
    <script src="{{asset('/')}}website/mail/contact.js"></script>

    <script src="{{asset('/')}}website/js/glightbox.min.js"></script>
    <script src="{{asset('/')}}website/js/xzoom.min.js"></script>
    
    <!-- Template Javascript -->
    <script src="{{asset('/')}}website/js/main.js"></script>
    
    
     <script>

        $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
    });


    $('.apply_coupon_btn').click(function(e){
        e.preventDefault();

        var coupon_code = $('.coupon_code').val();
        var total_for_coupon = $('#total_for_coupon').val();
    

        
        
        if($.trim(coupon_code).length == 0){
            error_coupon = "Please Enter Valid Coupon";
            $('#error_coupon').text(error_coupon);
        }
        else{
            error_coupon = '';
            $('#error_coupon').text(error_coupon);

        }
        if(error_coupon != ''){
            return false;
        }

        $.ajax({
            method:"POST",
            url:"/check-coupon-code",
            data:{
                'coupon_code':coupon_code,
                'total_for_coupon':total_for_coupon

            },
            
            success: function(response){

                var discount_price = response.discount_price;
                var grandTotal = response.grandTotal;
                $('#coupon_discount_price').text(discount_price);
                $('#coupon_grandTotal').text(grandTotal); 
                $('#coupon_discount_price_hidden').val(discount_price);

            }
        })
    })

    </script>


   




    
</body>

</html>