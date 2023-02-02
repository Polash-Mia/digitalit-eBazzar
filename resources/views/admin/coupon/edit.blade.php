@extends('admin.master')

@section('title')
    Add Category
@endsection

@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Add Coupon </h4>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                    <form action="{{route('coupon.update',['id'=>$coupon->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Code </label>
                            <div class="col-sm-9">
                                <input type="text" value="{{$coupon->code}}" name="code" class="form-control" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Type </label>
                            <div class="col-sm-9">                                
                                {{-- <label class="mr-3"> <input type="radio" name="type" value="fixed" checked/> Fixed </label>
                                <label> <input type="radio" name="type" value="percent"/> percent </label> --}}
                                <label class="mr-3"> <input type="radio" {{$coupon->type == "fixed" ? 'checked' : ''}} name="type" value="fixed" /> Fixed </label>
                                <label> <input type="radio" name="type" {{$coupon->type == "percent" ? 'checked' : ''}} value="percent"/> percent </label>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Value </label>
                            <div class="col-sm-9">
                                <input type="text" value="{{$coupon->value}}" name="value" class="form-control" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Cart_Valu </label>
                            <div class="col-sm-9">
                                <input type="text" value="{{$coupon->cart_value}}" name="cart_value" class="form-control" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                     
                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Create New Coupon</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
