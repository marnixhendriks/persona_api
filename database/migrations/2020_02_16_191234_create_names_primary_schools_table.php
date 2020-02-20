<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNamesPrimarySchoolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('names_primary_schools', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
        });
        DB::unprepared(File::get(base_path() . '/database/data/names_primary_schools.sql'));
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('names_primary_schools');
    }
}
