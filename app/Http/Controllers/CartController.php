<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Darryldecode\Cart\Cart;
use App\Models\Shipping;

class CartController extends Controller
{
    private $product;

   public function index(Request $request, $id)
    {
        $this->product = Product::find($id);
        
        \Cart::add(array (
            'id'        => $this->product->id,
            'name'      => $this->product->name,
            'price'     => $this->product->sellingprice,
            'quantity'  => $request->quantity,
            'attributes'=> [
                'image' => $this->product->image
            ],
        ));
        return redirect('/show-cart');
    }

    public function show()
    {
        if(\Cart::isEmpty()){
            return redirect()->route('shop');
        }else{
            $shipping = Shipping::first();
            return view('website.cart.show', [
                'products' => \Cart::getContent(),
                'shipping' => $shipping
            ]);
        }
        

        
    }

    public function remove($id)
    {
        \Cart::remove($id);
        return redirect()->back()->with('message', 'Cart product info remove successfully.');
    }

    public function update(Request $request, $id)
    {
        \Cart::update($id, [
            'quantity' => [
                'relative' => false,
                'value' => $request->quantity,
            ],
        ]);
        return redirect()->back()->with('message', 'Cart product info update successfully.');
    }
}
