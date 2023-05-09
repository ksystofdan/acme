<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;
use Illuminate\Database\Schema\Blueprint;

class NpModuleTranslationsCreateTranslationsSettingsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::connection('core')->hasTable('translations_settings')) {
            Schema::connection('core')->create(
                'translations_settings',
                function (Blueprint $table) {
                    $table->increments('id');
                    $table->string('name', 255)->index();
                    $table->string('slug', 255)->index();
                    $table->string('domain', 255)->index();
                    $table->tinyInteger('is_active')->default(0)->index();
                    $table->tinyInteger('is_default')->default(0)->index();
                    $table->integer('order')->default(0)->index();
                    $table->timestamps();
                }
            );
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::connection('core')->dropIfExists('translations_settings');
    }
}
