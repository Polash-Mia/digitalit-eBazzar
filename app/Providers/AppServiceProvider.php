<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Category;
use PHPUnit\Framework\Constraint\Count;
use Darryldecode\Cart\Cart;
use App\Models\Pages;
use App\Models\Pagetwo;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('*', function ($view) {
            $view->with('categories', Category::all());
             $view->with('pages', Pages::all());
              $view->with('pagetwo', Pagetwo::all());
            $view->with('totalCartProduct', count(\Cart::getContent()));
            $view->with('cartProducts', \Cart::getContent());
        });
    }
}

