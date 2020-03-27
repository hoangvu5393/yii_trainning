<?php
clearstatcache();


require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . "/frontend/resource/Student.php";

use PhpAmqpLib\Connection\AMQPStreamConnection;

spl_autoload_extensions('myAutoLoader');

function myAutoLoader($className) {
    $path = __DIR__ . "/frontend/resource";
    $extension = ".php";
    $fullpath = $path . $className . $extension;
}


class Receive
{
    protected $student;

    public function __construct (Student $student)  {
        $this->student = $student;
    }
    public function receive() {
        $connection = new AMQPStreamConnection('localhost', 5672, 'guest', 'guest');
        $channel = $connection->channel();
        $queueName = 'student';

        $channel->queue_declare($queueName, false, false, false, false);

        echo " [*] Waiting for messages. To exit press CTRL+C\n";

        $callback = function ($msg) {
            $response = json_decode($msg->body, true);
            $this->student->sync($response);
        };

        $channel->basic_consume($queueName, '', false, true, false, false, $callback);

        while ($channel->is_consuming()) {
            $channel->wait();
        }
    }
}

$student = new Student();
$receive = new Receive($student);
$receive->receive();

