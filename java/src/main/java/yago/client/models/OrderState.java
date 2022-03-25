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
 * Gets or Sets OrderState
 */
@JsonAdapter(OrderState.Adapter.class)
public enum OrderState {
  
  PREPARING("PREPARING"),
  
  ESTIMATING("ESTIMATING"),
  
  READY_TO_PAY("READY_TO_PAY"),
  
  IN_PROGRESS("IN_PROGRESS"),
  
  IN_REVIEW("IN_REVIEW"),
  
  FINISHED("FINISHED"),
  
  RAGE_QUIT("RAGE_QUIT");

  private String value;

  OrderState(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static OrderState fromValue(String value) {
    for (OrderState b : OrderState.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }

  public static class Adapter extends TypeAdapter<OrderState> {
    @Override
    public void write(final JsonWriter jsonWriter, final OrderState enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public OrderState read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return OrderState.fromValue(value);
    }
  }
}

