<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTitleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('title', function (Blueprint $table) {
            $table->increments('id');
            $table->string('seo_title_home')->nullable();
            $table->string('seo_des_home')->nullable();
            $table->string('seo_key_home')->nullable();
            $table->string('seo_title_about')->nullable();
            $table->string('seo_des_about')->nullable();
            $table->string('seo_key_about')->nullable();
            $table->string('seo_title_services')->nullable();
            $table->string('seo_des_services')->nullable();
            $table->string('seo_key_services')->nullable();
            $table->string('seo_title_blog')->nullable();
            $table->string('seo_des_blog')->nullable();
            $table->string('seo_key_blog')->nullable();
            $table->string('seo_title_case')->nullable();
            $table->string('seo_des_case')->nullable();
            $table->string('seo_key_case')->nullable();
            $table->string('seo_title_contact')->nullable();
            $table->string('seo_des_contact')->nullable();
            $table->string('seo_key_contact')->nullable();
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
        Schema::dropIfExists('title');
    }
}
