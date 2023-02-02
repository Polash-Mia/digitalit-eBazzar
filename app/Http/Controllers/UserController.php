<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index(){
        return view('admin.user.index');
    }

    public function create(Request $request){

        $this->user             = new User();
        $this->user->name       = $request->name;
        $this->user->email      = $request->email;
        $this->user->password   = bcrypt($request->password);
        $this->user->role       = $request->role;
        $this->user->save();

        return redirect()->back()->with('message','New User Info Create Successfully');
    }


    public function manage(){

        $this->users = User::all();
        
        return view('admin.user.manage',[
            'users'=> $this->users
            
         ]);

    }
}
