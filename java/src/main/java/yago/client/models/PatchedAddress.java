/*
 * Yago API
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
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;
import yago.client.models.CountryEnum;

/**
 * PatchedAddress
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-03-25T09:56:53.475406+01:00[Europe/Zurich]")
public class PatchedAddress {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_EMAIL = "email";
  @SerializedName(SERIALIZED_NAME_EMAIL)
  private String email;

  public static final String SERIALIZED_NAME_PHONE = "phone";
  @SerializedName(SERIALIZED_NAME_PHONE)
  private String phone;

  public static final String SERIALIZED_NAME_LINE1 = "line1";
  @SerializedName(SERIALIZED_NAME_LINE1)
  private String line1;

  public static final String SERIALIZED_NAME_LINE2 = "line2";
  @SerializedName(SERIALIZED_NAME_LINE2)
  private String line2;

  public static final String SERIALIZED_NAME_POSTAL_CODE = "postal_code";
  @SerializedName(SERIALIZED_NAME_POSTAL_CODE)
  private String postalCode;

  public static final String SERIALIZED_NAME_CITY = "city";
  @SerializedName(SERIALIZED_NAME_CITY)
  private String city;

  public static final String SERIALIZED_NAME_STATE = "state";
  @SerializedName(SERIALIZED_NAME_STATE)
  private String state;

  public static final String SERIALIZED_NAME_COUNTRY = "country";
  @SerializedName(SERIALIZED_NAME_COUNTRY)
  private CountryEnum country;

  public PatchedAddress() { 
  }

  
  public PatchedAddress(
     UUID id
  ) {
    this();
    this.id = id;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public UUID getId() {
    return id;
  }




  public PatchedAddress name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Full person name.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Full person name.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public PatchedAddress email(String email) {
    
    this.email = email;
    return this;
  }

   /**
   * Get email
   * @return email
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getEmail() {
    return email;
  }


  public void setEmail(String email) {
    this.email = email;
  }


  public PatchedAddress phone(String phone) {
    
    this.phone = phone;
    return this;
  }

   /**
   * CH or international format (e.g 079 123 45 67 / +41791234567)
   * @return phone
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "CH or international format (e.g 079 123 45 67 / +41791234567)")

  public String getPhone() {
    return phone;
  }


  public void setPhone(String phone) {
    this.phone = phone;
  }


  public PatchedAddress line1(String line1) {
    
    this.line1 = line1;
    return this;
  }

   /**
   * Address line 1 (e.g., street, PO Box, or company name).
   * @return line1
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Address line 1 (e.g., street, PO Box, or company name).")

  public String getLine1() {
    return line1;
  }


  public void setLine1(String line1) {
    this.line1 = line1;
  }


  public PatchedAddress line2(String line2) {
    
    this.line2 = line2;
    return this;
  }

   /**
   * Address line 2 (e.g., apartment, suite, unit, or building).
   * @return line2
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Address line 2 (e.g., apartment, suite, unit, or building).")

  public String getLine2() {
    return line2;
  }


  public void setLine2(String line2) {
    this.line2 = line2;
  }


  public PatchedAddress postalCode(String postalCode) {
    
    this.postalCode = postalCode;
    return this;
  }

   /**
   * Postal code.
   * @return postalCode
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Postal code.")

  public String getPostalCode() {
    return postalCode;
  }


  public void setPostalCode(String postalCode) {
    this.postalCode = postalCode;
  }


  public PatchedAddress city(String city) {
    
    this.city = city;
    return this;
  }

   /**
   * City, district, suburb, town, or village.
   * @return city
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "City, district, suburb, town, or village.")

  public String getCity() {
    return city;
  }


  public void setCity(String city) {
    this.city = city;
  }


  public PatchedAddress state(String state) {
    
    this.state = state;
    return this;
  }

   /**
   * State, county, province, or region.
   * @return state
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "State, county, province, or region.")

  public String getState() {
    return state;
  }


  public void setState(String state) {
    this.state = state;
  }


  public PatchedAddress country(CountryEnum country) {
    
    this.country = country;
    return this;
  }

   /**
   * Get country
   * @return country
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public CountryEnum getCountry() {
    return country;
  }


  public void setCountry(CountryEnum country) {
    this.country = country;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PatchedAddress patchedAddress = (PatchedAddress) o;
    return Objects.equals(this.id, patchedAddress.id) &&
        Objects.equals(this.name, patchedAddress.name) &&
        Objects.equals(this.email, patchedAddress.email) &&
        Objects.equals(this.phone, patchedAddress.phone) &&
        Objects.equals(this.line1, patchedAddress.line1) &&
        Objects.equals(this.line2, patchedAddress.line2) &&
        Objects.equals(this.postalCode, patchedAddress.postalCode) &&
        Objects.equals(this.city, patchedAddress.city) &&
        Objects.equals(this.state, patchedAddress.state) &&
        Objects.equals(this.country, patchedAddress.country);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, email, phone, line1, line2, postalCode, city, state, country);
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
    sb.append("class PatchedAddress {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    line1: ").append(toIndentedString(line1)).append("\n");
    sb.append("    line2: ").append(toIndentedString(line2)).append("\n");
    sb.append("    postalCode: ").append(toIndentedString(postalCode)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
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

