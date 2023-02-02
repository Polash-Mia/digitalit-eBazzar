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
                    <form action="{{route('coupon.new')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Code </label>
                            <div class="col-sm-9">
                                <input type="text" name="code" class="form-control" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Type </label>
                            <div class="col-sm-9">
                                {{-- <select name="" id="" name="type" class="form-control" required>
                                    <option value="" disabled selected> -- Select Type  -- </option>
                                    <option value="fixed">Fixed</option>
                                    <option value="percent">Percent</option>
                                </select> --}}
                                <label class="mr-3"> <input type="radio" name="type" value="fixed" checked/> Fixed </label>
                                <label> <input type="radio" name="type" value="percent"/> percent </label>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Value </label>
                            <div class="col-sm-9">
                                <input type="text" name="value" class="form-control" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Cart_Valu </label>
                            <div class="col-sm-9">
                                <input type="text" name="cart_value" class="form-control" id="horizontal-firstname-input"/>
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
