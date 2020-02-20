<?php

namespace App\Http\Controllers;
use App\NamesMaleName;
use App\NamesFemaleName;
use Illuminate\Http\Request;

class NamesController extends Controller
{
    /*
     * Undocumented function
     *
     * @param string $gender
     * @param integer $yearOfBirth
     * @return array
     */
    public function getName(string $gender, int $yearOfBirth)
    {
        //decide which gender to pick
        if($gender == 'M' || $gender == 'm'){
            $nameTable = $this->getMaleName($yearOfBirth);
            $genderPicked = 'm';
        }
        elseif($gender == 'F' || $gender == 'f'){
            $nameTable = $this->getFemaleName($yearOfBirth);
            $genderPicked = 'f';
        }
        elseif($gender == 'A' || $gender == 'a') {
            $pickgender = rand(0,1);
            if($pickgender == 0){
                $nameTable = $this->getMaleName($yearOfBirth);
                $genderPicked = 'm';
            } else {
                $nameTable = $this->getFemaleName($yearOfBirth);
                $genderPicked = 'f';
            }
        }

        $pickNumber = rand(0,count($nameTable));
        $nameGender = [$nameTable[$pickNumber], $genderPicked];

        return $nameGender;
    }


    /*
     * return random male name
     *
     * @param integer $yearOfBirth
     * @return string
     */
    private function getMaleName(int $yearOfBirth)
    {
        // get popular name from year
        return NamesMaleName::where('year_start', '<', $yearOfBirth)
                            ->where('year_end', '>', $yearOfBirth)
                            ->pluck('firstname');
    }


    /*
     * return random female name
     *
     * @param integer $yearOfBirth
     * @return string
     */
    private function getFemaleName(int $yearOfBirth)
    {
        // get popular name from year
        return NamesFemaleName::where('year_start', '<', $yearOfBirth)
                            ->where('year_end', '>', $yearOfBirth)
                            ->pluck('firstname');
    }


}
