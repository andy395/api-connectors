# coding: utf-8

"""
    Bybit API

    ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]    # noqa: E501

    OpenAPI spec version: 0.2.10
    Contact: support@bybit.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class PositionsApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def positions_change_margin(self, symbol, margin, **kwargs):  # noqa: E501
        """Update margin.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_change_margin(symbol, margin, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type which you want update its margin (required)
        :param str margin: New margin you want set (required)
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.positions_change_margin_with_http_info(symbol, margin, **kwargs)  # noqa: E501
        else:
            (data) = self.positions_change_margin_with_http_info(symbol, margin, **kwargs)  # noqa: E501
            return data

    def positions_change_margin_with_http_info(self, symbol, margin, **kwargs):  # noqa: E501
        """Update margin.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_change_margin_with_http_info(symbol, margin, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type which you want update its margin (required)
        :param str margin: New margin you want set (required)
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['symbol', 'margin']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method positions_change_margin" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'symbol' is set
        if ('symbol' not in params or
                params['symbol'] is None):
            raise ValueError("Missing the required parameter `symbol` when calling `positions_change_margin`")  # noqa: E501
        # verify the required parameter 'margin' is set
        if ('margin' not in params or
                params['margin'] is None):
            raise ValueError("Missing the required parameter `margin` when calling `positions_change_margin`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'symbol' in params:
            form_params.append(('symbol', params['symbol']))  # noqa: E501
        if 'margin' in params:
            form_params.append(('margin', params['margin']))  # noqa: E501

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/x-www-form-urlencoded'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey', 'apiSignature', 'timestamp']  # noqa: E501

        return self.api_client.call_api(
            '/position/change-position-margin', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def positions_close_pnl_records(self, symbol, **kwargs):  # noqa: E501
        """Get user's closed profit and loss records  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_close_pnl_records(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type (required)
        :param int start_time: Start timestamp point for result, in second
        :param int end_time: End timestamp point for result, in second
        :param str exec_type: Execution type
        :param int page: Page. By default, gets first page of data. Maximum of 50 pages
        :param int limit: Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.positions_close_pnl_records_with_http_info(symbol, **kwargs)  # noqa: E501
        else:
            (data) = self.positions_close_pnl_records_with_http_info(symbol, **kwargs)  # noqa: E501
            return data

    def positions_close_pnl_records_with_http_info(self, symbol, **kwargs):  # noqa: E501
        """Get user's closed profit and loss records  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_close_pnl_records_with_http_info(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type (required)
        :param int start_time: Start timestamp point for result, in second
        :param int end_time: End timestamp point for result, in second
        :param str exec_type: Execution type
        :param int page: Page. By default, gets first page of data. Maximum of 50 pages
        :param int limit: Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['symbol', 'start_time', 'end_time', 'exec_type', 'page', 'limit']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method positions_close_pnl_records" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'symbol' is set
        if ('symbol' not in params or
                params['symbol'] is None):
            raise ValueError("Missing the required parameter `symbol` when calling `positions_close_pnl_records`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'symbol' in params:
            query_params.append(('symbol', params['symbol']))  # noqa: E501
        if 'start_time' in params:
            query_params.append(('start_time', params['start_time']))  # noqa: E501
        if 'end_time' in params:
            query_params.append(('end_time', params['end_time']))  # noqa: E501
        if 'exec_type' in params:
            query_params.append(('exec_type', params['exec_type']))  # noqa: E501
        if 'page' in params:
            query_params.append(('page', params['page']))  # noqa: E501
        if 'limit' in params:
            query_params.append(('limit', params['limit']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json', 'application/x-www-form-urlencoded'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey', 'apiSignature', 'timestamp']  # noqa: E501

        return self.api_client.call_api(
            '/v2/private/trade/closed-pnl/list', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def positions_my_position(self, **kwargs):  # noqa: E501
        """Get my position list.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_my_position(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type which you want update its margin
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.positions_my_position_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.positions_my_position_with_http_info(**kwargs)  # noqa: E501
            return data

    def positions_my_position_with_http_info(self, **kwargs):  # noqa: E501
        """Get my position list.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_my_position_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type which you want update its margin
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['symbol']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method positions_my_position" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'symbol' in params:
            query_params.append(('symbol', params['symbol']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json', 'application/x-www-form-urlencoded'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey', 'apiSignature', 'timestamp']  # noqa: E501

        return self.api_client.call_api(
            '/v2/private/position/list', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def positions_save_leverage(self, symbol, leverage, **kwargs):  # noqa: E501
        """Change user leverage.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_save_leverage(symbol, leverage, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: A symbol which you want change its leverage (required)
        :param str leverage: New leverage you want set (required)
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.positions_save_leverage_with_http_info(symbol, leverage, **kwargs)  # noqa: E501
        else:
            (data) = self.positions_save_leverage_with_http_info(symbol, leverage, **kwargs)  # noqa: E501
            return data

    def positions_save_leverage_with_http_info(self, symbol, leverage, **kwargs):  # noqa: E501
        """Change user leverage.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_save_leverage_with_http_info(symbol, leverage, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: A symbol which you want change its leverage (required)
        :param str leverage: New leverage you want set (required)
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['symbol', 'leverage']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method positions_save_leverage" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'symbol' is set
        if ('symbol' not in params or
                params['symbol'] is None):
            raise ValueError("Missing the required parameter `symbol` when calling `positions_save_leverage`")  # noqa: E501
        # verify the required parameter 'leverage' is set
        if ('leverage' not in params or
                params['leverage'] is None):
            raise ValueError("Missing the required parameter `leverage` when calling `positions_save_leverage`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'symbol' in params:
            form_params.append(('symbol', params['symbol']))  # noqa: E501
        if 'leverage' in params:
            form_params.append(('leverage', params['leverage']))  # noqa: E501

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/x-www-form-urlencoded'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey', 'apiSignature', 'timestamp']  # noqa: E501

        return self.api_client.call_api(
            '/user/leverage/save', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def positions_trading_stop(self, symbol, **kwargs):  # noqa: E501
        """Set Trading-Stop Condition.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_trading_stop(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type (required)
        :param str take_profit: Not less than 0, 0 means cancel TP
        :param str stop_loss: Not less than 0, 0 means cancel SL
        :param str trailing_stop: Not less than 0, 0 means cancel TS
        :param str new_trailing_active: Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.positions_trading_stop_with_http_info(symbol, **kwargs)  # noqa: E501
        else:
            (data) = self.positions_trading_stop_with_http_info(symbol, **kwargs)  # noqa: E501
            return data

    def positions_trading_stop_with_http_info(self, symbol, **kwargs):  # noqa: E501
        """Set Trading-Stop Condition.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.positions_trading_stop_with_http_info(symbol, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str symbol: Contract type (required)
        :param str take_profit: Not less than 0, 0 means cancel TP
        :param str stop_loss: Not less than 0, 0 means cancel SL
        :param str trailing_stop: Not less than 0, 0 means cancel TS
        :param str new_trailing_active: Trailing stop trigger price. Trailing stops are triggered only when the price reaches the specified price. Trailing stops are triggered immediately by default.
        :return: object
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['symbol', 'take_profit', 'stop_loss', 'trailing_stop', 'new_trailing_active']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method positions_trading_stop" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'symbol' is set
        if ('symbol' not in params or
                params['symbol'] is None):
            raise ValueError("Missing the required parameter `symbol` when calling `positions_trading_stop`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'symbol' in params:
            form_params.append(('symbol', params['symbol']))  # noqa: E501
        if 'take_profit' in params:
            form_params.append(('take_profit', params['take_profit']))  # noqa: E501
        if 'stop_loss' in params:
            form_params.append(('stop_loss', params['stop_loss']))  # noqa: E501
        if 'trailing_stop' in params:
            form_params.append(('trailing_stop', params['trailing_stop']))  # noqa: E501
        if 'new_trailing_active' in params:
            form_params.append(('new_trailing_active', params['new_trailing_active']))  # noqa: E501

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/x-www-form-urlencoded'])  # noqa: E501

        # Authentication setting
        auth_settings = ['apiKey', 'apiSignature', 'timestamp']  # noqa: E501

        return self.api_client.call_api(
            '/open-api/position/trading-stop', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='object',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
