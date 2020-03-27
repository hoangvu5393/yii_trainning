<?php
/**
 * User: TheCodeholic
 * Date: 8/29/2019
 * Time: 8:57 AM
 */

namespace frontend\controllers;

use Yii;
use frontend\resource\Student;

/**
 * Class PostController
 *
 * @author Zura Sekhniashvili <zurasekhniashvili@gmail.com>
 * @package frontend\controllers
 */
class StudentController extends ActiveController
{
    public $modelClass = Student::class;

    public function actions() {
        $actions = parent::actions();

        unset(
            $actions[ 'create' ],
            $actions[ 'update' ],
            $actions[ 'delete' ]
        );


        return $actions;
    }

    public function actionCreate() {
        $model = new Student();
        $request = Yii::$app->getRequest()->getBodyParams();

        $model->load($request, '');
        if ($model->save()) {
            $response = Yii::$app->getResponse();
            $response->setStatusCode(201);
            $response->getHeaders();

            $message = json_encode([
                'action' => 'create',
                'data' => $request
            ]);
            $this->sendMessageRabbitmq($message);
        } elseif (!$model->hasErrors()) {
            throw new ServerErrorHttpException('Failed to create the object for unknown reason.');
        }
    }

    protected function sendMessageRabbitmq($message) {
        $producer = \Yii::$app->rabbitmq->getProducer('StudentProducer');
        $msg = $message;
        $producer->publish($msg, 'StudentExchange', '12345');
    }

}
