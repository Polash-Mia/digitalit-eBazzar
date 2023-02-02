@extends('website.master')
@section('body')


<!-- Shop Detail Start -->
<div class="container-fluid py-0">
    <div class="row px-xl-5 ">
        <div class="col-lg-1 pb-5"></div>
        <div class="col-lg-5 pb-5">
                        <div class="container"> 
                            <div class="row d-flex justify-content-center mt-0">
                                 <div class="col">
                                     <div id="myCarousel" class="carousel slide" data-ride="carousel" align="center"> 
                                        <div class="carousel-inner">
                                            @foreach($product->subImages as $key => $subImage)
                                            <div class="imagegalary carousel-item  {{$key==0 ? "active" : " "}}" >
                                                 <img src="{{asset($subImage->image)}}" class="rounded" style="height: 100%; width:100%;">
                                             </div> 

                                             @endforeach
                                            
                                         </div>

                                                  <ol class="carousel-indicators list-inline">

                                                    @foreach($product->subImages as $key => $subImage)


                                                     <li class="list-inline-item {{$key==0 ? "active" : " "}} ">
                                                         <a id="carousel-selector-0" class="selected" data-slide-to="{{$key}}" data-target="#myCarousel">
                                                             <img src="{{asset($subImage->image)}}" class="img-fluid rounded" style="height: 80px; width:80px;"> 
                                                            </a>
                                                       </li>

                                                       @endforeach
                                                       
                                                    
                                                    </ol>
                                                </div> 
                                            </div> 
                                        </div>
                                    </div>


                        
                
        </div>

        <div class="col-lg-5 pb-5">
            <h3 class="font-weight-semi-bold">{{$product->name}}</h3>
            <div class="d-flex mb-3">
                <div class="text-primary mr-2">
                    <small class="fas fa-star"></small>
                    <small class="fas fa-star"></small>
                    <small class="fas fa-star"></small>
                    <small class="fas fa-star-half-alt"></small>
                    <small class="far fa-star"></small>
                </div>
                <small class="pt-1">(50 Reviews)</small>
            </div>
            <h3 class="font-weight-semi-bold mb-4">৳{{$product->sellingprice}}</h3>
            <del>৳{{$product->regularprice}} &nbsp;</del><button class="btn btn-danger">{{$product->parcent}}% off</button>
            <p class="mb-4">{!!$product->description!!}</p>
           
           @if($product->stock_amount <= 0)
                                <button class="btn-danger">Stock Out</button>

            @else
            <form action="{{route('add-to-cart', ['id' => $product->id ])}}" method="POST">
                @csrf
            <div class="d-flex align-items-center mb-4 pt-2">
                <div class="input-group quantity mr-3" style="width: 130px;">
                    {{-- <div class="input-group-btn">
                        <button class="btn btn-primary btn-minus" id="minus" >
                        <i class="fa fa-minus"></i>
                        </button>
                    </div> --}}
                    <input type="number" name="quantity" class="form-control bg-secondary text-center" value="1" min="1">
                    {{-- <input type="number" name="quantity" id="quantity" class="form-control bg-secondary text-center" value="1" min="1"/> --}}
                    {{-- <div class="input-group-btn">
                        <button class="btn btn-primary btn-plus" id="plus">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div> --}}
                </div>
                <button type="submit" class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i>অর্ডার করুন</button>
            </div>
            </form>
            @endif
            <div class="d-flex pt-2">
                <p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
                <div class="d-inline-flex">
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-pinterest"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="row px-xl-5">
        <div class="col">
            <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Description</a>
                <!--<a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Information</a>-->
                <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews (0)</a>
            </div>
            <div class="tab-content">
                <div class="tab-pane fade show active" id="tab-pane-1">
                    <h4 class="mb-3">Product Description</h4>
                    <p class="mb-4"> {!!$product->long_description!!}</p>
                </div>
                <!--<div class="tab-pane fade" id="tab-pane-2">-->
                <!--    <h4 class="mb-3">Additional Information</h4>-->
                <!--    <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>-->
                <!--    <div class="row">-->
                <!--        <div class="col-md-6">-->
                <!--            <ul class="list-group list-group-flush">-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Sit erat duo lorem duo ea consetetur, et eirmod takimata.-->
                <!--                </li>-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Amet kasd gubergren sit sanctus et lorem eos sadipscing at.-->
                <!--                </li>-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Duo amet accusam eirmod nonumy stet et et stet eirmod.-->
                <!--                </li>-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.-->
                <!--                </li>-->
                <!--              </ul> -->
                <!--        </div>-->
                <!--        <div class="col-md-6">-->
                <!--            <ul class="list-group list-group-flush">-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Sit erat duo lorem duo ea consetetur, et eirmod takimata.-->
                <!--                </li>-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Amet kasd gubergren sit sanctus et lorem eos sadipscing at.-->
                <!--                </li>-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Duo amet accusam eirmod nonumy stet et et stet eirmod.-->
                <!--                </li>-->
                <!--                <li class="list-group-item px-0">-->
                <!--                    Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.-->
                <!--                </li>-->
                <!--              </ul> -->
                <!--        </div>-->
                <!--    </div>-->
                <!--</div>-->
                <div class="tab-pane fade" id="tab-pane-3">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="mb-4">1 review for "Colorful Stylish Shirt"</h4>
                            <div class="media mb-4">
                                <img src="img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
                                <div class="media-body">
                                    <h6>John Doe<small> - <i>01 Jan 2045</i></small></h6>
                                    <div class="text-primary mb-2">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h4 class="mb-4">Leave a review</h4>
                            <small>Your email address will not be published. Required fields are marked *</small>
                            <div class="d-flex my-3">
                                <p class="mb-0 mr-2">Your Rating * :</p>
                                <div class="text-primary">
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                            <form>
                                <div class="form-group">
                                    <label for="message">Your Review *</label>
                                    <textarea id="message" cols="30" rows="5" class="form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="name">Your Name *</label>
                                    <input type="text" class="form-control" id="name">
                                </div>
                                <div class="form-group">
                                    <label for="email">Your Email *</label>
                                    <input type="email" class="form-control" id="email">
                                </div>
                                <div class="form-group mb-0">
                                    <input type="submit" value="Leave Your Review" class="btn btn-primary px-3">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Shop Detail End -->

{{-- imagegellary --}}




@endsection

