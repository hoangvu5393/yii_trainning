<?php
require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/common/models/Student.php';

use common\models\Student;
use PhpAmqpLib\Connection\AMQPStreamConnection;

$connection = new AMQPStreamConnection('localhost', 5672, 'guest', 'guest');
$channel = $connection->channel();
$queueName = 'student';

$channel->queue_declare($queueName, false, false, false, false);

echo " [*] Waiting for messages. To exit press CTRL+C\n";

$callback = function ($msg) {
    $response = json_decode($msg->body, true);
    $student = new Student();
    $student->sync($response);
};

$channel->basic_consume($queueName, '', false, true, false, false, $callback);

while ($channel->is_consuming()) {
    $channel->wait();
}