<?php

return [
    'class'             => \mikemadisonweb\rabbitmq\Configuration::class,
    //'auto_declare'      => false,
    'connections'       => [
        [
            'host'      => 'localhost',
            'port'      => '5672',
            'user'      => 'guest',
            'password'  => 'guest',
            'vhost'     => '/',
            'heartbeat' => 0,
        ],
    ],
    'exchanges'         => [
        [
            'name' => 'StudentExchange',
            'type' => 'direct',
        ],
    ],
    'queues'            => [
        [
            'name'    => 'StudentQueue',
            'durable' => true,
        ],
    ],
    'bindings'          => [
        [
            'queue'    => 'StudentQueue',
            'exchange' => 'StudentExchange',
        ],
    ],
    'producers'         => [
        [
            'name' => 'StudentProducer',
        ],
    ],
    'consumers'         => [
        [
            'name'      => 'StudentConsumer',
            'callbacks' => [
                'queue-name' => 'rabbitmq.student.consumer',
            ],
        ],
    ],
    'on before_consume' => function ($event)
    {
        echo "before_consume!\n";
    },
    'on after_consume'  => function ($event)
    {
        echo "after_consume!\n";
    },
    'on before_publish' => function ($event)
    {
        echo "before_publish!\n";
    },
    'on after_publish'  => function ($event)
    {
        echo "after_publish!\n";
    },
];