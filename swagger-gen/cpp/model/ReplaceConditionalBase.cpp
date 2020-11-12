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



#include "ReplaceConditionalBase.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

ReplaceConditionalBase::ReplaceConditionalBase()
{
    m_Ret_code = 0.0;
    m_Ret_codeIsSet = false;
    m_Ret_msg = utility::conversions::to_string_t("");
    m_Ret_msgIsSet = false;
    m_Ext_code = utility::conversions::to_string_t("");
    m_Ext_codeIsSet = false;
    m_Ext_info = utility::conversions::to_string_t("");
    m_Ext_infoIsSet = false;
    m_ResultIsSet = false;
    m_Time_now = utility::conversions::to_string_t("");
    m_Time_nowIsSet = false;
}

ReplaceConditionalBase::~ReplaceConditionalBase()
{
}

void ReplaceConditionalBase::validate()
{
    // TODO: implement validation
}

web::json::value ReplaceConditionalBase::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_Ret_codeIsSet)
    {
        val[utility::conversions::to_string_t("ret_code")] = ModelBase::toJson(m_Ret_code);
    }
    if(m_Ret_msgIsSet)
    {
        val[utility::conversions::to_string_t("ret_msg")] = ModelBase::toJson(m_Ret_msg);
    }
    if(m_Ext_codeIsSet)
    {
        val[utility::conversions::to_string_t("ext_code")] = ModelBase::toJson(m_Ext_code);
    }
    if(m_Ext_infoIsSet)
    {
        val[utility::conversions::to_string_t("ext_info")] = ModelBase::toJson(m_Ext_info);
    }
    if(m_ResultIsSet)
    {
        val[utility::conversions::to_string_t("result")] = ModelBase::toJson(m_Result);
    }
    if(m_Time_nowIsSet)
    {
        val[utility::conversions::to_string_t("time_now")] = ModelBase::toJson(m_Time_now);
    }

    return val;
}

void ReplaceConditionalBase::fromJson(web::json::value& val)
{
    if(val.has_field(utility::conversions::to_string_t("ret_code")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("ret_code")];
        if(!fieldValue.is_null())
        {
            setRetCode(ModelBase::doubleFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("ret_msg")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("ret_msg")];
        if(!fieldValue.is_null())
        {
            setRetMsg(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("ext_code")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("ext_code")];
        if(!fieldValue.is_null())
        {
            setExtCode(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("ext_info")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("ext_info")];
        if(!fieldValue.is_null())
        {
            setExtInfo(ModelBase::stringFromJson(fieldValue));
        }
    }
    if(val.has_field(utility::conversions::to_string_t("result")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("result")];
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(fieldValue);
            setResult( newItem );
        }
    }
    if(val.has_field(utility::conversions::to_string_t("time_now")))
    {
        web::json::value& fieldValue = val[utility::conversions::to_string_t("time_now")];
        if(!fieldValue.is_null())
        {
            setTimeNow(ModelBase::stringFromJson(fieldValue));
        }
    }
}

void ReplaceConditionalBase::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(m_Ret_codeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("ret_code"), m_Ret_code));
    }
    if(m_Ret_msgIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("ret_msg"), m_Ret_msg));
        
    }
    if(m_Ext_codeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("ext_code"), m_Ext_code));
        
    }
    if(m_Ext_infoIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("ext_info"), m_Ext_info));
        
    }
    if(m_ResultIsSet)
    {
        if (m_Result.get())
        {
            m_Result->toMultipart(multipart, utility::conversions::to_string_t("result."));
        }
        
    }
    if(m_Time_nowIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("time_now"), m_Time_now));
        
    }
}

void ReplaceConditionalBase::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("ret_code")))
    {
        setRetCode(ModelBase::doubleFromHttpContent(multipart->getContent(utility::conversions::to_string_t("ret_code"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("ret_msg")))
    {
        setRetMsg(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("ret_msg"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("ext_code")))
    {
        setExtCode(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("ext_code"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("ext_info")))
    {
        setExtInfo(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("ext_info"))));
    }
    if(multipart->hasContent(utility::conversions::to_string_t("result")))
    {
        if(multipart->hasContent(utility::conversions::to_string_t("result")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, utility::conversions::to_string_t("result."));
            setResult( newItem );
        }
    }
    if(multipart->hasContent(utility::conversions::to_string_t("time_now")))
    {
        setTimeNow(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("time_now"))));
    }
}

double ReplaceConditionalBase::getRetCode() const
{
    return m_Ret_code;
}


void ReplaceConditionalBase::setRetCode(double value)
{
    m_Ret_code = value;
    m_Ret_codeIsSet = true;
}
bool ReplaceConditionalBase::retCodeIsSet() const
{
    return m_Ret_codeIsSet;
}

void ReplaceConditionalBase::unsetRet_code()
{
    m_Ret_codeIsSet = false;
}

utility::string_t ReplaceConditionalBase::getRetMsg() const
{
    return m_Ret_msg;
}


void ReplaceConditionalBase::setRetMsg(utility::string_t value)
{
    m_Ret_msg = value;
    m_Ret_msgIsSet = true;
}
bool ReplaceConditionalBase::retMsgIsSet() const
{
    return m_Ret_msgIsSet;
}

void ReplaceConditionalBase::unsetRet_msg()
{
    m_Ret_msgIsSet = false;
}

utility::string_t ReplaceConditionalBase::getExtCode() const
{
    return m_Ext_code;
}


void ReplaceConditionalBase::setExtCode(utility::string_t value)
{
    m_Ext_code = value;
    m_Ext_codeIsSet = true;
}
bool ReplaceConditionalBase::extCodeIsSet() const
{
    return m_Ext_codeIsSet;
}

void ReplaceConditionalBase::unsetExt_code()
{
    m_Ext_codeIsSet = false;
}

utility::string_t ReplaceConditionalBase::getExtInfo() const
{
    return m_Ext_info;
}


void ReplaceConditionalBase::setExtInfo(utility::string_t value)
{
    m_Ext_info = value;
    m_Ext_infoIsSet = true;
}
bool ReplaceConditionalBase::extInfoIsSet() const
{
    return m_Ext_infoIsSet;
}

void ReplaceConditionalBase::unsetExt_info()
{
    m_Ext_infoIsSet = false;
}

std::shared_ptr<Object> ReplaceConditionalBase::getResult() const
{
    return m_Result;
}


void ReplaceConditionalBase::setResult(std::shared_ptr<Object> value)
{
    m_Result = value;
    m_ResultIsSet = true;
}
bool ReplaceConditionalBase::resultIsSet() const
{
    return m_ResultIsSet;
}

void ReplaceConditionalBase::unsetResult()
{
    m_ResultIsSet = false;
}

utility::string_t ReplaceConditionalBase::getTimeNow() const
{
    return m_Time_now;
}


void ReplaceConditionalBase::setTimeNow(utility::string_t value)
{
    m_Time_now = value;
    m_Time_nowIsSet = true;
}
bool ReplaceConditionalBase::timeNowIsSet() const
{
    return m_Time_nowIsSet;
}

void ReplaceConditionalBase::unsetTime_now()
{
    m_Time_nowIsSet = false;
}

}
}
}
}

