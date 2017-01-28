<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('/message', 'MessageController@index');

Route::get('/new', 'MessageController@create');
Route::post('/new', 'MessageController@store');

Route::get('/edit/{id}','MessageController@edit');
Route::post('/edit/{id}','MessageController@update');
Route::get('/delete/{id}','MessageController@destroy');