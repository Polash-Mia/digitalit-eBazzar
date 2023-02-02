<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pagetwo extends Model
{
    use HasFactory;
     private static $pagetwo;

    public static function newPages($request){

        self::$pagetwo  = new Pagetwo();

        self::$pagetwo->title                 = $request->title;
        self::$pagetwo->slug                  = strtolower(str_replace(' ','-',$request->title));
        self::$pagetwo->description           = $request->description;

        self::$pagetwo->save();

        return self::$pagetwo;
    }
    public static function updatePages($request,$id)
    {
        self::$pagetwo = Pagetwo::find($id);
        self::$pagetwo->title                 = $request->title;
        self::$pagetwo->slug                  = strtolower(str_replace(' ','-',$request->title));
        self::$pagetwo->description           = $request->description;
        
        
        self::$pagetwo->save();

        return self::$pagetwo;

        
    }


    public static function deletepages($id)
    {
        self::$pagetwo=Pagetwo::find($id);
        
    
        self::$pagetwo->delete();
        
    }
}
