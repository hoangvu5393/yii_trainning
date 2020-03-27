<?php


namespace common\models;

use Yii;

/**
 * This is the model class for table "study_plans".
 *
 * @property int $id
 * @property string $name
 * @property longtext $study_plan_json
 */
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
            [['name'], 'required'],
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
            'name' => 'Name',
            'study_plan_json' => 'Study Plan Json',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getApplication()
    {
        return $this->hasOne(Application::className(), ['id' => 'study_id']);
    }
}