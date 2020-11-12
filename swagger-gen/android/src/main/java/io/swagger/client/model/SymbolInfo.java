/**
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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SymbolInfo {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("base_currency")
  private String baseCurrency = null;
  @SerializedName("quote_currency")
  private String quoteCurrency = null;
  @SerializedName("price_scale")
  private BigDecimal priceScale = null;
  @SerializedName("price_filter")
  private Object priceFilter = null;
  @SerializedName("lot_size_filter")
  private Object lotSizeFilter = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getBaseCurrency() {
    return baseCurrency;
  }
  public void setBaseCurrency(String baseCurrency) {
    this.baseCurrency = baseCurrency;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getQuoteCurrency() {
    return quoteCurrency;
  }
  public void setQuoteCurrency(String quoteCurrency) {
    this.quoteCurrency = quoteCurrency;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getPriceScale() {
    return priceScale;
  }
  public void setPriceScale(BigDecimal priceScale) {
    this.priceScale = priceScale;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Object getPriceFilter() {
    return priceFilter;
  }
  public void setPriceFilter(Object priceFilter) {
    this.priceFilter = priceFilter;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Object getLotSizeFilter() {
    return lotSizeFilter;
  }
  public void setLotSizeFilter(Object lotSizeFilter) {
    this.lotSizeFilter = lotSizeFilter;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SymbolInfo symbolInfo = (SymbolInfo) o;
    return (this.name == null ? symbolInfo.name == null : this.name.equals(symbolInfo.name)) &&
        (this.baseCurrency == null ? symbolInfo.baseCurrency == null : this.baseCurrency.equals(symbolInfo.baseCurrency)) &&
        (this.quoteCurrency == null ? symbolInfo.quoteCurrency == null : this.quoteCurrency.equals(symbolInfo.quoteCurrency)) &&
        (this.priceScale == null ? symbolInfo.priceScale == null : this.priceScale.equals(symbolInfo.priceScale)) &&
        (this.priceFilter == null ? symbolInfo.priceFilter == null : this.priceFilter.equals(symbolInfo.priceFilter)) &&
        (this.lotSizeFilter == null ? symbolInfo.lotSizeFilter == null : this.lotSizeFilter.equals(symbolInfo.lotSizeFilter));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.baseCurrency == null ? 0: this.baseCurrency.hashCode());
    result = 31 * result + (this.quoteCurrency == null ? 0: this.quoteCurrency.hashCode());
    result = 31 * result + (this.priceScale == null ? 0: this.priceScale.hashCode());
    result = 31 * result + (this.priceFilter == null ? 0: this.priceFilter.hashCode());
    result = 31 * result + (this.lotSizeFilter == null ? 0: this.lotSizeFilter.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SymbolInfo {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  baseCurrency: ").append(baseCurrency).append("\n");
    sb.append("  quoteCurrency: ").append(quoteCurrency).append("\n");
    sb.append("  priceScale: ").append(priceScale).append("\n");
    sb.append("  priceFilter: ").append(priceFilter).append("\n");
    sb.append("  lotSizeFilter: ").append(lotSizeFilter).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
