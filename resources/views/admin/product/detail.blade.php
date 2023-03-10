@extends('admin.master')

@section('title')
    Manage Product
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">Product Detail Info</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <table class="table table-bordered dt-responsive nowrap">
                        <tr>
                            <th>Product Id</th>
                            <td>{{$product->id}}</td>
                        </tr>          
                        <tr>
                            <th>Product Category Name</th>
                            <td>{{$product->category->name}}</td>
                        </tr>
                        <tr>
                            <th>Product Name</th>
                            <td>{{$product->name}}</td>
                        </tr>
                       
                        
                        <tr>
                            <th>Product Purchase Price</th>
                            <td>{{$product->purchaseprice}}</td>
                        </tr>
                        <tr>
                            <th>Product Regular Price</th>
                            <td>{{$product->regularprice}}</td>
                        </tr>
                        <tr>
                            <th>Product Descount Price</th>
                            <td>{{$product->sellingprice}}</td>
                        </tr>
                        <tr>
                            <th>Product Stock Amount</th>
                            <td>{{$product->stock_amount }}</td>
                        </tr>
                        <tr>
                            <th>Product Short Description</th>
                            <td>{!!$product->description!!}</td>
                        </tr>
                        <tr>
                            <th>Product Long Description</th>
                            <td>{!!$product->long_description!!}</td>
                        </tr>
                        <tr>
                            <th>Product Feature Image</th>
                            <td><img src="{{asset($product->image)}}" alt="" height="200" width="250"/></td>
                        </tr>
                        <tr>
                            <th>Product Sub Images</th>
                            <td>
                                @foreach($product->subImages as $subImage)
                                    <img src="{{asset($subImage->image)}}" alt="" height="120" width="120"/>
                                @endforeach
                            </td>
                        </tr>
                        <tr>
                            <th>Product Publication Status</th>
                            <td>{{$product->status == 1 ? 'Published' : 'Unpublished'}}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection

