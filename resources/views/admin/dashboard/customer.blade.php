@extends('admin.master')
@section('body')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">

                <h4 class="card-title">Default Datatable</h4>
                

                <!--<table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">-->
                <table id="datatable" class="table table-bordered  " >
                    <thead>
                    <tr>
                        <th>SL No.</th>
                        <th>Customer Name</th>
                        <th>mobile</th>
                        <th>Address</th>
                        
                        
                    </tr>
                    </thead>


                    <tbody>
                        @foreach ($customers as $customer)

                        <tr>
                            <td>{{ $loop->iteration}}</td>
                            <td>{{ $customer->name }}</td>                          
                            <td>{{$customer->mobile}}</td>
                            <td>{{$customer->address}}</td>
                            
                            
                        </tr> 
                            
                        @endforeach
                                                                                                                                                  
                
                    </tbody>
                </table>

            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->



@endsection