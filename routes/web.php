<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductGalleryController;
use App\Http\Controllers\TransactionController;
use App\Models\ProductGallery;
use Illuminate\Support\Facades\Route;

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


Route::get('/', [DashboardController::class, 'index'])->middleware(['auth'])->name('dashboard');
require __DIR__ . '/auth.php';


Route::get('products/{id}/gallery', [ProductController::class, 'gallery'])->middleware(['auth'])->name('products.gallery');
Route::resource('products', ProductController::class)->middleware(['auth']);
Route::resource('product-galleries', ProductGalleryController::class)->middleware(['auth']);
Route::get('transactions/{id}/set-status', [TransactionController::class, 'setStatus'])->middleware(['auth'])->name('transactions.status');
Route::resource('transactions', TransactionController::class)->middleware(['auth']);
