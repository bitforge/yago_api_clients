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
import org.threeten.bp.OffsetDateTime;

/**
 * StateChanged
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-03-25T09:56:53.475406+01:00[Europe/Zurich]")
public class StateChanged {
  public static final String SERIALIZED_NAME_OLD_STATE = "old_state";
  @SerializedName(SERIALIZED_NAME_OLD_STATE)
  private String oldState;

  public static final String SERIALIZED_NAME_NEW_STATE = "new_state";
  @SerializedName(SERIALIZED_NAME_NEW_STATE)
  private String newState;

  public static final String SERIALIZED_NAME_MODIFIED = "modified";
  @SerializedName(SERIALIZED_NAME_MODIFIED)
  private OffsetDateTime modified;

  public StateChanged() { 
  }

  
  public StateChanged(
     String oldState, 
     String newState, 
     OffsetDateTime modified
  ) {
    this();
    this.oldState = oldState;
    this.newState = newState;
    this.modified = modified;
  }

   /**
   * Get oldState
   * @return oldState
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getOldState() {
    return oldState;
  }




   /**
   * Get newState
   * @return newState
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getNewState() {
    return newState;
  }




   /**
   * Get modified
   * @return modified
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public OffsetDateTime getModified() {
    return modified;
  }




  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StateChanged stateChanged = (StateChanged) o;
    return Objects.equals(this.oldState, stateChanged.oldState) &&
        Objects.equals(this.newState, stateChanged.newState) &&
        Objects.equals(this.modified, stateChanged.modified);
  }

  @Override
  public int hashCode() {
    return Objects.hash(oldState, newState, modified);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StateChanged {\n");
    sb.append("    oldState: ").append(toIndentedString(oldState)).append("\n");
    sb.append("    newState: ").append(toIndentedString(newState)).append("\n");
    sb.append("    modified: ").append(toIndentedString(modified)).append("\n");
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
