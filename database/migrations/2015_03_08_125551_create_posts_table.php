<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('posts',function($table){
			$table->increments('id');
			$table->integer('colors_id')->unsigned();
			$table->foreign('colors_id')->references('id')->on('colors');
			$table->integer('sizes_id')->unsigned();
			$table->foreign('sizes_id')->references('id')->on('sizes');
			$table->integer('brands_id')->unsigned();
			$table->foreign('brands_id')->references('id')->on('brands');
			$table->integer('conditions_id')->unsigned();
			$table->foreign('conditions_id')->references('id')->on('conditions');
			$table->integer('locations_id')->unsigned();
			$table->foreign('locations_id')->references('id')->on('locations');
			$table->integer('shoe_types_id')->unsigned();
			$table->foreign('shoe_types_id')->references('id')->on('shoe_types');
			$table->integer('users_id')->unsigned();
			$table->foreign('users_id')->references('id')->on('users');
			$table->integer('statuses_id')->unsigned();
			$table->foreign('statuses_id')->references('id')->on('statuses');
			$table->string('title',30);
			$table->string('description',45);
			$table->string('frontview',45);
			$table->string('backview',45);
			$table->string('soleview',45);
			$table->string('rightview',45);
			$table->string('leftview',45);
			$table->string('topview',45);
			$table->decimal('price');
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
		Schema::drop('posts');
	}

}