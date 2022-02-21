/*
 * Genie API
 * Augemented Reality Made Easy.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: hello@genie-ar.ch
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package yago.client.models;

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
import org.openapitools.jackson.nullable.JsonNullable;

/**
 * Nested
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-02-21T17:02:29.236455048+01:00[Europe/Zurich]")
public class Nested {
  public static final String SERIALIZED_NAME_KEY = "key";
  @SerializedName(SERIALIZED_NAME_KEY)
  private String key;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private BigDecimal price;

  public static final String SERIALIZED_NAME_PROJECT_QUOTAS = "project_quotas";
  @SerializedName(SERIALIZED_NAME_PROJECT_QUOTAS)
  private Long projectQuotas;

  public static final String SERIALIZED_NAME_MODEL_QUOTAS = "model_quotas";
  @SerializedName(SERIALIZED_NAME_MODEL_QUOTAS)
  private Long modelQuotas;

  public static final String SERIALIZED_NAME_VIEW_QUOTAS = "view_quotas";
  @SerializedName(SERIALIZED_NAME_VIEW_QUOTAS)
  private Long viewQuotas;

  public static final String SERIALIZED_NAME_SEO_OPTIMIZATION = "seo_optimization";
  @SerializedName(SERIALIZED_NAME_SEO_OPTIMIZATION)
  private Boolean seoOptimization;

  public static final String SERIALIZED_NAME_VIEW_REPORTING = "view_reporting";
  @SerializedName(SERIALIZED_NAME_VIEW_REPORTING)
  private Boolean viewReporting;

  public static final String SERIALIZED_NAME_CUSTOM_QR_CODES = "custom_qr_codes";
  @SerializedName(SERIALIZED_NAME_CUSTOM_QR_CODES)
  private Boolean customQrCodes;

  public static final String SERIALIZED_NAME_STRIPE_PRICE_ID = "stripe_price_id";
  @SerializedName(SERIALIZED_NAME_STRIPE_PRICE_ID)
  private String stripePriceId;

  public Nested() { 
  }

  public Nested key(String key) {
    
    this.key = key;
    return this;
  }

   /**
   * Get key
   * @return key
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getKey() {
    return key;
  }


  public void setKey(String key) {
    this.key = key;
  }


  public Nested name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public Nested price(BigDecimal price) {
    
    this.price = price;
    return this;
  }

   /**
   * For display purposes, payment price is defined in stripe product.
   * @return price
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "For display purposes, payment price is defined in stripe product.")

  public BigDecimal getPrice() {
    return price;
  }


  public void setPrice(BigDecimal price) {
    this.price = price;
  }


  public Nested projectQuotas(Long projectQuotas) {
    
    this.projectQuotas = projectQuotas;
    return this;
  }

   /**
   * How many projects are included in this plan.
   * minimum: 0
   * maximum: 9223372036854775807
   * @return projectQuotas
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "How many projects are included in this plan.")

  public Long getProjectQuotas() {
    return projectQuotas;
  }


  public void setProjectQuotas(Long projectQuotas) {
    this.projectQuotas = projectQuotas;
  }


  public Nested modelQuotas(Long modelQuotas) {
    
    this.modelQuotas = modelQuotas;
    return this;
  }

   /**
   * How many models are included in this plan.
   * minimum: 0
   * maximum: 9223372036854775807
   * @return modelQuotas
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "How many models are included in this plan.")

  public Long getModelQuotas() {
    return modelQuotas;
  }


  public void setModelQuotas(Long modelQuotas) {
    this.modelQuotas = modelQuotas;
  }


  public Nested viewQuotas(Long viewQuotas) {
    
    this.viewQuotas = viewQuotas;
    return this;
  }

   /**
   * How many AR views are included in this plan.
   * minimum: 0
   * maximum: 9223372036854775807
   * @return viewQuotas
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "How many AR views are included in this plan.")

  public Long getViewQuotas() {
    return viewQuotas;
  }


  public void setViewQuotas(Long viewQuotas) {
    this.viewQuotas = viewQuotas;
  }


  public Nested seoOptimization(Boolean seoOptimization) {
    
    this.seoOptimization = seoOptimization;
    return this;
  }

   /**
   * Enables SEO tags and sharing previews.
   * @return seoOptimization
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Enables SEO tags and sharing previews.")

  public Boolean getSeoOptimization() {
    return seoOptimization;
  }


  public void setSeoOptimization(Boolean seoOptimization) {
    this.seoOptimization = seoOptimization;
  }


  public Nested viewReporting(Boolean viewReporting) {
    
    this.viewReporting = viewReporting;
    return this;
  }

   /**
   * Allows to view detailed statistics about model views.
   * @return viewReporting
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Allows to view detailed statistics about model views.")

  public Boolean getViewReporting() {
    return viewReporting;
  }


  public void setViewReporting(Boolean viewReporting) {
    this.viewReporting = viewReporting;
  }


  public Nested customQrCodes(Boolean customQrCodes) {
    
    this.customQrCodes = customQrCodes;
    return this;
  }

   /**
   * Allows to visually customie QR Codes when enabled.
   * @return customQrCodes
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Allows to visually customie QR Codes when enabled.")

  public Boolean getCustomQrCodes() {
    return customQrCodes;
  }


  public void setCustomQrCodes(Boolean customQrCodes) {
    this.customQrCodes = customQrCodes;
  }


  public Nested stripePriceId(String stripePriceId) {
    
    this.stripePriceId = stripePriceId;
    return this;
  }

   /**
   * Stripe price used to create a new subscriptions
   * @return stripePriceId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Stripe price used to create a new subscriptions")

  public String getStripePriceId() {
    return stripePriceId;
  }


  public void setStripePriceId(String stripePriceId) {
    this.stripePriceId = stripePriceId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Nested nested = (Nested) o;
    return Objects.equals(this.key, nested.key) &&
        Objects.equals(this.name, nested.name) &&
        Objects.equals(this.price, nested.price) &&
        Objects.equals(this.projectQuotas, nested.projectQuotas) &&
        Objects.equals(this.modelQuotas, nested.modelQuotas) &&
        Objects.equals(this.viewQuotas, nested.viewQuotas) &&
        Objects.equals(this.seoOptimization, nested.seoOptimization) &&
        Objects.equals(this.viewReporting, nested.viewReporting) &&
        Objects.equals(this.customQrCodes, nested.customQrCodes) &&
        Objects.equals(this.stripePriceId, nested.stripePriceId);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(key, name, price, projectQuotas, modelQuotas, viewQuotas, seoOptimization, viewReporting, customQrCodes, stripePriceId);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Nested {\n");
    sb.append("    key: ").append(toIndentedString(key)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    projectQuotas: ").append(toIndentedString(projectQuotas)).append("\n");
    sb.append("    modelQuotas: ").append(toIndentedString(modelQuotas)).append("\n");
    sb.append("    viewQuotas: ").append(toIndentedString(viewQuotas)).append("\n");
    sb.append("    seoOptimization: ").append(toIndentedString(seoOptimization)).append("\n");
    sb.append("    viewReporting: ").append(toIndentedString(viewReporting)).append("\n");
    sb.append("    customQrCodes: ").append(toIndentedString(customQrCodes)).append("\n");
    sb.append("    stripePriceId: ").append(toIndentedString(stripePriceId)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

