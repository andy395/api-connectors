//
// WalletAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class WalletAPI {
    /**
     Asset Exchange Records
     
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     - parameter from: (query) Start ID. By default, returns the latest IDs (optional)
     - parameter direction: (query) Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func walletExchangeOrder(limit: Double? = nil, from: Double? = nil, direction: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        walletExchangeOrderWithRequestBuilder(limit: limit, from: from, direction: direction).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Asset Exchange Records
     - GET /v2/private/exchange-order/list
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     - parameter from: (query) Start ID. By default, returns the latest IDs (optional)
     - parameter direction: (query) Search direction. Prev: searches in ascending order from start ID, Next: searches in descending order from start ID. Defaults to Next (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func walletExchangeOrderWithRequestBuilder(limit: Double? = nil, from: Double? = nil, direction: String? = nil) -> RequestBuilder<Any> {
        let path = "/v2/private/exchange-order/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit, 
            "from": from, 
            "direction": direction
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     get wallet balance info
     
     - parameter coin: (query) Coin.enum {BTC,EOS,XRP,ETH,USDT} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func walletGetBalance(coin: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        walletGetBalanceWithRequestBuilder(coin: coin).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     get wallet balance info
     - GET /v2/private/wallet/balance
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter coin: (query) Coin.enum {BTC,EOS,XRP,ETH,USDT} (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func walletGetBalanceWithRequestBuilder(coin: String? = nil) -> RequestBuilder<Any> {
        let path = "/v2/private/wallet/balance"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "coin": coin
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get wallet fund records
     
     - parameter startDate: (query) Start point for result (optional)
     - parameter endDate: (query) End point for result (optional)
     - parameter currency: (query) Currency type (optional)
     - parameter walletFundType: (query) wallet fund type (optional)
     - parameter page: (query) Page. Default getting first page data (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func walletGetRecords(startDate: String? = nil, endDate: String? = nil, currency: String? = nil, walletFundType: String? = nil, page: String? = nil, limit: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        walletGetRecordsWithRequestBuilder(startDate: startDate, endDate: endDate, currency: currency, walletFundType: walletFundType, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get wallet fund records
     - GET /open-api/wallet/fund/records
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter startDate: (query) Start point for result (optional)
     - parameter endDate: (query) End point for result (optional)
     - parameter currency: (query) Currency type (optional)
     - parameter walletFundType: (query) wallet fund type (optional)
     - parameter page: (query) Page. Default getting first page data (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func walletGetRecordsWithRequestBuilder(startDate: String? = nil, endDate: String? = nil, currency: String? = nil, walletFundType: String? = nil, page: String? = nil, limit: String? = nil) -> RequestBuilder<Any> {
        let path = "/open-api/wallet/fund/records"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_date": startDate, 
            "end_date": endDate, 
            "currency": currency, 
            "wallet_fund_type": walletFundType, 
            "page": page, 
            "limit": limit
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get risk limit.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func walletGetRiskLimit(completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        walletGetRiskLimitWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get risk limit.
     - GET /open-api/wallet/risk-limit/list
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<Any> 
     */
    open class func walletGetRiskLimitWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/open-api/wallet/risk-limit/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Set risk limit
     
     - parameter symbol: (form) Contract type. 
     - parameter riskId: (form) Risk ID. Can be found with the Get risk limit list endpoint. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func walletSetRiskLimit(symbol: String, riskId: Double, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        walletSetRiskLimitWithRequestBuilder(symbol: symbol, riskId: riskId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set risk limit
     - POST /open-api/wallet/risk-limit
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter symbol: (form) Contract type. 
     - parameter riskId: (form) Risk ID. Can be found with the Get risk limit list endpoint. 

     - returns: RequestBuilder<Any> 
     */
    open class func walletSetRiskLimitWithRequestBuilder(symbol: String, riskId: Double) -> RequestBuilder<Any> {
        let path = "/open-api/wallet/risk-limit"
        let URLString = SwaggerClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "symbol": symbol,
            "risk_id": riskId
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get wallet fund records
     
     - parameter startDate: (query) Start point for result (optional)
     - parameter endDate: (query) End point for result (optional)
     - parameter coin: (query) Currency (optional)
     - parameter status: (query) Withdraw status (optional)
     - parameter page: (query) Page. Default getting first page data (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func walletWithdraw(startDate: String? = nil, endDate: String? = nil, coin: String? = nil, status: String? = nil, page: String? = nil, limit: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        walletWithdrawWithRequestBuilder(startDate: startDate, endDate: endDate, coin: coin, status: status, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get wallet fund records
     - GET /open-api/wallet/withdraw/list
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter startDate: (query) Start point for result (optional)
     - parameter endDate: (query) End point for result (optional)
     - parameter coin: (query) Currency (optional)
     - parameter status: (query) Withdraw status (optional)
     - parameter page: (query) Page. Default getting first page data (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func walletWithdrawWithRequestBuilder(startDate: String? = nil, endDate: String? = nil, coin: String? = nil, status: String? = nil, page: String? = nil, limit: String? = nil) -> RequestBuilder<Any> {
        let path = "/open-api/wallet/withdraw/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_date": startDate, 
            "end_date": endDate, 
            "coin": coin, 
            "status": status, 
            "page": page, 
            "limit": limit
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
