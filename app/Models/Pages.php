<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pages extends Model
{
    use HasFactory;
    private static $pages;

    public static function newPages($request){

        self::$pages  = new Pages();

        self::$pages->title                 = $request->title;
        self::$pages->slug                  = strtolower(str_replace(' ','-',$request->title));
        self::$pages->description           = $request->description;

        self::$pages->save();

        return self::$pages;
    }
    public static function updatePages($request,$id)
    {
        self::$pages = Pages::find($id);
        
       
        
        self::$pages->title                 = $request->title;
        self::$pages->slug                  = strtolower(str_replace(' ','-',$request->title));
        self::$pages->description           = $request->description;
        
        
        self::$pages->save();

        return self::$pages;

        
    }


    public static function deletepages($id)
    {
        self::$pages=Pages::find($id);
        
    
        self::$pages->delete();
        
    }
}
