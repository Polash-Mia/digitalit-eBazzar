@extends('admin.master')

<div class="col-lg-6 mx-auto mt-5">
    <div class="card">
        <div class="card-body">
            
            <h4 class="card-title mb-4">Edit Category</h4>

            <form action="{{route('category.update',['id'=>$category->id])}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group row mb-4">
                    <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Category name</label>
                    <div class="col-sm-9">
                      <input type="text" name="name" value="{{$category->name}}" class="form-control" id="horizontal-firstname-input">
                    </div>
                </div>
                <div class="form-group row mb-4">
                    <label for="horizontal-email-input" class="col-sm-3 col-form-label">Category Image</label>
                    <div class="col-sm-9">
                        <input type="file" name="image" class="form-control" id="horizontal-email-input">
                        <img src="{{asset($category->image)}}" alt="">
                    </div>
                </div>
               

                <div class="form-group row justify-content-end">
                    <div class="col-sm-9">

                        <div>
                            <button type="submit" class="btn btn-primary w-md">Update</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>