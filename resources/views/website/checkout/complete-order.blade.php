@extends('website.master')

@section('body')
  

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-body text-center">
                        <h1>{{Session::get('message')}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection