<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%study_plans}}`.
 */
class m200323_090708_create_study_plans_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%study_plans}}', [
            'id' => $this->primaryKey(),
            'study_plan_json' => $this->json()->null(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%study_plans}}');
    }
}
