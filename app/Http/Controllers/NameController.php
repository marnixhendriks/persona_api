<?php

namespace App\Http\Controllers;

use App\Lastname;
use App\NameFemale;
use App\NameMale;
use Illuminate\Http\Request;

class NameController extends Controller
{
    public function show($sex)
    {
        if($sex == 'M' || $sex == 'm'){
            $pickMaleName = rand(0,NameMale::count());
            $firstName = NameMale::findOrFail($pickMaleName);
        }
        elseif($sex == 'F' || $sex == 'f'){
            $pickFemaleName = rand(0,NameFemale::count());
            $firstName = NameFemale::findOrFail($pickFemaleName);
        }
        else {
            $pickSex = rand(0,1);
            if($pickSex == 0){
                $pickMaleName = rand(0,NameMale::count());
                $firstName = NameMale::findOrFail($pickMaleName);
            } else {
                $pickFemaleName = rand(0,NameFemale::count());
                $firstName = NameFemale::findOrFail($pickFemaleName);
            }
        }

        $pickLastname = rand(0,Lastname::count());
        $pickedLastname = Lastname::findOrFail($pickLastname);
        $fullName = $firstName->name . ' ' . $pickedLastname->name;


        return $fullName;
    }
}
