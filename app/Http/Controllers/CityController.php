<?php

namespace App\Http\Controllers;

use App\City;
use Illuminate\Http\Request;

class CityController extends Controller
{
    /*
     * return random city
     *
     * @return string
     */
    public function getRandomCity()
    {
        $pickCity = rand(0,City::count());
        $city = City::findOrFail($pickCity)->city;
        return $city;
    }

}
