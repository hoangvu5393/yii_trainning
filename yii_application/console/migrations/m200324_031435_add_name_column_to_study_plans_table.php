<?php

use yii\db\Migration;

/**
 * Handles adding columns to table `{{%study_plans}}`.
 */
class m200324_031435_add_name_column_to_study_plans_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('{{%study_plans}}', 'name', $this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%study_plans}}', 'name');
    }
}
