<?php

use App\Lastname;
use Illuminate\Database\Seeder;

class LastnameTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $names = factory(Lastname::class, 230)->make();

        foreach ($names as $name) {
            repeat:
            try {
                $name->save();
            } catch (\Illuminate\Database\QueryException $e) {
                $name = factory(Lastname::class)->make();
                goto repeat;
            }
        }
    }
}
