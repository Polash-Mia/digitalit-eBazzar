@extends('website.master')

@section('body')
{{-- <div>{!!$page->description!!}</div> --}}
<div class="container-fluid pt-2 pb-4">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <!--<div class="col-lg-12 col-md-12">-->
        <div class="col-lg-9 col-md-9 mx-auto border border-dark rounded-lg">
            
            <div class="py-5">{!!$page->description!!}</div> 
           
        </div>
        <!-- Shop Sidebar End -->


       
    </div>
</div>



@endsection