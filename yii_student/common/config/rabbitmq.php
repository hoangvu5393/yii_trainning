<?php

return [
    'class' => \mikemadisonweb\rabbitmq\Configuration::class,
    //'auto_declare'      => false,
    'connections' => [
        [
            'host' => 'localhost',
            'port' => '5672',
            'user' => 'guest',
            'password' => 'guest',
            'vhost' => '/',
        ],
    ],
    'exchanges' => [
        [
            'name' => 'StudentExchange',
            'type' => 'direct',
        ],
    ],
    'queues' => [
        [
            'name'    => 'StudentQueue',
            'durable' => true,
        ],
    ],
    'bindings' => [
        [
            'queue'    => 'StudentQueue',
            'exchange' => 'StudentExchange',
        ],
    ],
    'producers' => [
        [
            'name' => 'StudentProducer',
        ],
    ],
];