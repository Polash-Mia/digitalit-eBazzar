<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use Illuminate\Http\Request;
use Session;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;


class CheckoutController extends Controller
{
     private $customer;
    private $order;
    private $orderDetail;
    private $cartProducts;
    private $mailBody;

    public function index(Request $request)
    {
       $shipping = $request->shipping;
       $coupon_discount_price = $request->coupon_discount_price;
      if (Session::get('customer_id'))
      {
          $this->customer = Customer::find(Session::get('customer_id'));
      }
      else
      {
          $this->customer = '';
      }

      return view('website.checkout.index', [
        'customer' => $this->customer,
        'shipping' => $shipping,
        'coupon_discount_price'=>$coupon_discount_price
    ]);
    }



    public function checkingcoupon(Request $request){
        $couponcode = $request->input('coupon_code');
        $sum = $request->input('total_for_coupon');
        

       $coupon = Coupon::where('code',$couponcode)->first();

       if($coupon->type == "percent"){
        $discount_price = ($sum /100) * $coupon->value;
       }
       elseif($coupon->type == "fixed"){

        $discount_price =  $coupon->cart_value;
       }

       $grandTotal= $sum - $discount_price;

       return response([
        'discount_price' => $discount_price,
        'grandTotal' => $grandTotal

       ]);

    }
    


    public function newOrder(Request $request)
    {

        // dd($request->all());
        if (Session::get('customer_id'))
        {
            $this->customer = Customer::find(Session::get('customer_id'));
        }
        else
        {
            $request->validate([
                'name'               => 'required',
                'mobile'             => 'required',
                'delivery_address'   => 'required',
            ]);
            $this->customer = Customer::newCustomer($request);

            Session::put('customer_id', $this->customer->id);
            Session::put('customer_name', $this->customer->name);
        }

        if ($request->payment_method == 1)
        {
            $this->order    = Order::newOrder($this->customer, $request);
            OrderDetail::newOrderDetail($this->order);

            $this->cartProducts = \Cart::getContent();
            foreach ($this->cartProducts as $cartProduct)
            {
                \Cart::remove($cartProduct->id);
            }

           
        }
        return redirect('/complete-order')->with('message', 'আপনার অর্ডারটি গ্রহণ করা হয়েছে ৷ অপেক্ষা করুন ৷');
    }

    public function completeOrder()
    {
        return view('website.checkout.complete-order');
    }

}
