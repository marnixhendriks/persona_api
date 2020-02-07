<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\NameFemale;
use Faker\Generator as Faker;

$factory->define(NameFemale::class, function (Faker $faker) {
    return [
        'name' => $faker->firstNameFemale
    ];
});
