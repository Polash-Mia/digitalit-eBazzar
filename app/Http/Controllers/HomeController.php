<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\Pages;
use App\Models\Pagetwo;
use App\Models\Shipping;

class HomeController extends Controller
{

    private $categories,$pages;
   public function index()
   {
    $this->categories  = Category::all();
    $this->pages  = Pages::all();
    $this->pagetwo  = Pagetwo::all();
    // $this->products  = Product::latest()->where('status', '1')->take(8)->get();
    $this->products  = Product::latest()->where('status', '1')->take(16)->get();
    return view('website.home.index',[
        'products'=> $this->products,
        'categories'=> $this->categories,
        'pages'=> $this->pages,
        'pagetwo'=> $this->pagetwo,
     ]);
   }
   public function category($id)
   {
       $this->products = Product::where('category_id', $id)->orderBy('id', 'desc')->get();
       return view('website.category.category',[
           'products' => $this->products
       ]);
   }

 public function page($id)
   {

    $this->page = Pages::find($id);
    return view('website.page.page', ['page' => $this->page]);
   }
   
    public function pagetwo($id)
   {
    
    $this->page = Pagetwo::find($id);
    return view('website.page.pagetwo', ['page' => $this->page]);
   }
   
   public function detail($id)
   {
    $this->categories  = Category::all();
    $this->product=Product::find($id);
    return view('website.detail.index',[
        'product'=>$this->product,
        'categories'=> $this->categories
    ]);
   }

   public function contact()
   {
    $this->categories  = Category::all();
    return view('website.contact.index',['categories'=> $this->categories]);
   }

  public function shop()
   {
    // $this->products=Product::latest()->where('status', '1')->paginate(12);
    $this->products=Product::latest()->where('status', '1')->paginate(16);
    $this->categories  = Category::all();
    $this->shipping= Shipping::all();
    return view('website.shop.index',[
        'categories'=> $this->categories,
        'products'=> $this->products,
        'shipping'=> $this->shipping,
    ]);
   }
   
   public function search(Request $request)
   {

    $searchText    =$request->search;

    $products =Product::where('name', 'like', "%{$searchText}%")->paginate(12);
   
    return view('website.shop.index',[
        'products'=> $products,
        
    ]);
    
   }
}
