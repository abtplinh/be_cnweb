<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DishController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('dishesShowAll', [DishController::class, 'index']);
Route::get('dishes/{id}', [DishController::class, 'show']);
Route::post('dishesCreate', [DishController::class, 'store']);
Route::put('dishesUpdate/{id}', [DishController::class, 'update']);
Route::delete('dishesDelete/{id}', [DishController::class, 'destroy']);
Route::get('searchByName/{name}', [DishController::class, 'searchByName']);





