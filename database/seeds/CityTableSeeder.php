<?php

use App\City;
use Illuminate\Database\Seeder;

class CityTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $cities = factory(City::class, 230)->make();

        foreach ($cities as $city) {
            repeat:
            try {
                $city->save();
            } catch (\Illuminate\Database\QueryException $e) {
                $city = factory(City::class)->make();
                goto repeat;
            }
        }
    }
}
