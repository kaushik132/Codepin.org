<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSampleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sample', function (Blueprint $table) {
            $table->increments('id');
            $table->string('category')->nullable();
            $table->string('module_name')->nullable();
            $table->string('module_title')->nullable();
            $table->string('price')->nullable();
            $table->string('assignment_title')->nullable();
            $table->string('pages')->nullable();
            $table->string('words')->nullable();
            $table->string('image')->nullable();
            $table->text('details')->nullable();
            $table->integer('status')->default('1')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sample');
    }
}
