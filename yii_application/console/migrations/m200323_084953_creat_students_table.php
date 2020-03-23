<?php

use yii\db\Migration;

/**
 * Class m200323_084953_creat_students_table
 */
class m200323_084953_creat_students_table extends Migration
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

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m200323_084953_creat_students_table cannot be reverted.\n";

        return false;
    }
    */
}
