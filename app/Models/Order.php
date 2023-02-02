<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Session;

class Order extends Model
{
    use HasFactory;
    private static $order;
   public static function newOrder($customer, $request)
    {
         self::$order = new Order();
        self::$order->customer_id       = $customer->id;
        // self::$order->order_total       = Session::get('order_total')-$request->coupon_discount_price;
        self::$order->order_total       = Session::get('order_total');
        
        self::$order->coupon_discount_price    =$request->coupon_discount_price;
        // self::$order->grant_total           =Session::get('order_total')-$request->coupon_discount_price;
        self::$order->shipping_total    =$request->shipping_charge;
        self::$order->delivery_address  = $request->delivery_address;
        self::$order->order_date        = date('Y-m-d');
        self::$order->order_timestamp   = strtotime(date('Y-m-d'));
        self::$order->payment_method    = $request->payment_method;
        self::$order->save();
        return self::$order;
    }


    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class);
    }

    public static function getOrderOfDay($date = "2022-12-8")
    {
        return Order::whereDate('created_at', "=", $date)->count();
    }
}
