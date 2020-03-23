<?php
/**
 * User: TheCodeholic
 * Date: 8/29/2019
 * Time: 8:57 AM
 */

namespace frontend\controllers;

use frontend\resource\StudyPlan;

/**
 * Class PostController
 *
 * @author Zura Sekhniashvili <zurasekhniashvili@gmail.com>
 * @package frontend\controllers
 */
class StudyPlanController extends ActiveController
{
    public $modelClass = StudyPlan::class;

}