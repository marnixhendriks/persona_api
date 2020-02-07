<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Lastname;
use Faker\Generator as Faker;

$factory->define(Lastname::class, function (Faker $faker) {
    return [
        'name' => $faker->lastName
    ];
});
