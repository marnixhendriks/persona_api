<?php

namespace App\Http\Controllers;

use App\NameMale;
use Illuminate\Http\Request;

class NameMaleController extends Controller
{



    public function show(NameMale $id)
    {
        return $id;
    }
}
