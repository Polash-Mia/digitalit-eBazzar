<?php

use App\Http\Controllers\AdminOrderController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\clientController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\CustomerDashboardController;
use App\Http\Controllers\ShippingController;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\PagetwoController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CouponController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',[HomeController::class, 'index'])->name('home');
Route::get('/category-product/{id}', [HomeController::class, 'category'])->name('category');
Route::get('/page-item/{id}', [HomeController::class, 'page'])->name('page');
Route::get('/pagetwo-item/{id}', [HomeController::class, 'pagetwo'])->name('pagetwo');
Route::get('/shop',[HomeController::class, 'shop'])->name('shop');
Route::get('/contact',[HomeController::class, 'contact'])->name('contact');
Route::get('/category/product',[HomeController::class, 'category'])->name('product.category');
// Route::get('/product/detail/{id}',[HomeController::class, 'detail'])->name('product.detail');
Route::get('/product/detail/{id}/{slug?}',[HomeController::class, 'detail'])->name('product.detail');

Route::get('/search', [HomeController::class, 'search'])->name('search');






Route::post('/add-to-cart/{id}', [CartController::class, 'index'])->name('add-to-cart');
Route::get('/show-cart', [CartController::class, 'show'])->name('show-cart');
Route::get('/remove-cart-product/{id}', [CartController::class, 'remove'])->name('remove-cart-product');
Route::post('/update-cart-product/{id}', [CartController::class, 'update'])->name('update-cart-product');
Route::post('/checkout', [CheckoutController::class, 'index'])->name('checkout');
Route::post('/new-order', [CheckoutController::class, 'newOrder'])->name('new-order');
Route::get('/complete-order', [CheckoutController::class, 'completeOrder'])->name('complete-order');

Route::post('/check-coupon-code', [CheckoutController::class, 'checkingcoupon'])->name('check-coupon-code');


Route::get('/customer-register', [CustomerAuthController::class, 'register'])->name('customer-register');
Route::post('/new-customer', [CustomerAuthController::class, 'newCustomer'])->name('new-customer');
Route::get('/customer-dashboard', [CustomerDashboardController::class, 'index'])->name('customer-dashboard');

Route::get('/customer-login', [CustomerAuthController::class, 'login'])->name('customer-login');
Route::post('/customer-signin', [CustomerAuthController::class, 'signIn'])->name('customer-signin');
Route::get('/customer-logout', [CustomerAuthController::class, 'logout'])->name('customer-logout');

// Route::get('/product/chart',[clientController::class, 'chart'])->name('product.chart');


Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
    Route::get('/dashboard',[DashboardController::class,'dashboard'] )->name('dashboard');

    Route::get('/customer/list',[DashboardController::class,'customer'] )->name('customer.list');
    Route::get('/getOrderData',[DashboardController::class,'getData'] );

    Route::get('/category/add',[CategoryController::class,'index'] )->name('category.add');
    Route::post('/category/create',[CategoryController::class,'create'] )->name('category.new');
    Route::get('/category/manage',[CategoryController::class,'manage'] )->name('category.manage');
    Route::get('/category/edit/{id}', [CategoryController::class,'edit'])->name('category.edit');
    Route::post('/category/update/{id}', [CategoryController::class,'update'])->name('category.update');
    Route::get('/category/delete/{id}', [CategoryController::class,'delete'])->name('category.delete');


    Route::get('/product/add',[ProductController::class,'index'] )->name('product.add');
    Route::post('/product/create',[ProductController::class,'create'] )->name('product.create');
    Route::get('/product/manage',[ProductController::class,'manage'] )->name('product.manage');
    Route::get('/product/edit/{id}', [ProductController::class,'edit'])->name('product.edit');
    Route::post('/product/update/{id}', [ProductController::class,'update'])->name('product.update');
    Route::get('/product/delete/{id}', [ProductController::class,'delete'])->name('product.delete');
     Route::get('/detail-product/{id}', [ProductController::class, 'detail'])->name('product.details');

    Route::get('/admin-manage-order', [AdminOrderController::class, 'index'])->name('admin-order.manage');
    Route::get('/admin-view-order-detail/{id}', [AdminOrderController::class, 'detail'])->name('admin-order.detail');

    Route::get('/admin-edit-order/{id}', [AdminOrderController::class, 'edit'])->name('admin-order.edit');
    Route::post('/admin-update-order/{id}', [AdminOrderController::class, 'update'])->name('admin-order.update');
    Route::get('/admin-delete-order/{id}', [AdminOrderController::class, 'delete'])->name('admin-order.delete');

    Route::get('/admin-view-order-invoice/{id}', [AdminOrderController::class, 'viewInvoice'])->name('admin-order.view-invoice');
    // Route::get('/admin-download-order-invoice/{id}', [AdminOrderController::class, 'downloadInvoice'])->name('admin-order.download-invoice');
    
    
     Route::get('/shipping/add', [ShippingController::class, 'index'])->name('shipping.add');
    Route::post('/shipping/create', [ShippingController::class, 'create'])->name('shipping.create');
    Route::get('/shipping/manage', [ShippingController::class, 'manage'])->name('shipping.manage');
    Route::get('/shipping/edit/{id}', [ShippingController::class,'edit'])->name('shipping.edit');
    Route::post('/shipping/update/{id}', [ShippingController::class,'update'])->name('shipping.update');
    Route::get('/shipping/delete/{id}', [ShippingController::class,'delete'])->name('shipping.delete');
    
    Route::get('/pages/add', [PagesController::class, 'index'])->name('pages.add');
    Route::post('/pages/create', [PagesController::class, 'create'])->name('pages.create');
    Route::get('/pages/manage', [PagesController::class, 'manage'])->name('pages.manage');
    Route::get('/pages/edit/{id}', [PagesController::class,'edit'])->name('pages.edit');
    Route::post('/pages/update/{id}', [PagesController::class,'update'])->name('pages.update');
    Route::get('/pages/delete/{id}', [PagesController::class,'delete'])->name('pages.delete');
    
    Route::get('/secondpages/add', [PagetwoController::class, 'index'])->name('secondpages.add');
    Route::post('/secondpages/create', [PagetwoController::class, 'create'])->name('secondpages.create');
    Route::get('/secondpages/manage', [PagetwoController::class, 'manage'])->name('secondpages.manage');
    Route::get('/secondpages/edit/{id}', [PagetwoController::class,'edit'])->name('secondpages.edit');
    Route::post('/secondpages/update/{id}', [PagetwoController::class,'update'])->name('secondpages.update');
    Route::get('/secondpages/delete/{id}', [PagetwoController::class,'delete'])->name('secondpages.delete');
    
    
    Route::get('/coupon/add',[CouponController::class,'index'] )->name('coupon.add');
    Route::post('/coupon/create',[CouponController::class,'create'] )->name('coupon.new');
    Route::get('/coupon/manage',[CouponController::class,'manage'] )->name('coupon.manage');
    Route::get('/coupon/edit/{id}', [CouponController::class,'edit'])->name('coupon.edit');
    Route::post('/coupon/update/{id}', [CouponController::class,'update'])->name('coupon.update');
    Route::get('/coupon/delete/{id}', [CouponController::class,'delete'])->name('coupon.delete');



    
    Route::get('/user/add',[UserController::class,'index'] )->name('user.add');
    Route::post('/user/create',[UserController::class,'create'] )->name('user.new');
    Route::get('/user/manage',[UserController::class,'manage'] )->name('user.manage');


});
