<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\NewsController;


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

Route::get('/', function () {
    return view('welcome');
})->middleware('guest');


//news route
Route::get('/news', 'NewsController@index')->name('news');
Route::get('/news/paginate', 'NewsController@paginate')->name('paginate');
Route::get('/search', 'NewsController@searchNews')->name('news.search');
Route::get('/news/search', 'NewsController@searchPaginate')->name('news.search.paginate');
Route::post('/news/store', 'NewsController@store')->name('news.store');


//beenews route
Route::get('/beenews', 'NewsController@beenews')->name('beenews');
Route::get('/beenews/search', 'NewsController@searchBeenews')->name('beenews.search');


//mycollection route
Route::get('/users/{user:username}/collection', 'NewsController@mycollection')->name('mycollection');
Route::delete('/users/{user:username}/collection/{data}/delete', 'NewsController@destroy')->name('mycollection.delete');
Route::get('/users/{user:username}/collection/search', 'NewsController@searchMycollection')->name('mycollection.search');


//authentication route
Auth::routes();
