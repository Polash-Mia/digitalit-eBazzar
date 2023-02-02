<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\Product;
use Carbon\Carbon;
use DateTime;
use Illuminate\Http\Request;


class DashboardController extends Controller
{
   public function dashboard()
   {
    
  $this->todayOrder=Order::whereDate('created_at', '=', date('Y-m-d'))->count();
  $this->todayDelivared=Order::where('delivery_status','Complete')->whereDate('created_at', '=', date('Y-m-d'))->count();
      $this->todayPayment=Order::where('payment_status','Complete')->whereDate('created_at', '=', date('Y-m-d'))->count();
  
     $this->totalCustomer= Customer::count();
      $this->totalOrder= Order::count();
      $this->totalProduct= Product::count();

      return view('admin.dashboard.home',[
      'totalCustomer'   =>$this->totalCustomer,
      'totalOrder'      =>$this->totalOrder,
      'totalProduct'    =>$this->totalProduct,
      'todayOrder'      =>$this->todayOrder,
      'todayDelivared'  =>$this->todayDelivared,
      'todayPayment'    =>$this->todayPayment,
   ]);
   
   }
   public function customer()
   {
      $this->customers=Customer::latest()->get();

      return view('admin.dashboard.customer',[
      'customers'=>$this->customers
   ]);

   }
   
   public function getData(){
      $dateCategories = [];
      $orderData = [];
      $month   =   date('m');
      $day     =   date('j');
      $year    =   date('Y');
      for( $i = 1 ; $i<= $day; $i++){
         $dateCategories[] = $i . ", " .  $year;
         $date = $year. "-".$month."-". $i;
         $orderData[$i]      = Order::getOrderOfDay($date);
      }

      return json_decode(json_encode($orderData));
   }
}
