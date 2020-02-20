<?php

namespace App\Http\Controllers;

use App\AgeGroup;
use App\City;
use App\Http\Controllers\NamesController;
use App\Http\Controllers\NamesSurnameController;
use App\Http\Controllers\AgesController;
use App\Http\Controllers\AgeGroupsController;
use App\Http\Controllers\CityController;
use Illuminate\Http\Request;

class PersonaController extends Controller
{

    /*
     * return persona data from certain gender ('m','f' or 'a')
     *
     * @param [string] $gender
     * @param NamesController $names
     * @param AgesController $ages
     * @return array
     */
    public function showByGender(string $gender, NamesController $names, NamesSurnameController $surnames, AgesController $ages, CityController $city)
    {

        // get year of birth
        $yearOfBirth = $ages->getYearOfBirth();

        // get city
        $city = $city->getRandomCity();

        // get first name
        $nameAndGender = $names->getName($gender, $yearOfBirth);

        $firstName = $nameAndGender[0];
        $gotGender = $nameAndGender[1];

        // get surname
        $surname = trim($surnames->getSurname());


        $persona = [
                    'first_name' => $firstName,
                    'last_name' => $surname,
                    'gender' => $gotGender,
                    'year_of_birth' => $yearOfBirth,
                    'city' => $city
                ];

        return $persona;
    }



    /*
     * return persona data from a certain age group (int)
     *
     * @param string $gender
     * @param integer $ageGroupId
     * @param NamesController $names
     * @param AgesController $ages
     * @param CityController $city
     * @return array
     */
    public function show_age_group(string $gender, int $ageGroupId, NamesController $names, NamesSurnameController $surnames, AgesController $ages, CityController $city)
    {
        $ageGroup = AgeGroupsController::show($ageGroupId);
        $ageMin = $ageGroup->pluck("age_min");
        $ageMax = $ageGroup->pluck("age_max");

        $yearOfBirth = $ages->getYearOfBirthBetween($ageMin[0], $ageMax[0]);

        // get city
        $city = $city->getRandomCity();

        // get first name
        $nameAndGender = $names->getName($gender, $yearOfBirth);

        $firstName = $nameAndGender[0];
        $gotGender = $nameAndGender[1];

        // get surname
        $surname = trim($surnames->getSurname());

        $persona = [
            'first_name' => $firstName,
            'last_name' => $surname,
            'gender' => $gotGender,
            'year_of_birth' => $yearOfBirth,
            'city' => $city
        ];

        return $persona;
    }




}
