/*
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;

/**
 * Query real-time active order information response
 */
@ApiModel(description = "Query real-time active order information response")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2020-11-12T14:39:31.513+08:00")
public class QueryOrderBase {
  @SerializedName("ret_code")
  private BigDecimal retCode = null;

  @SerializedName("ret_msg")
  private String retMsg = null;

  @SerializedName("ext_code")
  private String extCode = null;

  @SerializedName("ext_info")
  private String extInfo = null;

  @SerializedName("result")
  private Object result = null;

  @SerializedName("time_now")
  private String timeNow = null;

  public QueryOrderBase retCode(BigDecimal retCode) {
    this.retCode = retCode;
    return this;
  }

   /**
   * Get retCode
   * @return retCode
  **/
  @ApiModelProperty(value = "")
  public BigDecimal getRetCode() {
    return retCode;
  }

  public void setRetCode(BigDecimal retCode) {
    this.retCode = retCode;
  }

  public QueryOrderBase retMsg(String retMsg) {
    this.retMsg = retMsg;
    return this;
  }

   /**
   * Get retMsg
   * @return retMsg
  **/
  @ApiModelProperty(value = "")
  public String getRetMsg() {
    return retMsg;
  }

  public void setRetMsg(String retMsg) {
    this.retMsg = retMsg;
  }

  public QueryOrderBase extCode(String extCode) {
    this.extCode = extCode;
    return this;
  }

   /**
   * Get extCode
   * @return extCode
  **/
  @ApiModelProperty(value = "")
  public String getExtCode() {
    return extCode;
  }

  public void setExtCode(String extCode) {
    this.extCode = extCode;
  }

  public QueryOrderBase extInfo(String extInfo) {
    this.extInfo = extInfo;
    return this;
  }

   /**
   * Get extInfo
   * @return extInfo
  **/
  @ApiModelProperty(value = "")
  public String getExtInfo() {
    return extInfo;
  }

  public void setExtInfo(String extInfo) {
    this.extInfo = extInfo;
  }

  public QueryOrderBase result(Object result) {
    this.result = result;
    return this;
  }

   /**
   * Get result
   * @return result
  **/
  @ApiModelProperty(value = "")
  public Object getResult() {
    return result;
  }

  public void setResult(Object result) {
    this.result = result;
  }

  public QueryOrderBase timeNow(String timeNow) {
    this.timeNow = timeNow;
    return this;
  }

   /**
   * Get timeNow
   * @return timeNow
  **/
  @ApiModelProperty(value = "")
  public String getTimeNow() {
    return timeNow;
  }

  public void setTimeNow(String timeNow) {
    this.timeNow = timeNow;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QueryOrderBase queryOrderBase = (QueryOrderBase) o;
    return Objects.equals(this.retCode, queryOrderBase.retCode) &&
        Objects.equals(this.retMsg, queryOrderBase.retMsg) &&
        Objects.equals(this.extCode, queryOrderBase.extCode) &&
        Objects.equals(this.extInfo, queryOrderBase.extInfo) &&
        Objects.equals(this.result, queryOrderBase.result) &&
        Objects.equals(this.timeNow, queryOrderBase.timeNow);
  }

  @Override
  public int hashCode() {
    return Objects.hash(retCode, retMsg, extCode, extInfo, result, timeNow);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QueryOrderBase {\n");
    
    sb.append("    retCode: ").append(toIndentedString(retCode)).append("\n");
    sb.append("    retMsg: ").append(toIndentedString(retMsg)).append("\n");
    sb.append("    extCode: ").append(toIndentedString(extCode)).append("\n");
    sb.append("    extInfo: ").append(toIndentedString(extInfo)).append("\n");
    sb.append("    result: ").append(toIndentedString(result)).append("\n");
    sb.append("    timeNow: ").append(toIndentedString(timeNow)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

