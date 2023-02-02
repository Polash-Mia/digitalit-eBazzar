@extends('website.master')

@section('body')
{{-- <div>{!!$page->description!!}</div> --}}
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <div class="col-lg-12 col-md-12">
            
            <div>{!!$page->description!!}</div> 
           
        </div>
        <!-- Shop Sidebar End -->


       
    </div>
</div>



@endsection