/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.8.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


#include "APIkeyApi.h"
#include "IHttpBody.h"
#include "JsonBody.h"
#include "MultipartFormData.h"

#include <unordered_set>

#include <boost/algorithm/string/replace.hpp>

namespace io {
namespace swagger {
namespace client {
namespace api {

using namespace io::swagger::client::model;

APIkeyApi::APIkeyApi( std::shared_ptr<ApiClient> apiClient )
    : m_ApiClient(apiClient)
{
}

APIkeyApi::~APIkeyApi()
{
}

pplx::task<std::shared_ptr<Object>> APIkeyApi::aPIkey_info()
{


    std::shared_ptr<ApiConfiguration> apiConfiguration( m_ApiClient->getConfiguration() );
    utility::string_t path = utility::conversions::to_string_t("/open-api/api-key");
    
    std::map<utility::string_t, utility::string_t> queryParams;
    std::map<utility::string_t, utility::string_t> headerParams( apiConfiguration->getDefaultHeaders() );
    std::map<utility::string_t, utility::string_t> formParams;
    std::map<utility::string_t, std::shared_ptr<HttpContent>> fileParams;

    std::unordered_set<utility::string_t> responseHttpContentTypes;
    responseHttpContentTypes.insert( utility::conversions::to_string_t("application/json") );

    utility::string_t responseHttpContentType;

    // use JSON if possible
    if ( responseHttpContentTypes.size() == 0 )
    {
        responseHttpContentType = utility::conversions::to_string_t("application/json");
    }
    // JSON
    else if ( responseHttpContentTypes.find(utility::conversions::to_string_t("application/json")) != responseHttpContentTypes.end() )
    {
        responseHttpContentType = utility::conversions::to_string_t("application/json");
    }
    // multipart formdata
    else if( responseHttpContentTypes.find(utility::conversions::to_string_t("multipart/form-data")) != responseHttpContentTypes.end() )
    {
        responseHttpContentType = utility::conversions::to_string_t("multipart/form-data");
    }
    else
    {
        throw ApiException(400, utility::conversions::to_string_t("APIkeyApi->aPIkey_info does not produce any supported media type"));
    }

    headerParams[utility::conversions::to_string_t("Accept")] = responseHttpContentType;

    std::unordered_set<utility::string_t> consumeHttpContentTypes;
    consumeHttpContentTypes.insert( utility::conversions::to_string_t("application/json") );
    consumeHttpContentTypes.insert( utility::conversions::to_string_t("application/x-www-form-urlencoded") );


    std::shared_ptr<IHttpBody> httpBody;
    utility::string_t requestHttpContentType;

    // use JSON if possible
    if ( consumeHttpContentTypes.size() == 0 || consumeHttpContentTypes.find(utility::conversions::to_string_t("application/json")) != consumeHttpContentTypes.end() )
    {
        requestHttpContentType = utility::conversions::to_string_t("application/json");
    }
    // multipart formdata
    else if( consumeHttpContentTypes.find(utility::conversions::to_string_t("multipart/form-data")) != consumeHttpContentTypes.end() )
    {
        requestHttpContentType = utility::conversions::to_string_t("multipart/form-data");
    }
    else
    {
        throw ApiException(415, utility::conversions::to_string_t("APIkeyApi->aPIkey_info does not consume any supported media type"));
    }

    // authentication (apiKey) required
    {
        utility::string_t apiKey = apiConfiguration->getApiKey(utility::conversions::to_string_t("api_key"));
        if ( apiKey.size() > 0 )
        {
            queryParams[utility::conversions::to_string_t("api_key")] = apiKey;
        }
    }
    // authentication (apiSignature) required
    {
        utility::string_t apiKey = apiConfiguration->getApiKey(utility::conversions::to_string_t("sign"));
        if ( apiKey.size() > 0 )
        {
            queryParams[utility::conversions::to_string_t("sign")] = apiKey;
        }
    }
    // authentication (timestamp) required
    {
        utility::string_t apiKey = apiConfiguration->getApiKey(utility::conversions::to_string_t("timestamp"));
        if ( apiKey.size() > 0 )
        {
            queryParams[utility::conversions::to_string_t("timestamp")] = apiKey;
        }
    }

    return m_ApiClient->callApi(path, utility::conversions::to_string_t("GET"), queryParams, httpBody, headerParams, formParams, fileParams, requestHttpContentType)
    .then([=](web::http::http_response response)
    {
        // 1xx - informational : OK
        // 2xx - successful       : OK
        // 3xx - redirection   : OK
        // 4xx - client error  : not OK
        // 5xx - client error  : not OK
        if (response.status_code() >= 400)
        {
            throw ApiException(response.status_code()
                , utility::conversions::to_string_t("error calling aPIkey_info: ") + response.reason_phrase()
                , std::make_shared<std::stringstream>(response.extract_utf8string(true).get()));
        }

        // check response content type
        if(response.headers().has(utility::conversions::to_string_t("Content-Type")))
        {
            utility::string_t contentType = response.headers()[utility::conversions::to_string_t("Content-Type")];
            if( contentType.find(responseHttpContentType) == std::string::npos )
            {
                throw ApiException(500
                    , utility::conversions::to_string_t("error calling aPIkey_info: unexpected response type: ") + contentType
                    , std::make_shared<std::stringstream>(response.extract_utf8string(true).get()));
            }
        }

        return response.extract_string();
    })
    .then([=](utility::string_t response)
    {
        std::shared_ptr<Object> result(nullptr);

        if(responseHttpContentType == utility::conversions::to_string_t("application/json"))
        {
            web::json::value json = web::json::value::parse(response);

            result->fromJson(json);
        }
        // else if(responseHttpContentType == utility::conversions::to_string_t("multipart/form-data"))
        // {
        // TODO multipart response parsing
        // }
        else
        {
            throw ApiException(500
                , utility::conversions::to_string_t("error calling aPIkey_info: unsupported response type"));
        }

        return result;
    });
}

}
}
}
}

