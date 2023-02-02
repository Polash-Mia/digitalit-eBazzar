@extends('admin.master')
@section('body')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">

                <h4 class="card-title">Default Datatable</h4>
                

                {{-- <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;"> --}}
                <table id="datatable" class="table table-bordered  " >
                    <thead>
                    <tr>
                        <th>SL No.</th>
                        <th>Page title</th>
                        <th>Page Slug</th>
                        <th>Page Description</th>                                               
                        <th>Action</th>                        
                    </tr>
                    </thead>
                    <tbody>

                        @foreach ($pagetwo as $page)

                        <tr>
                            <td>{{ $loop->iteration}}</td>
                            <td>{{ $page->title}}</td>                           
                            <td>{{ $page->slug  }}</td>
                            <td>{!!$page->description!!}</td>
                            
                            
                            <td>   
                                <a href="{{ route('secondpages.edit',['id'=>$page->id]) }}" class="btn btn-success btn-sm">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="{{ route('secondpages.delete',['id'=>$page->id]) }}" class="btn btn-danger   btn-sm"
                                    onclick="return confirm('Are You Sure to Delete this.')">
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