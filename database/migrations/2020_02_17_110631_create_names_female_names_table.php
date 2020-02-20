<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNamesFemaleNamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('names_female_names', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
        });
        DB::unprepared(File::get(base_path() . '/database/data/names_female_names.sql'));
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('names_female_names');
    }
}
