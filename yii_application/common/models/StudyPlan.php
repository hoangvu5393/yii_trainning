<?php


namespace common\models;

use Yii;



class StudyPlan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'study_plans';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['study_plan_json'], 'required'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'study_plan_json' => 'Study Plan Json',
        ];
    }
}