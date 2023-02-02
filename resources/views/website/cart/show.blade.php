@extends('website.master')

@section('body')


<div class="container-fluid pt-1">
    <div class="row px-xl-5">
        <div class="col-lg-8 table-responsive mb-5">
            <table class="table table-bordered  mb-0">
                <thead class="bg-secondary text-dark">
                    <tr>
                        <th>Products</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody class="">
                    @php($sum=0)
                    @foreach($products as $product)
                    <tr>
                        <td class="align-baseline"><img src="{{asset($product->attributes->image)}}" alt="" style="width: 50px;"> {{$product->name}}</td>
                        <td class="align-middle">৳{{$product->price}}</td>
                        <td class="align-middle">{{$product->quantity}}</td>
                        
                        <td class="align-middle">{{$product->quantity*$product->price}}</td>
                        <td class="align-middle"><a class="remove-item" onclick="return confirm('Are you sure to remove this..');" href="{{route('remove-cart-product', ['id' => $product->id])}}"><i class="fa fa-times"></i></a></td>
                    </tr>
                    
                    @php($sum = $sum + ($product->quantity * $product->price))
                    @endforeach
                    
                </tbody>
            </table>
        </div>
        <div class="col-lg-4">
            <form class="mb-5" action="">
                <div class="input-group">
                    <input type="text" name="coupon_code" class="form-control p-4 coupon_code" placeholder="Coupon Code">
                    <input type="hidden" name="total_for_coupon" id="total_for_coupon" value="{{$sum}}">

                    <div class="input-group-append">
                        <button class="btn btn-primary apply_coupon_btn">Apply Coupon</button>
                    </div>
                    
                </div>
                <small id="error_coupon" class="text-danger"></small>
            </form>
            <div class="card border-secondary mb-5">
                <div class="card-header bg-secondary border-0">
                    <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                </div>
                <form action="{{ route('checkout')}}" method="POST">
                    @csrf
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-3 pt-1">
                        <h6 class="font-weight-medium">Subtotal</h6>
                        <h6 class="font-weight-medium">৳{{number_format($sum)}}</h6>
                        
                        <input type="hidden" value="" id="coupon_discount_price_hidden" name="coupon_discount_price">
                      
                        
                    </div>
                    <div class="d-flex justify-content-between mb-3 pt-1">
                        <h6 class="font-weight-medium">Coupon Discount</h6>           
                        <h6 class="font-weight-medium discount_price" id="coupon_discount_price">৳ 00.00</h6>
                        
                    </div>
                    <div class="d-flex justify-content-between mb-3 pt-1">
                       
                        <h6 class="font-weight-medium">Grand Total</h6>
                        <h6 class="font-weight-medium grandTotal" id="coupon_grandTotal">৳ 00.00</h6>
                        
                    </div>
                    
                    <div class="">
                        <h6 class="font-weight-medium">Shipping</h6>
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <label for="in_dhaka"><input selected type="radio" id="in_dhaka" name="shipping" value="{{$shipping->inside_dhaka}}">
                            Inside of Dhaka</label>
                            <h6 class="font-weight-medium">৳{{number_format($shipping->inside_dhaka)}}</h6>
                        </div>
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <label for="out_dhaka"><input required type="radio" id="out_dhaka" name="shipping" value="{{ $shipping->outside_dhaka  }}">
                            Outside of Dhaka</label>
                            <h6 class="font-weight-medium">৳{{number_format($shipping->outside_dhaka)}}</h6>
                        </div>
                    </div>
                </div>
                <div class="card-footer border-secondary bg-transparent">
                    @php($grandTotal = $sum )
                    
                    <button type="submit" class="btn btn-block btn-primary my-3 py-3">অর্ডারটি কনফার্ম করুন</button>
                    <?php
                    Session::put('order_total', $grandTotal);
                    
                ?>
                </form>
                <div class="button">
                   
                    <a href="{{route('shop')}}" class="btn btn-block btn-primary my-3 py-3">আরো কিনুন</a>
                    
                </div>
                
                </div>
            </div>
        </div>
    </div>
</div>
@endsection