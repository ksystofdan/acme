<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

use Illuminate\Database\Schema\Blueprint;

class NpModuleTranslationsCreateTranslationsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::connection('core')->hasTable('translations')) {
            Schema::connection('core')->create(
                'translations',
                function (Blueprint $table) {

                    $table->increments('id');
                    $table->string('key', 255)->index();

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
        Schema::connection('core')->dropIfExists('translations');
    }
}
