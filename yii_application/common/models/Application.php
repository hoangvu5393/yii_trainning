<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "students".
 *
 * @property int $id
 * @property int $study_id
 * @property string name
 */
class Application extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'applications';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['study_id'], 'safe'],
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
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStudyPlans()
    {
        return $this->hasMany(StudyPlan::className(), ['id' => 'study_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStudent()
    {
        return $this->hasOne(Student::className(), ['id' => 'application_id']);
    }

    public function fields()
    {
        return ['id', 'name', 'studyPlans'];
    }
}
