<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    private static $customer;

    public static function newCustomer($request)
    {
        self::$customer = new Customer();
        self::$customer->name       = $request->name;
        self::$customer->mobile     = $request->mobile ;
        // self::$customer->password   = bcrypt($request->password);
        self::$customer->address    = $request->delivery_address;   
        self::$customer->save();
        return self::$customer;
    }

   

    public static function newCustomerRegister($request)
    {
        self::$customer = new Customer();
        self::$customer->name       = $request->name;
        self::$customer->address    = $request->address ;
        // self::$customer->password   = bcrypt($request->password);
        self::$customer->mobile     = $request->mobile ;
        self::$customer->save();
        return self::$customer;
    }
}
