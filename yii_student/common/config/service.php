<?php

return [
    'definitions' => [],
    'singletons' => [
        'rabbitmq.student.consumer' =>  \frontend\resource\StudentConsumer::class,
    ],
];