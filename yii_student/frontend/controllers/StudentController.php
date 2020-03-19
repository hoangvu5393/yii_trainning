<?php
/**
 * User: TheCodeholic
 * Date: 8/29/2019
 * Time: 8:57 AM
 */

namespace frontend\controllers;

use frontend\resource\Student;
use yii\data\ActiveDataProvider;
use yii\rest\ActiveController;

/**
 * Class PostController
 *
 * @author Zura Sekhniashvili <zurasekhniashvili@gmail.com>
 * @package frontend\controllers
 */
class StudentController extends ActiveController
{
    public $modelClass = Student::class;

//    public function actions()
//    {
//        $actions = parent::actions();
//        // disable the "delete" and "create" actions
//        unset($actions['delete'], $actions['create']);
//        // customize the data provider preparation with the "prepareDataProvider()" method
//        $actions['index']['prepareDataProvider'] = [$this, 'prepareDataProvider'];
//
//        return $actions;
//    }
//
//    public function prepareDataProvider()
//    {
//        return new ActiveDataProvider([
//            'query' => Student::find(),
//        ]);
//    }

    public function behaviors()
    {
        return [
            'corsFilter' => [
                'class' => \yii\filters\Cors::className(),
                'cors' => [
                    'Origin' => ['*'],
                    'Access-Control-Request-Method' => ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', 'OPTIONS'],
                    'Access-Control-Request-Headers' => ['*'],
                    'Access-Control-Expose-Headers' => ['*'],
                ],

            ],
        ];
    }

}
