<?php
/**
 * WithdrawRecords
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * Bybit API
 *
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 * Swagger Codegen version: 2.4.8
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Model;

use \ArrayAccess;
use \Swagger\Client\ObjectSerializer;

/**
 * WithdrawRecords Class Doc Comment
 *
 * @category Class
 * @description Get withdraw records response
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class WithdrawRecords implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'WithdrawRecords';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'id' => 'float',
        'user_id' => 'float',
        'coin' => 'string',
        'status' => 'string',
        'amount' => 'string',
        'fee' => 'string',
        'address' => 'string',
        'tx_id' => 'string',
        'submited_at' => 'string',
        'updated_at' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerFormats = [
        'id' => 'int32',
        'user_id' => 'int32',
        'coin' => null,
        'status' => null,
        'amount' => null,
        'fee' => null,
        'address' => null,
        'tx_id' => null,
        'submited_at' => null,
        'updated_at' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerTypes()
    {
        return self::$swaggerTypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerFormats()
    {
        return self::$swaggerFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'id' => 'id',
        'user_id' => 'user_id',
        'coin' => 'coin',
        'status' => 'status',
        'amount' => 'amount',
        'fee' => 'fee',
        'address' => 'address',
        'tx_id' => 'tx_id',
        'submited_at' => 'submited_at',
        'updated_at' => 'updated_at'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'id' => 'setId',
        'user_id' => 'setUserId',
        'coin' => 'setCoin',
        'status' => 'setStatus',
        'amount' => 'setAmount',
        'fee' => 'setFee',
        'address' => 'setAddress',
        'tx_id' => 'setTxId',
        'submited_at' => 'setSubmitedAt',
        'updated_at' => 'setUpdatedAt'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'id' => 'getId',
        'user_id' => 'getUserId',
        'coin' => 'getCoin',
        'status' => 'getStatus',
        'amount' => 'getAmount',
        'fee' => 'getFee',
        'address' => 'getAddress',
        'tx_id' => 'getTxId',
        'submited_at' => 'getSubmitedAt',
        'updated_at' => 'getUpdatedAt'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$swaggerModelName;
    }

    

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['id'] = isset($data['id']) ? $data['id'] : null;
        $this->container['user_id'] = isset($data['user_id']) ? $data['user_id'] : null;
        $this->container['coin'] = isset($data['coin']) ? $data['coin'] : null;
        $this->container['status'] = isset($data['status']) ? $data['status'] : null;
        $this->container['amount'] = isset($data['amount']) ? $data['amount'] : null;
        $this->container['fee'] = isset($data['fee']) ? $data['fee'] : null;
        $this->container['address'] = isset($data['address']) ? $data['address'] : null;
        $this->container['tx_id'] = isset($data['tx_id']) ? $data['tx_id'] : null;
        $this->container['submited_at'] = isset($data['submited_at']) ? $data['submited_at'] : null;
        $this->container['updated_at'] = isset($data['updated_at']) ? $data['updated_at'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets id
     *
     * @return float
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param float $id id
     *
     * @return $this
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets user_id
     *
     * @return float
     */
    public function getUserId()
    {
        return $this->container['user_id'];
    }

    /**
     * Sets user_id
     *
     * @param float $user_id user_id
     *
     * @return $this
     */
    public function setUserId($user_id)
    {
        $this->container['user_id'] = $user_id;

        return $this;
    }

    /**
     * Gets coin
     *
     * @return string
     */
    public function getCoin()
    {
        return $this->container['coin'];
    }

    /**
     * Sets coin
     *
     * @param string $coin coin
     *
     * @return $this
     */
    public function setCoin($coin)
    {
        $this->container['coin'] = $coin;

        return $this;
    }

    /**
     * Gets status
     *
     * @return string
     */
    public function getStatus()
    {
        return $this->container['status'];
    }

    /**
     * Sets status
     *
     * @param string $status status
     *
     * @return $this
     */
    public function setStatus($status)
    {
        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets amount
     *
     * @return string
     */
    public function getAmount()
    {
        return $this->container['amount'];
    }

    /**
     * Sets amount
     *
     * @param string $amount amount
     *
     * @return $this
     */
    public function setAmount($amount)
    {
        $this->container['amount'] = $amount;

        return $this;
    }

    /**
     * Gets fee
     *
     * @return string
     */
    public function getFee()
    {
        return $this->container['fee'];
    }

    /**
     * Sets fee
     *
     * @param string $fee fee
     *
     * @return $this
     */
    public function setFee($fee)
    {
        $this->container['fee'] = $fee;

        return $this;
    }

    /**
     * Gets address
     *
     * @return string
     */
    public function getAddress()
    {
        return $this->container['address'];
    }

    /**
     * Sets address
     *
     * @param string $address address
     *
     * @return $this
     */
    public function setAddress($address)
    {
        $this->container['address'] = $address;

        return $this;
    }

    /**
     * Gets tx_id
     *
     * @return string
     */
    public function getTxId()
    {
        return $this->container['tx_id'];
    }

    /**
     * Sets tx_id
     *
     * @param string $tx_id tx_id
     *
     * @return $this
     */
    public function setTxId($tx_id)
    {
        $this->container['tx_id'] = $tx_id;

        return $this;
    }

    /**
     * Gets submited_at
     *
     * @return string
     */
    public function getSubmitedAt()
    {
        return $this->container['submited_at'];
    }

    /**
     * Sets submited_at
     *
     * @param string $submited_at submited_at
     *
     * @return $this
     */
    public function setSubmitedAt($submited_at)
    {
        $this->container['submited_at'] = $submited_at;

        return $this;
    }

    /**
     * Gets updated_at
     *
     * @return string
     */
    public function getUpdatedAt()
    {
        return $this->container['updated_at'];
    }

    /**
     * Sets updated_at
     *
     * @param string $updated_at updated_at
     *
     * @return $this
     */
    public function setUpdatedAt($updated_at)
    {
        $this->container['updated_at'] = $updated_at;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) { // use JSON pretty print
            return json_encode(
                ObjectSerializer::sanitizeForSerialization($this),
                JSON_PRETTY_PRINT
            );
        }

        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


