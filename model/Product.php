<?php

namespace Primal\CommonTest\Model;
use Primal\CommonTest\Service\PDOFactory;

class Product
{

    /**
     * @var int
     */
    private $id;

    /**
     * @var string
     */
    private $name;

    /**
     * @var string
     */
    private $image;

    /**
     * @var string
     */
    private $description;

    /**
     * @var int
     */
    private $price;

    /**
     * 
     */
    public function __construct(int $id, string $name, string $image, string $description, int $price)
    {

    }

    /**
     * @param int $productId
     * @return Product
     */
    public static function loadFromDatabase(int $productId): ?Product
    {
        $db = PDOFactory::getMysqlConnexion();
        return new Product(0, "", "", "", 0);
    }

}