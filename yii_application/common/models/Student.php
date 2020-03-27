<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "students".
 *
 * @property int $id
 * @property string|null $first_name
 * @property string|null $last_name
 * @property string|null $phone
 * @property string|null $email
 * @property string|null $dob
 */
class Student extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'students';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['first_name', 'last_name', 'phone', 'email'], 'required'],
            [['dob', 'application_id'], 'safe'],
            [['first_name', 'last_name', 'phone', 'email'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'phone' => 'Phone',
            'email' => 'Email',
            'dob' => 'Dob',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getApplications()
    {
        return $this->hasMany(Application::className(), ['id' => 'application_id']);
    }

    public function sync($response) {
        $action = $response['action'];
        $data = $response['data'];

        if($action == 'create') {
            $model = new Student();
            $request = Yii::$app->getRequest()->getBodyParams();
            $model->load(json_encode($data), '');
            if($model->save()) {
                echo "created";
            } else {
                echo "fail";
            }
        }
    }
}
