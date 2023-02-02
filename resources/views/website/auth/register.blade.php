@extends('website.master')
@section('body')
    

    <section class="py-5 bg-secondary">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header text-dark font-weight-bold text-center">Register Form</div>
                        <div class="card-body">
                            <form action="{{route('new-customer')}}" method="POST">
                                @csrf
                                <div class="row mb-3">
                                    <label class="col-md-3 text-dark font-weight-bold">Full Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="w-100" name="name" placeholder="Full Name"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-3 text-dark font-weight-bold">Mobile</label>
                                    <div class="col-md-9">
                                        <input type="number" class="w-100" name="mobile" placeholder="Mobile"/>
                                    </div>
                                </div>
                                {{-- <div class="row mb-3">
                                    <label class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email"/>
                                    </div>
                                </div> --}}
                                <!--<div class="row mb-3">-->
                                <!--    <label class="col-md-3 text-dark font-weight-bold">Password</label>-->
                                <!--    <div class="col-md-9">-->
                                <!--        <input type="password" class="w-100" name="password" placeholder="password" />-->
                                <!--    </div>-->
                                <!--</div>-->
                                <div class="row mb-3">
                                    <label class="col-md-3 text-dark font-weight-bold">Address</label>
                                    <div class="col-md-9">
                                        <textarea name="address" class="w-100" placeholder="Address"></textarea>
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <label class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit" class="btn btn-success" name="btn" value="Register"/>
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