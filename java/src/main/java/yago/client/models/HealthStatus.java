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

/**
 * HealthStatus
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-02-21T17:02:29.236455048+01:00[Europe/Zurich]")
public class HealthStatus {
  public static final String SERIALIZED_NAME_DB_UP = "db_up";
  @SerializedName(SERIALIZED_NAME_DB_UP)
  private Boolean dbUp;

  public static final String SERIALIZED_NAME_STORAGE_UP = "storage_up";
  @SerializedName(SERIALIZED_NAME_STORAGE_UP)
  private Boolean storageUp;

  public static final String SERIALIZED_NAME_CACHE_UP = "cache_up";
  @SerializedName(SERIALIZED_NAME_CACHE_UP)
  private Boolean cacheUp;

  public HealthStatus() { 
  }

  public HealthStatus dbUp(Boolean dbUp) {
    
    this.dbUp = dbUp;
    return this;
  }

   /**
   * Get dbUp
   * @return dbUp
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Boolean getDbUp() {
    return dbUp;
  }


  public void setDbUp(Boolean dbUp) {
    this.dbUp = dbUp;
  }


  public HealthStatus storageUp(Boolean storageUp) {
    
    this.storageUp = storageUp;
    return this;
  }

   /**
   * Get storageUp
   * @return storageUp
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Boolean getStorageUp() {
    return storageUp;
  }


  public void setStorageUp(Boolean storageUp) {
    this.storageUp = storageUp;
  }


  public HealthStatus cacheUp(Boolean cacheUp) {
    
    this.cacheUp = cacheUp;
    return this;
  }

   /**
   * Get cacheUp
   * @return cacheUp
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Boolean getCacheUp() {
    return cacheUp;
  }


  public void setCacheUp(Boolean cacheUp) {
    this.cacheUp = cacheUp;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HealthStatus healthStatus = (HealthStatus) o;
    return Objects.equals(this.dbUp, healthStatus.dbUp) &&
        Objects.equals(this.storageUp, healthStatus.storageUp) &&
        Objects.equals(this.cacheUp, healthStatus.cacheUp);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dbUp, storageUp, cacheUp);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HealthStatus {\n");
    sb.append("    dbUp: ").append(toIndentedString(dbUp)).append("\n");
    sb.append("    storageUp: ").append(toIndentedString(storageUp)).append("\n");
    sb.append("    cacheUp: ").append(toIndentedString(cacheUp)).append("\n");
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

