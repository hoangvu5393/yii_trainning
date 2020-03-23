<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%applications}}`.
 */
class m200323_084625_create_applications_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%applications}}', [
            'id' => $this->primaryKey(),
            'study_id' => $this->integer()->notNull(),
            'name' => $this->string(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%applications}}');
    }
}
