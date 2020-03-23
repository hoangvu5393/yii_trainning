<?php


namespace frontend\controllers;

use Yii;
use frontend\resource\User;
use common\models\LoginForm;
use yii\rest\ActiveController;

class UserController extends ActiveController
{
    public $modelClass = User::class;

    /**
     * Sign up a user.
     *
     * @return mixed
     */
    public function actionAdd()
    {
        $request = Yii::$app->getRequest()->getBodyParams();
        $user = new User();
        $user->username = $request['username'];
        $user->setPassword($request['password']);
        $user->generateAuthKey();
        $user->generateAccessToken();
        return $user->save();
    }
}