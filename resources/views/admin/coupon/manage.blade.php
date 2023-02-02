@extends('admin.master')

@section('title')
    Manage Category
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">All Category Info</h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>coupon Code </th>
                            <th>coupon Type</th>
                            <th>coupon Value </th>
                            <th>coupon Cart_Value </th>                
                            
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($coupons as $coupon)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$coupon->code}}</td>
                            <td>{{$coupon->type}}</td>
                            <td>{{$coupon->value}}</td>
                            <td>{{$coupon->cart_value}}</td>
                            
                            
                            
                            <td>
                                <a href="{{route('coupon.edit', ['id' => $coupon->id])}}" class="btn btn-success btn-sm">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="{{route('coupon.delete', ['id' => $coupon->id])}}" class="btn btn-danger btn-sm" onclick="return confirm('are you sure to delete this..');">
                                    <i class="fa fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection
