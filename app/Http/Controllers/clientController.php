<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class clientController extends Controller
{
    public function chart()
    {
        $this->categories  = Category::all();
        return view('website.cart.index',['categories'=> $this->categories ]);
    }
}
