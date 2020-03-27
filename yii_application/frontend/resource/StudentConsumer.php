<?php

namespace frontend\resource;

use mikemadisonweb\rabbitmq\components\ConsumerInterface;
use PhpAmqpLib\Message\AMQPMessage;

class StudentConsumer implements ConsumerInterface
{
    /**
     * @param AMQPMessage $msg
     * @return bool
     */
    public function execute(AMQPMessage $msg)
    {
        $data = $msg->body;
        // Apply your business logic here

        return ConsumerInterface::MSG_ACK;
    }
}