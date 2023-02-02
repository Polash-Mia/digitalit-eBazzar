<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    use HasFactory;

    private static $coupon;

   
    public static function newCoupon($request)
    {
        self::$coupon  = new Coupon();

        self::$coupon->code          =$request->code;
        self::$coupon->type          =$request->type;
        self::$coupon->value         =$request->value;
        self::$coupon->cart_value    =$request->cart_value;       
        self::$coupon->save();
        

    }

    public static function updateCoupon($request,$id)
    {
        self::$coupon = Coupon::find($id);

        self::$coupon->code          =$request->code;
        self::$coupon->type          =$request->type;
        self::$coupon->value         =$request->value;
        self::$coupon->cart_value    =$request->cart_value;       
        self::$coupon->save();
        
    }


    public static function deleteCoupon($id)
    {
        self::$coupon=Coupon::find($id);  
        self::$coupon->delete();
        
    }
}
