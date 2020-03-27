<?php


namespace frontend\controllers;

use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBearerAuth;

class ActiveController extends \yii\rest\ActiveController
{
//    public function init()
//    {
//        parent::init();
//        \Yii::$app->user->enableSession = false;
//    }

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $auth = $behaviors['authenticator'];
        unset($behaviors['authenticator']);

        $behaviors['corsFilter'] = [
            'class' => \yii\filters\Cors::className(),
            'cors' => [
                'Origin' => ['*'],
                'Access-Control-Request-Method' => ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', 'OPTIONS'],
                'Access-Control-Request-Headers' => ['*'],
                'Access-Control-Expose-Headers' => ['*'],
                'Access-Control-Max-Age' => 3600,
            ],
        ];

//        $behaviors['authenticator'] = [
//            'class' => CompositeAuth::className(),
//            'authMethods' => [
//                HttpBearerAuth::className(),
//            ],
//        ];

        return $behaviors;
    }

//    protected function verbs()
//    {
//        return [
//            'store-application' => ['PUT','PATCH'],
//            'index' => ['GET', 'HEAD'],
//            'view' => ['GET', 'HEAD'],
//            'create' => ['POST'],
//            'update' => ['PUT', 'PATCH'],
//            'delete' => ['DELETE'],
//        ];
//    }
}