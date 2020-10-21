<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('me', 'AuthController@me');
    Route::post('reset_password', 'AuthController@reset');

});

Route::group([

    'middleware' => 'api',
    'prefix' => 'poll'

], function ($router) {

    Route::group(['middleware' => 'admin'],function(){
        Route::post('/', 'AuthController@login');
    });

});
