@extends('admin.master')

@section('title')
    Admin Order Detail
@endsection

@section('body')

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">Order Basic Info</h4>
                    <table class="table table-bordered dt-responsive nowrap">
                        <tr>
                            <th>Order No</th>
                            <td>{{$order->id}}</td>
                        </tr>
                        <tr>
                            <th>Customer Info</th>
                            <td>{{$order->customer->name.'('. $order->customer->mobile .')'}}</td>
                        </tr>
                        <tr>
                            <th>Order Total</th>
                             <td>{{$order->order_total - $order->coupon_discount_price}}</td>
                        </tr>
                        
                        <tr>
                            <th>Shipping Total</th>
                            <td>{{$order->shipping_total}}</td>
                        </tr>
                        <tr>
                            <th>Delivery Address</th>
                            <td>{{$order->delivery_address}}</td>
                        </tr>
                        <tr>
                            <th>Order Status</th>
                            <td>{{$order->order_status}}</td>
                        </tr>
                        <tr>
                            <th>Payment Status</th>
                            <td>{{$order->payment_status}}</td>
                        </tr>
                        <tr>
                            <th>Payment Method</th>
                            <td>{{$order->payment_method}}</td>
                        </tr>
                        <tr>
                            <th>Payment Date</th>
                            <td>{{$order->payment_date}}</td>
                        </tr>
                        <tr>
                            <th>Transaction ID</th>
                            <td>{{$order->transaction_id}}</td>
                        </tr>
                        <tr>
                            <th>Delivery Date</th>
                            <td>{{$order->delivery_date}}</td>
                        </tr>
                        <tr>
                            <th>Delivery Status</th>
                            <td>{{$order->delivery_status}}</td>
                        </tr>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->


    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">Order Product Info</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <table class="table table-bordered dt-responsive nowrap">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Unit Price</th>
                            <th>Quantity</th>
                            <th>Total Price</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($order->orderDetails as $order)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$order->product_id}}</td>
                                <td>{{$order->product_name}}</td>
                                <td>{{$order->product_price}}</td>
                                <td>{{$order->product_quantity}}</td>
                                <td>{{$order->product_price * $order->product_quantity }}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection
