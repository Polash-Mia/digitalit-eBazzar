@extends('website.master')

@section('slider')
<!--<div id="header-carousel" class="carousel slide mt-2 mx-5" data-ride="carousel">-->
<!--    <div class="carousel-inner">-->
<!--        <div class="carousel-item active" style="height: 410px;">-->
<!--            <img class="img-fluid" src="{{asset('/')}}website/img/banar1.jpg" alt="Image">-->
<!--            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">-->
<!--                <div class="p-3" style="max-width: 700px;">-->
<!--                    <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>-->
<!--                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>-->
<!--                    <a href="" class="btn btn-light py-2 px-3">Shop Now</a>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="carousel-item" style="height: 410px;">-->
<!--            <img class="img-fluid" src="{{asset('/')}}website/img/banar2.jpg" alt="Image">-->
<!--            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">-->
<!--                <div class="p-3" style="max-width: 700px;">-->
<!--                    <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>-->
<!--                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>-->
<!--                    <a href="" class="btn btn-light py-2 px-3">Shop Now</a>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">-->
<!--        <div class="btn btn-dark" style="width: 45px; height: 45px;">-->
<!--            <span class="carousel-control-prev-icon mb-n2"></span>-->
<!--        </div>-->
<!--    </a>-->
<!--    <a class="carousel-control-next" href="#header-carousel" data-slide="next">-->
<!--        <div class="btn btn-dark" style="width: 45px; height: 45px;">-->
<!--            <span class="carousel-control-next-icon mb-n2"></span>-->
<!--        </div>-->
<!--    </a>-->
<!--</div>-->
@endsection

@section('body')
 


<!-- Categories Start -->
{{-- <div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">

        @foreach($categories as $category)

        <div class="col-lg-4 col-md-6 pb-1">
            <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;">
                <p class="text-right">15 Products</p>
                <a href="" class="cat-img position-relative overflow-hidden mb-3">
                    <img class="img-fluid" src="{{asset($category->image)}}" alt="" height="150" width="130">
                </a>
                <h5 class="font-weight-semi-bold m-0">Men's dresses</h5>
            </div>
        </div>

       @endforeach
        
        
        
    </div>
</div> --}}
<!-- Categories End -->


<!-- Offer Start -->
<div class="container-fluid offer ">
    <div class="row px-xl-5">
        <div class="col-md-6 pb-4">
            <div class="position-relative bg-secondary text-right text-md-right text-white mb-2 py-5 px-5">
                <img src="{{asset('/')}}website/img/kids.png" alt="" class="pb-4">
                <div class="position-relative" style="z-index: 1;">
                    <!--<h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>-->
                    <h1 class="mb-4 font-weight-semi-bold">Kids <br/> Collection</h1>
                    <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 pb-4">
            <div class="position-relative bg-secondary text-left text-md-left text-white mb-2 py-5 px-5 ">
                <img src="{{asset('/')}}website/img/young-woman-ovebg-preview.png" alt=""height="270" width="500" >
                <div class="position-relative" style="z-index: 1;">
                    <!--<h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>-->
                    <h1 class="mb-4 font-weight-semi-bold">Women <br/> Collection</h1>
                    <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Offer End -->
<!-- Featured Start -->
 <div class="container-fluid pt-1">
    <div class="row px-xl-5 pb-3">
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
            </div>
        </div>
    </div>
</div>
<!-- Featured End -->

<!-- Products Start -->
<div class="container-fluid pt-1">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Latest Products</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">

        @foreach($products as $product)

        <div class="col-lg-3 col-md-6 col-6 pb-4">
            {{-- <div class="card product-item border-0 mb-4 h-100">
                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0 h-100" >
                    <a href="{{route('product.detail',['id'=>$product->id])}}"><img class="img-fluid w-100 " src="{{asset($product->image)}}" alt=""  h-100></a>
                    
                </div>
                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                    
                    <!--<a href="{{route('product.detail',['id'=>$product->id])}}">{{$product->name}}</a>-->
                    <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}">{{$product->name}}</a>
                    <div class="d-flex justify-content-center">
                        <h5>৳{{$product->sellingprice}}</h6><h6 class="text-muted ml-2"><del>৳{{$product->regularprice}}</del></h5>
                    </div>
                    <button class="btn btn-danger">{{$product->parcent}}% off</button>
                </div>
                <div class="card-footer d-flex justify-content-between bg-light border">
                    <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                    <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                </div>
            </div> --}}
            <div class="card h-100">
                <div class="productimage" >
                    <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}">
                    <img src="{{asset($product->image)}}" class="card-img-top" alt="..." height="100%" >
                    </a>
                </div>
                
                <div class="card-body text-center">
                    <a href="{{route('product.detail',['id'=>$product->id])}}">{{$product->name}}</a>
                    <div class="d-flex justify-content-center">
                        <h5>৳{{$product->sellingprice}}</h6><h6 class="text-muted ml-2"><del>৳{{$product->regularprice}}</del></h5>
                    </div>
                    <button class="btn btn-danger">{{$product->parcent}}% off</button>
                </div>
                <div class="card-footer d-flex justify-content-between bg-light border">
                    <a href="{{route('product.detail',['id'=>$product->id])}}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>বিস্তারিত দেখুন</a>
                    {{-- <a href="{{route('product.detail',['id'=>$product->id])}}" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>অর্ডার করুন</a> --}}
                    
                   @if($product->stock_amount <= 0)
                    <button class="btn-danger">Stock Out</button>
                    
                    @else
                        <form action="{{route('add-to-cart', ['id' => $product->id ])}}" method="POST">
                            @csrf
                            <input type="hidden" name="quantity"  value="1">
                            <button type="submit"  class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>অর্ডার করুন</button>
                        </form>
                    
                    
                    @endif
                
                </div>
              </div>
        </div>
        
        
        @endforeach
    </div>
</div>
<!-- Products End -->

  <!-- Footer Start -->
  <div class="container-fluid  text-dark ">
    <div class="row px-xl-5 py-2">
       <div class="col-md-10 mx-auto text-justify">
        <h2>HISTORY OF eBazar</h2>
        We are launced eBazar at 2019. Bangladeshi's best kid's toys & fashion products collection. A team of dedicated employees along with sincere efforts, digital improvements and an equally loyal customer base has made eBazar the online platform it is today. Today eBazar at the top of the online fashion game & kids toys. 

The Myntra shopping app came into existence in the year 2015 to further encourage customers’ shopping sprees. Download the app on your Android or IOS device this very minute to experience fashion like never before

<br/><br/><h2>Toys and Games for Babies & Kids</h2>
Toys play a crucial part in development of a child. Toys as simple as wooden blocks or numbered puzzle, develops cognitive and physical skills. Complex puzzles, remote control cars, bubble guns helps learn and analyse cause effects and spatial relationships. Baby toys, rattles and bath toys enhances baby's attention and responses. Babies tend to play more and more with such toys and make themselves happy. Children's attitude towards their toys nurtures them big way.
Buy Toys Online like never before
<br> <br>
Choose to buy toys online and it will offer you widest range with features, specifications, skill-set and use of toy. You are exposed to a variety of options of baby & kids toys from all over world. You don't have to limit yourself while shopping for your kids just because you are tired. Choose ebazar.com.bd for online shopping of toys with a simplest click from anywhere in India and it will be shipped to you.



<br/><br/><h2>BEST ONLINE SHOPPING SITE IN BANGLADESH FOR FASHION & KIDS</h2>
Be it clothing, footwear or accessories, eBazar offers you the ideal combination of fashion and functionality for men, women and kids. You will realise that the sky is the limit when it comes to the types of outfits that you can purchase for different occasions.
<br/><br/><strong>Smart men’s clothing -</strong> 

At eBazar you will find options in smart formal shirts and trousers, cool T-shirts and jeans, or kurta and pyjama combinations for men. Wear your attitude with printed T-shirts. Create the back-to-campus vibe with varsity T-shirts and distressed jeans. Be it gingham, buffalo, or window-pane style, checked shirts are unbeatably smart. Team them up with chinos, cuffed jeans or cropped trousers for a smart casual look. Opt for a stylish layered look with biker jackets. Head out in cloudy weather with courage in water-resistant jackets. Browse through our innerwear section to find supportive garments which would keep you confident in any outfit. 
<br/><br/><strong>Trendy women’s clothing -</strong>

 Online shopping for women at eBazar is a mood-elevating experience. Look hip and stay comfortable with chinos and printed shorts this summer. Look hot on your date dressed in a little black dress, or opt for red dresses for a sassy vibe. Striped dresses and T-shirts represent the classic spirit of nautical fashion. Choose your favourites from among Bardot, off-shoulder, shirt-style, blouson, embroidered and peplum tops, to name a few. Team them up with skinny-fit jeans, skirts or palazzos. Kurtis and jeans make the perfect fusion-wear combination for the cool urbanite. Our grand sarees and lehenga-choli selections are perfect to make an impression at big social events such as weddings. Our salwar-kameez sets, kurtas and Patiala suits make comfortable options for regular wear.


<br/><br/><strong>Fashionable footwear -</strong> 

While clothes maketh the man, the type of footwear you wear reflects your personality. We bring you an exhaustive lineup of options in casual shoes for men, such as sneakers and loafers. Make a power statement at work dressed in brogues and oxfords. Practice for your marathon with running shoes for men and women. Choose shoes for individual games such as tennis, football, basketball, and the like. Or step into the casual style and comfort offered by sandals, sliders, and flip-flops. Explore our lineup of fashionable footwear for ladies, including pumps, heeled boots, wedge-heels, and pencil-heels. Or enjoy the best of comfort and style with embellished and metallic flats.

<br/><br/><strong>Stylish accessories - </strong> 

eBazar is one of the best online shopping sites for classy accessories that perfectly complement your outfits. You can select smart analogue or digital watches and match them up with belts and ties. Pick up spacious bags, backpacks, and wallets to store your essentials in style. Whether you prefer minimal jewellery or grand and sparkling pieces, our online jewellery collection offers you many impressive options.

<br/><br/><strong>Fun and frolic -</strong> 

Online shopping for kids at eBazar is a complete joy. Your little princess is going to love the wide variety of pretty dresses, ballerina shoes, headbands and clips. Delight your son by picking up sports shoes, superhero T-shirts, football jerseys and much more from our online store. Check out our lineup of toys with which you can create memories to cherish. Beauty begins here - You can also refresh, rejuvenate and reveal beautiful skin with personal care, beauty and grooming products from eBazar. Our soaps, shower gels, skin care creams, lotions and other ayurvedic products are specially formulated to reduce the effect of aging and offer the ideal cleansing experience. Keep your scalp clean and your hair uber-stylish with shampoos and hair care products. Choose makeup to enhance your natural beauty. eBazar is one of the best online shopping sites in India which could help transform your living spaces completely. Add colour and personality to your bedrooms with bed linen and curtains. Use smart tableware to impress your guest. Wall decor, clocks, photo frames and artificial plants are sure to breathe life into any corner of your home.
       </div>
    </div>
    
</div>
<!-- Footer End -->



<!-- Subscribe Start -->
<div class="container-fluid bg-secondary  subscribe">
    <div class="row justify-content-md-center pt-3 px-xl-5">
        <div class="col-md-6 col-12 py-5">
            <div class="text-center mb-2 pb-2">
                <h2 class="section-title px-5 mb-3"><span class="bg-secondary px-2">Stay Updated </span></h2>
                <p>ই-বাজারের সাথে আপডেট থাকতে আপনার ই -মেইল আইডি টি সাবমিট করুন</p>
            </div>
            <form action="">
                <div class="input-group">
                    <input type="text" class="form-control border-white p-4" placeholder="Email Goes Here">
                    <div class="input-group-append">
                        <button class="btn btn-primary px-4">Subscribe</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Subscribe End -->
@endsection