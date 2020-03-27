<?php


namespace frontend\controllers;

use common\models\Student;
use Yii;
use frontend\resource\Application;
use frontend\resource\StudyPlan;
use yii\web\Response;

class ApplicationController extends ActiveController
{
    public $modelClass = Application::class;

    public function actions() {
        $actions = parent::actions();

        unset(
            $actions[ 'view' ],
            $actions[ 'options' ],
        );

        return $actions;
    }

    public function actionOptions()
    {
        if (Yii::$app->getRequest()->getMethod() !== 'OPTIONS') {
            Yii::$app->getResponse()->setStatusCode(405);
        }

        $allowed_verbs = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', 'OPTIONS'];
        Yii::$app->getResponse()->getHeaders()->set('Allow', implode(', ', $allowed_verbs));
    }

    public function actionView()
    {
        $id = Yii::$app->getRequest()->getQueryParam('id');
        $application = Application::find()->where(['id' => $id])->with('studyPlans')->one();
        $studyPlans = StudyPlan::find()->all();
        return [
            "application" => $application,
            "study_plans" => $studyPlans
        ];
    }

    public function actionAdd()
    {
        $studyPlans = StudyPlan::find()->all();
        $data = $studyPlans;
        return [
            "study_plans" => $studyPlans
        ];
    }

    public function actionCreateApplication()
    {
        $id = Yii::$app->getRequest()->getQueryParam('id');
        $student = Student::find()->where(['id' => $id])->with('applications')->one();
        $applications = Application::find()->all();
        return [
            "student" => $student,
            "applications" => $applications
        ];
    }
}