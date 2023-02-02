@extends('website.master')

@section('body')
 


<!-- Shop Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <div class="col-lg-3 col-md-12">
            <!-- Price Start -->
            <div class="border-bottom mb-4 pb-4">
                <h5 class="font-weight-semi-bold mb-4">Product Cetagory</h5>
                <!--<h5 class="font-weight-semi-bold mb-4">Filter by price</h5>-->
                <!--<form>-->
                <!--    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">-->
                <!--        <input type="checkbox" class="custom-control-input" checked id="price-all">-->
                <!--        <label class="custom-control-label" for="price-all">All Price</label>-->
                <!--        <span class="badge border font-weight-normal">1000</span>-->
                <!--    </div>-->
                <!--    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">-->
                <!--        <input type="checkbox" class="custom-control-input" id="price-1">-->
                <!--        <label class="custom-control-label" for="price-1">৳0 - ৳100</label>-->
                <!--        <span class="badge border font-weight-normal">150</span>-->
                <!--    </div>-->
                <!--    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">-->
                <!--        <input type="checkbox" class="custom-control-input" id="price-2">-->
                <!--        <label class="custom-control-label" for="price-2">৳100 - ৳200</label>-->
                <!--        <span class="badge border font-weight-normal">295</span>-->
                <!--    </div>-->
                <!--    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">-->
                <!--        <input type="checkbox" class="custom-control-input" id="price-3">-->
                <!--        <label class="custom-control-label" for="price-3">৳200 - ৳300</label>-->
                <!--        <span class="badge border font-weight-normal">246</span>-->
                <!--    </div>-->
                <!--    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">-->
                <!--        <input type="checkbox" class="custom-control-input" id="price-4">-->
                <!--        <label class="custom-control-label" for="price-4">৳300 - ৳400</label>-->
                <!--        <span class="badge border font-weight-normal">145</span>-->
                <!--    </div>-->
                <!--    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">-->
                <!--        <input type="checkbox" class="custom-control-input" id="price-5">-->
                <!--        <label class="custom-control-label" for="price-5">৳400 - ৳500</label>-->
                <!--        <span class="badge border font-weight-normal">168</span>-->
                <!--    </div>-->
                <!--</form>-->
                @foreach ($categories as $category)
                        <a class=" " href="{{route('category', ['id' => $category->id])}}">{{$category->name}}</a> <br>
                     @endforeach
            </div>
            <!-- Price End -->
            
           
        </div>
        <!-- Shop Sidebar End -->


        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-12">
            <div class="row pb-3">
                <!--<div class="col-12 pb-1">-->
                <!--    <div class="d-flex align-items-center justify-content-between mb-4">-->
                <!--        <form action="">-->
                <!--            <div class="input-group">-->
                <!--                <input type="text" class="form-control" placeholder="Search by name">-->
                <!--                <div class="input-group-append">-->
                <!--                    <span class="input-group-text bg-transparent text-primary">-->
                <!--                        <i class="fa fa-search"></i>-->
                <!--                    </span>-->
                <!--                </div>-->
                <!--            </div>-->
                <!--        </form>-->
                <!--        <div class="dropdown ml-4">-->
                <!--            <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"-->
                <!--                    aria-expanded="false">-->
                <!--                        Sort by-->
                <!--                    </button>-->
                <!--            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">-->
                <!--                <a class="dropdown-item" href="#">Latest</a>-->
                <!--                <a class="dropdown-item" href="#">Popularity</a>-->
                <!--                <a class="dropdown-item" href="#">Best Rating</a>-->
                <!--            </div>-->
                <!--        </div>-->
                <!--    </div>-->
                <!--</div>-->

                @if(count($products)>0)
                @foreach($products as $product)
                <div class="col-lg-4 col-md-6 col-6  pb-1 productrow">
                    <div class="card h-100">
                        <div class="productimage" >
                            <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}">
                            <img src="{{asset($product->image)}}" class="card-img-top" alt="..." height="100%" >
                            </a>
                        </div>
                        
                        <div class="card-body text-center">
                            <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}">{{$product->name}}</a>
                            <div class="d-flex justify-content-center">
                                <h5>৳{{$product->sellingprice}}</h6><h6 class="text-muted ml-2"><del>৳{{$product->regularprice}}</del></h5>
                            </div>
                            <button class="btn btn-danger">{{$product->parcent}}% off</button>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="{{route('product.detail',['id'=>$product->id,'slug'=> Str::slug($product->name)])}}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>বিস্তারিত দেখুন</a>
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
                
                 @endif

                
             
                
            
            </div>
            <span>{{$products->links()}}</span>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<style>
    .w-5{
        height: 45px;
        width: 45px;
    }
</style>
<!-- Shop End -->
    
@endsection