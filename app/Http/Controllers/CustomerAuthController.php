<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Models\Customer;

class CustomerAuthController extends Controller
{
    public function register()
    {
        return view('website.auth.register');
    }

    public function login()
    {
        return view('website.auth.login');
    }

    public function signIn(Request $request)
    {
        $this->customer = Customer::where('mobile', $request->mobile)->first();
        Session::put('customer_id', $this->customer->id);
        Session::put('customer_name', $this->customer->name);

        return redirect('/customer-dashboard');
        // if ($this->customer)
        // {
        //     if (password_verify($request->password, $this->customer->password))
        //     {
        //         Session::put('customer_id', $this->customer->id);
        //         Session::put('customer_name', $this->customer->name);

        //         return redirect('/customer-dashboard');
        //     }
        //     else
        //     {
        //         return redirect()->back()->with('message', 'Sorry.. your password is wrong.');
        //     }
        // }
        // else
        // {
        //     return redirect()->back()->with('message', 'Sorry.. your email address is invalid.');
        // }
    }

    public function newCustomer(Request $request)
    {
        $this->customer = Customer::newCustomerRegister($request);

        Session::put('customer_id', $this->customer->id);
        Session::put('customer_name', $this->customer->name);

        return redirect('/customer-dashboard');
    }

    public function logout()
    {
        Session::forget('customer_id');
        Session::forget('customer_name');

        return redirect('/');
    }
}
