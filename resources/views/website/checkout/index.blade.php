@extends('website.master')

@section('body')
   


   <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div class="mb-4">
                    <h4 class="font-weight-semi-bold mb-4">Shipping Address</h4>
                    <form action="{{route('new-order')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label class="text-dark"><strong>Full Name:</strong></label>
                                @if(isset($customer->name))
                                                                <input type="text" required class="w-100" value="{{$customer->name}}" readonly/>
                                                            @else
                                                                <input type="text" required class="w-100" name="name" placeholder="Full Name"/>
                                                                <span class="text-danger">{{$errors->has('name') ? $errors->first('name') : ''}}</span>
                                                            @endif
                            </div>
                            <input type="hidden" name="shipping_charge" value="{{ $shipping }}">
                            <input type="hidden" name="coupon_discount_price" value="{{ $coupon_discount_price }}">
                            <div class="col-md-12 form-group">
                                <label class="text-dark"><strong>Mobile No</strong> </label>
                                @if(isset($customer->mobile))
                                       <input type="text" required class="w-100" value="{{$customer->mobile}}" readonly/>
                                     @else
                                
                                     <input type="number" required class="w-100" name="mobile" placeholder="Phone Number"/>
                                            <span class="text-danger">{{$errors->has('mobile') ? $errors->first('mobile') : ''}}</span>
                                 @endif
                            </div>
                            {{-- <div class="col-md-12 form-group">
                                <label class="text-dark"><strong>Password</strong> </label>
                                @if(isset($customer->password))
                                       <input type="password" class="w-100" value="{{$customer->password}}" readonly/>
                                     @else
                                
                                     <input type="password" class="w-100" name="password" placeholder="password "/>
                                            <span class="text-danger">{{$errors->has('password') ? $errors->first('password') : ''}}</span>
                                 @endif
                            </div> --}}

                            <div class="col-md-12 form-group">
                                <label class="text-dark"><strong>Address</strong>  </label>
                                <textarea class="w-100" required name="delivery_address" placeholder="House No./ Road No./City"></textarea>
                                                        <span class="text-danger">{{$errors->has('delivery_address') ? $errors->first('delivery_address') : ''}}</span>
                                                        
                            </div>
                            <div class="card border-secondary mb-5 ml-3">
                                <div class="card-header bg-secondary border-0 ">
                                    <h4 class="font-weight-semi-bold m-0">Payment</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="cash" class=""name="payment_method" checked value="1">
                                            <label class="" for="cash">Cash On Delivery</label>
                                        </div>
                                    </div>                        
                                </div>
                                <div class="card-footer border-secondary bg-transparent">
                                    <button type="submit" class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Confirm Order</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Order Total</h4>
                    </div>
                    <div class="card-body">
                        <h5 class="font-weight-medium mb-3">Products</h5>
                        @php($sum=0)
                                @foreach($cartProducts as $cartProduct)
                        <div class="d-flex justify-content-between">
                            <p class="value">{{$cartProduct->name}}: ({{$cartProduct->price}} * {{$cartProduct->quantity}})</p>
                                    <p class="price">Tk. {{$cartProduct->price * $cartProduct->quantity}}</p>
                        </div>
                        @php($sum = $sum + ($cartProduct->quantity*$cartProduct->price))
                                @endforeach
                        
                        <hr class="mt-0">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            <h6 class="font-weight-medium">৳{{number_format($sum)}}</h6>
                            
                        </div>
                        <div class="d-flex justify-content-between mb-3 pt-1">
                           
                            <h6 class="font-weight-medium">Coupon Discount</h6>
                            <h6 class="font-weight-medium">৳{{number_format($coupon_discount_price)}}</h6>
                        {{-- <h6 class="font-weight-medium discount_price" id="coupon_discount_price">৳ 00.00</h6> --}}
                        
                        </div>
                        <div class="d-flex justify-content-between mb-3 pt-1">
                           
                        
                        <h6 class="font-weight-medium">Grand Total</h6>
                        <h6 class="font-weight-medium grandTotal" id="coupon_grandTotal">৳{{number_format($sum - $coupon_discount_price)}}</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">৳{{$shipping}}</h6>

                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            @php($grandTotal = $sum  + $shipping- $coupon_discount_price)
                            <h5 class="font-weight-bold">৳{{number_format($grandTotal)}}</h5>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    
    
    
    
@endsection