<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use Illuminate\Http\Request;

class CouponController extends Controller
{
    private $coupon,$coupons;
    public function index()
    {
        return view('admin.coupon.index');
    }

    public function create(Request $request)
    {
        Coupon:: newCoupon($request);
        return redirect()->back()->with('message','Coupon Info Create Successfully');
    }

    public function manage()
    {
        $this->coupons  = Coupon::all();
        return view('admin.coupon.manage',['coupons'=> $this->coupons ]);
    }

    public function edit($id)
    {
        $this->coupon  = Coupon::find($id);
        return view('admin.coupon.edit',['coupon'=> $this->coupon]);
    }

    public function update(Request $request,$id)
    {
        Coupon::updateCoupon($request,$id);
        return redirect('/coupon/manage')->with('message','coupon Info Update Successfully');
    }
    public function delete($id)
    {
        Coupon::deleteCoupon($id);
        return redirect('/coupon/manage')->with('message','coupon Info Delete Successfully');
    }
}
