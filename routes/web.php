<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homeController;
use App\Http\Controllers\homeController_en;
use App\Http\Controllers\servicioController;
use App\Http\Controllers\clientController;  //Se llama al controlador
use App\Http\Controllers\cotizarController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\AdditionalController;
use App\Http\Controllers\OrderController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
Route::get('/', function () {
    return view('welcome');
});
*/

Route::get('/',[homeController::class,'index'])->name('welcome');
Route::resource('home',homeController::class);
Route::group(['prefix'=>'home','as'=>'home.'],function(){
    Route::post('store',[homeController::class,'store'])->name('store');
    Route::post('guardarChat',[homeController::class,'guardarChat'])->name('guardarChat');
    Route::post('guardarUser',[homeController::class,'guardarUser'])->name('guardarUser');
    Route::get('show',[homeController::class,'show'])->name('show');
});

Route::get('/ingles',[homeController_en::class,'index'])->name('welcome_en');
Route::resource('home',homeController_en::class);
Route::group(['prefix'=>'home','as'=>'home.'],function(){
    Route::post('store',[homeController_en::class,'store'])->name('store');
    Route::post('guardarChat',[homeController_en::class,'guardarChat'])->name('guardarChat');
    Route::post('guardarUser',[homeController_en::class,'guardarUser'])->name('guardarUser');
});


// Route::get('/servicio',[servicioController::class,'index'])->name('servicios');
// Route::resource('servicios',servicioController::class);
// Route::group(['prefix'=>'servicios','as'=>'servicios.'],function(){
//     Route::get('show/{id}',[servicioController::class,'show'])->name('show');
// });

Route::get('/cotizar','cotizarController@DestinationName');

Route::resource('cotizar',cotizarController::class);

Route::group(['prefix'=>'cotizar','as'=>'cotizar.'],function(){
    Route::get('welcome',[cotizarController::class,'welcome'])->name('welcome');
    Route::get('create',[cotizarController::class,'create'])->name('create');
    Route::get('payment', [OrderController::class,'payment'])->name('payment');
    Route::get('dropdownlist',[cotizarController::class,'getPlaces'])->name('getPlaces');
    Route::get('dropdownlist/getDestination/{id}',[cotizarController::class,'getDestination'])->name('getDestination');
});


Route::resource('cliente',clientController::class);
Route::group(['prefix'=>'cliente','as'=>'cliente.'],function(){
    Route::get('welcome',[clientController::class,'welcome'])->name('welcome');
    Route::get('index',[clientController::class, 'index'])->name('index');
    Route::get('create',[clientController::class,'create'])->name('create');
    Route::post('store',[clientController::class,'store'])->name('store');
});

Route::resource('adicional', serviciosadicionalesController::class);
Route::group(['prefix'=>'adicional', 'as'=>'adicional.'], function(){
    Route::get('create',[serviciosadicionalesController::class,'create'])->name(('create'));
});

Route::get('/index', [AdditionalController::class, 'productList'])->name('products.list');
Route::get('cart', [CartController::class, 'cartList'])->name('cart.list');
Route::post('cart', [CartController::class, 'addToCart'])->name('cart.store');
Route::post('update-cart', [CartController::class, 'updateCart'])->name('cart.update');
Route::post('remove', [CartController::class, 'removeCart'])->name('cart.remove');
Route::post('clear', [CartController::class, 'clearAllCart'])->name('cart.clear');
Route::get('dropdownlist',[AdditionalController::class,'getPlaces'])->name('getPlaces');
Route::get('dropdownlist/getDestination/{id}',[AdditionalController::class,'getDestination'])->name('getDestination');
Route::get('dropdownlist/getPrice/{id}/Location/{idlocation}',[AdditionalController::class,'getPrice'])->name('getPrice');
