<?php

use App\Http\Controllers\NameMaleController;
use App\Lastname;
use App\NameMale;
use Illuminate\Http\Request;

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

Route::get('persona/{gender}/{age_group_id}', 'PersonaController@show_age_group');

Route::get('persona/{gender}', 'PersonaController@showByGender');

Route::get('persona', 'PersonaController@index');
Route::get('ages', 'AgesController@getYearOfBirth');
