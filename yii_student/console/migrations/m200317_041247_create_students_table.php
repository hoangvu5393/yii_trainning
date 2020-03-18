<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%students}}`.
 */
class m200317_041247_create_students_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%students}}', [
            'id' => $this->primaryKey(),
            'first_name' => $this->string(),
            'last_name' => $this->string(),
            'phone' => $this->string(),
            'email' => $this->string(),
            'dob' => $this->dateTime(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%students}}');
    }
}
