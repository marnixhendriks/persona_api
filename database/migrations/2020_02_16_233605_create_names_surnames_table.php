<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNamesSurnamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('names_surnames', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
        });
        DB::unprepared(File::get(base_path() . '/database/data/names_surnames.sql'));
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('names_surnames');
    }
}
