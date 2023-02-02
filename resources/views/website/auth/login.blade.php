@extends('website.master')

@section('body')
    
    <section class="py-5 bg-secondary">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header text-dark font-weight-bold text-center">Login Form</div>
                        <div class="card-body">
                            <h4>{{Session::get('message')}}</h4>
                            <form action="{{route('customer-signin')}}" method="POST">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3 text-dark font-weight-bold">Mobile Number</label>
                                    <div class="col-md-9">
                                        <input type="number" class="w-100" name="mobile" placeholder="Mobile "/>
                                    </div>
                                </div>
                                <!--<div class="row mb-3">-->
                                <!--    <label class="col-md-3 text-dark font-weight-bold">Password</label>-->
                                <!--    <div class="col-md-9">-->
                                <!--        <input type="password" class="w-100" name="password" placeholder="Password"/>-->
                                <!--    </div>-->
                                <!--</div>-->
                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success" name="btn" value="Login"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection