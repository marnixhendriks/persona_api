<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AgesController extends Controller
{
    /*
     * return year of birth
     *
     * @return int
     */
    public function getYearOfBirth()
    {
        // youngest person is 12, oldest 85
        $yearOfBirth = rand((int)date("Y") - 85, (int)date("Y") - 12);
        return $yearOfBirth;
    }


    /*
     * return year of birth between min and max
     *
     * @param integer $ageMin
     * @param integer $ageMax
     * @return int
     */
    public function getYearOfBirthBetween(int $ageMin, int $ageMax)
    {
        $yearOfBirth = rand((int)date("Y") - $ageMax, (int)date("Y") - $ageMin);
        return $yearOfBirth;
    }

}
