/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.8
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.BybitApi) {
      root.BybitApi = {};
    }
    root.BybitApi.ConditionalApi = factory(root.BybitApi.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * Conditional service.
   * @module api/ConditionalApi
   * @version 0.2.10
   */

  /**
   * Constructs a new ConditionalApi. 
   * @alias module:api/ConditionalApi
   * @class
   * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the conditionalCancel operation.
     * @callback module:api/ConditionalApi~conditionalCancelCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Cancel conditional order.
     * @param {String} symbol Contract type.
     * @param {Object} opts Optional parameters
     * @param {String} opts.stopOrderId Order ID of conditional order.
     * @param {String} opts.orderLinkId Agency customized order ID.
     * @param {module:api/ConditionalApi~conditionalCancelCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    this.conditionalCancel = function(symbol, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'symbol' is set
      if (symbol === undefined || symbol === null) {
        throw new Error("Missing the required parameter 'symbol' when calling conditionalCancel");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'stop_order_id': opts['stopOrderId'],
        'order_link_id': opts['orderLinkId'],
        'symbol': symbol
      };

      var authNames = ['apiKey', 'apiSignature', 'timestamp'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = Object;

      return this.apiClient.callApi(
        '/v2/private/stop-order/cancel', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the conditionalCancelAll operation.
     * @callback module:api/ConditionalApi~conditionalCancelAllCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Cancel conditional order.
     * @param {String} symbol Contract type.
     * @param {module:api/ConditionalApi~conditionalCancelAllCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    this.conditionalCancelAll = function(symbol, callback) {
      var postBody = null;

      // verify the required parameter 'symbol' is set
      if (symbol === undefined || symbol === null) {
        throw new Error("Missing the required parameter 'symbol' when calling conditionalCancelAll");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'symbol': symbol
      };

      var authNames = ['apiKey', 'apiSignature', 'timestamp'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = Object;

      return this.apiClient.callApi(
        '/v2/private/stop-order/cancelAll', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the conditionalGetOrders operation.
     * @callback module:api/ConditionalApi~conditionalGetOrdersCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get my conditional order list.
     * @param {String} symbol Contract type
     * @param {Object} opts Optional parameters
     * @param {String} opts.stopOrderStatus Stop order status.
     * @param {Number} opts.limit Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
     * @param {String} opts.direction Search direction. prev: prev page, next: next page. Defaults to next
     * @param {String} opts.cursor Page turning mark，Use return cursor,Sign use origin data, in request please urlencode
     * @param {module:api/ConditionalApi~conditionalGetOrdersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    this.conditionalGetOrders = function(symbol, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'symbol' is set
      if (symbol === undefined || symbol === null) {
        throw new Error("Missing the required parameter 'symbol' when calling conditionalGetOrders");
      }


      var pathParams = {
      };
      var queryParams = {
        'symbol': symbol,
        'stop_order_status': opts['stopOrderStatus'],
        'limit': opts['limit'],
        'direction': opts['direction'],
        'cursor': opts['cursor'],
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['apiKey', 'apiSignature', 'timestamp'];
      var contentTypes = ['application/json', 'application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = Object;

      return this.apiClient.callApi(
        '/v2/private/stop-order/list', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the conditionalNew operation.
     * @callback module:api/ConditionalApi~conditionalNewCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Place a new conditional order.
     * @param {String} side Side.
     * @param {String} symbol Contract type.
     * @param {String} orderType Conditional order type.
     * @param {String} qty Order quantity.
     * @param {String} basePrice Send current market price. It will be used to compare with the value of &#39;stop_px&#39;, to decide whether your conditional order will be triggered by crossing trigger price from upper side or lower side. Mainly used to identify the expected direction of the current conditional order..
     * @param {String} stopPx Trigger price.
     * @param {String} timeInForce Time in force.
     * @param {Object} opts Optional parameters
     * @param {String} opts.price Execution price for conditional order
     * @param {String} opts.triggerBy Trigger price type. Default LastPrice.
     * @param {Boolean} opts.closeOnTrigger close on trigger.
     * @param {String} opts.orderLinkId Customized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique..
     * @param {module:api/ConditionalApi~conditionalNewCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    this.conditionalNew = function(side, symbol, orderType, qty, basePrice, stopPx, timeInForce, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'side' is set
      if (side === undefined || side === null) {
        throw new Error("Missing the required parameter 'side' when calling conditionalNew");
      }

      // verify the required parameter 'symbol' is set
      if (symbol === undefined || symbol === null) {
        throw new Error("Missing the required parameter 'symbol' when calling conditionalNew");
      }

      // verify the required parameter 'orderType' is set
      if (orderType === undefined || orderType === null) {
        throw new Error("Missing the required parameter 'orderType' when calling conditionalNew");
      }

      // verify the required parameter 'qty' is set
      if (qty === undefined || qty === null) {
        throw new Error("Missing the required parameter 'qty' when calling conditionalNew");
      }

      // verify the required parameter 'basePrice' is set
      if (basePrice === undefined || basePrice === null) {
        throw new Error("Missing the required parameter 'basePrice' when calling conditionalNew");
      }

      // verify the required parameter 'stopPx' is set
      if (stopPx === undefined || stopPx === null) {
        throw new Error("Missing the required parameter 'stopPx' when calling conditionalNew");
      }

      // verify the required parameter 'timeInForce' is set
      if (timeInForce === undefined || timeInForce === null) {
        throw new Error("Missing the required parameter 'timeInForce' when calling conditionalNew");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'side': side,
        'symbol': symbol,
        'order_type': orderType,
        'qty': qty,
        'price': opts['price'],
        'base_price': basePrice,
        'stop_px': stopPx,
        'time_in_force': timeInForce,
        'trigger_by': opts['triggerBy'],
        'close_on_trigger': opts['closeOnTrigger'],
        'order_link_id': opts['orderLinkId']
      };

      var authNames = ['apiKey', 'apiSignature', 'timestamp'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = Object;

      return this.apiClient.callApi(
        '/v2/private/stop-order/create', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the conditionalQuery operation.
     * @callback module:api/ConditionalApi~conditionalQueryCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Query real-time stop order information.
     * @param {Object} opts Optional parameters
     * @param {String} opts.stopOrderId Order ID of conditional order.
     * @param {String} opts.orderLinkId Agency customized order ID.
     * @param {String} opts.symbol Contract type.
     * @param {module:api/ConditionalApi~conditionalQueryCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    this.conditionalQuery = function(opts, callback) {
      opts = opts || {};
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
        'stop_order_id': opts['stopOrderId'],
        'order_link_id': opts['orderLinkId'],
        'symbol': opts['symbol'],
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['apiKey', 'apiSignature', 'timestamp'];
      var contentTypes = ['application/json', 'application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = Object;

      return this.apiClient.callApi(
        '/v2/private/stop-order', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the conditionalReplace operation.
     * @callback module:api/ConditionalApi~conditionalReplaceCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Replace conditional order. Only incomplete orders can be modified. 
     * @param {String} symbol Contract type.
     * @param {Object} opts Optional parameters
     * @param {String} opts.stopOrderId Stop order ID.
     * @param {String} opts.orderLinkId Order Link ID.
     * @param {String} opts.pRQty Order quantity.
     * @param {String} opts.pRPrice Order price.
     * @param {String} opts.pRTriggerPrice Trigger price.
     * @param {module:api/ConditionalApi~conditionalReplaceCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    this.conditionalReplace = function(symbol, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'symbol' is set
      if (symbol === undefined || symbol === null) {
        throw new Error("Missing the required parameter 'symbol' when calling conditionalReplace");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'stop_order_id': opts['stopOrderId'],
        'order_link_id': opts['orderLinkId'],
        'symbol': symbol,
        'p_r_qty': opts['pRQty'],
        'p_r_price': opts['pRPrice'],
        'p_r_trigger_price': opts['pRTriggerPrice']
      };

      var authNames = ['apiKey', 'apiSignature', 'timestamp'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = Object;

      return this.apiClient.callApi(
        '/v2/private/stop-order/replace', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
