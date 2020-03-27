<?php

use yii\db\Migration;

/**
 * Handles adding columns to table `{{%students}}`.
 */
class m200324_104934_add_application_id_column_to_students_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('{{%students}}', 'application_id', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%students}}', 'application_id');
    }
}
