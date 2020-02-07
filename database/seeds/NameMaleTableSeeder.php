<?php

use App\NameMale;
use Illuminate\Database\Seeder;

class NameMaleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $names = factory(NameMale::class, 230)->make();

        foreach ($names as $name) {
            repeat:
            try {
                $name->save();
            } catch (\Illuminate\Database\QueryException $e) {
                $name = factory(NameMale::class)->make();
                goto repeat;
            }
        }
    }
}
