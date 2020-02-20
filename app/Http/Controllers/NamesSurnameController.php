<?php

namespace App\Http\Controllers;

use App\NamesSurname;
use Illuminate\Http\Request;

class NamesSurnameController extends Controller
{
    /*
     * return random surname
     *
     * @return string
     */
    public function getSurname()
    {
        $pickSurname = rand(0,NamesSurname::count());
        return NamesSurname::findOrFail($pickSurname)->surname;
    }


}
