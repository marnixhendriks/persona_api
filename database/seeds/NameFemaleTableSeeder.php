<?php

use App\NameFemale;
use Illuminate\Database\Seeder;

class NameFemaleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $names = factory(NameFemale::class, 230)->make();

        foreach ($names as $name) {
            repeat:
            try {
                $name->save();
            } catch (\Illuminate\Database\QueryException $e) {
                $name = factory(NameFemale::class)->make();
                goto repeat;
            }
        }
    }
}
