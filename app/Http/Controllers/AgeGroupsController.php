<?php

namespace App\Http\Controllers;

use App\AgeGroup;
use Illuminate\Http\Request;

class AgeGroupsController extends Controller
{

    /*
     * get row of given Id from age group
     *
     * @param integer $groupId
     * @return array
     */
    public static function show(int $groupId)
    {
        $agesGrouped = AgeGroup::where('id', '=', $groupId);

        return $agesGrouped;
    }

}
