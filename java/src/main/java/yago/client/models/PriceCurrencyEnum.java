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
import com.google.gson.annotations.SerializedName;

import java.io.IOException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/**
 * Gets or Sets PriceCurrencyEnum
 */
@JsonAdapter(PriceCurrencyEnum.Adapter.class)
public enum PriceCurrencyEnum {
  
  CHF("CHF"),
  
  EUR("EUR"),
  
  GBP("GBP"),
  
  USD("USD");

  private String value;

  PriceCurrencyEnum(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static PriceCurrencyEnum fromValue(String value) {
    for (PriceCurrencyEnum b : PriceCurrencyEnum.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }

  public static class Adapter extends TypeAdapter<PriceCurrencyEnum> {
    @Override
    public void write(final JsonWriter jsonWriter, final PriceCurrencyEnum enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public PriceCurrencyEnum read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return PriceCurrencyEnum.fromValue(value);
    }
  }
}
