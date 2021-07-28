<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\GuestCustomerController;
use App\Http\Controllers\KasirController;

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

Route::get('/', [GuestCustomerController::class, 'welcome'])->name('welcome');
Route::post('/register', [GuestCustomerController::class, 'register'])->name('register');
Route::get('/logout', [GuestCustomerController::class, 'logout'])->name('logout');
Route::get('/menu', [GuestCustomerController::class, 'menu'])->name('menu');
Route::get('/vwmenu', [GuestCustomerController::class, 'vwmenu'])->name('vwmenu');
Route::post('/pesan', [GuestCustomerController::class, 'pesan'])->name('pesan');
Route::post('/pesan/simpan', [GuestCustomerController::class, 'pesan'])->name('pesan-simpan');

Route::get('/kasir/sale', [KasirController::class, 'sale'])->name('kasir-sale');
Route::get('/kasir/rekap', [KasirController::class, 'rekap'])->name('kasir-sale');
Route::post('/kasir/bayar', [KasirController::class, 'bayar'])->name('kasir-bayar');
Route::get('/kasir/print', [KasirController::class, 'printstruk'])->name('kasir-print');

