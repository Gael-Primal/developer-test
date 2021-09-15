<?php

namespace Primal\CommonTest\Model;

/**
 * 
 */
class Review
{

    /**
     * @var int
     */
    private $id;

    /**
     * @var int
     */
    private $productId;

    /**
     * @var string
     */
    private $author;

    /**
     * @var string
     */
    private $review;

    /**
     * 
     */
    public function __construct(int $id, int $productId, string $author, string $review)
    {

    }

}