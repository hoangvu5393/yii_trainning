<?php
/**
 * User: TheCodeholic
 * Date: 8/29/2019
 * Time: 8:57 AM
 */

namespace frontend\controllers;

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

}
