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
 * OrderComment
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-03-25T09:56:53.475406+01:00[Europe/Zurich]")
public class OrderComment {
  public static final String SERIALIZED_NAME_YAGO_TEAM = "yago_team";
  @SerializedName(SERIALIZED_NAME_YAGO_TEAM)
  private Boolean yagoTeam;

  public static final String SERIALIZED_NAME_USER_NAME = "user_name";
  @SerializedName(SERIALIZED_NAME_USER_NAME)
  private String userName;

  public static final String SERIALIZED_NAME_DATE = "date";
  @SerializedName(SERIALIZED_NAME_DATE)
  private OffsetDateTime date;

  public static final String SERIALIZED_NAME_COMMENT = "comment";
  @SerializedName(SERIALIZED_NAME_COMMENT)
  private String comment;

  public OrderComment() { 
  }

  
  public OrderComment(
     Boolean yagoTeam, 
     String userName, 
     OffsetDateTime date
  ) {
    this();
    this.yagoTeam = yagoTeam;
    this.userName = userName;
    this.date = date;
  }

   /**
   * Get yagoTeam
   * @return yagoTeam
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Boolean getYagoTeam() {
    return yagoTeam;
  }




   /**
   * Get userName
   * @return userName
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getUserName() {
    return userName;
  }




   /**
   * Get date
   * @return date
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public OffsetDateTime getDate() {
    return date;
  }




  public OrderComment comment(String comment) {
    
    this.comment = comment;
    return this;
  }

   /**
   * Get comment
   * @return comment
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getComment() {
    return comment;
  }


  public void setComment(String comment) {
    this.comment = comment;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrderComment orderComment = (OrderComment) o;
    return Objects.equals(this.yagoTeam, orderComment.yagoTeam) &&
        Objects.equals(this.userName, orderComment.userName) &&
        Objects.equals(this.date, orderComment.date) &&
        Objects.equals(this.comment, orderComment.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(yagoTeam, userName, date, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrderComment {\n");
    sb.append("    yagoTeam: ").append(toIndentedString(yagoTeam)).append("\n");
    sb.append("    userName: ").append(toIndentedString(userName)).append("\n");
    sb.append("    date: ").append(toIndentedString(date)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
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

