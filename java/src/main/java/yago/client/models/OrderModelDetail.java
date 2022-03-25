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
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;
import org.threeten.bp.OffsetDateTime;
import yago.client.models.OrderModelComment;
import yago.client.models.OrderModelFile;
import yago.client.models.OrderState;

/**
 * OrderModelDetail
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-03-25T09:56:53.475406+01:00[Europe/Zurich]")
public class OrderModelDetail {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_STATE = "state";
  @SerializedName(SERIALIZED_NAME_STATE)
  private OrderState state;

  public static final String SERIALIZED_NAME_WEBSITE = "website";
  @SerializedName(SERIALIZED_NAME_WEBSITE)
  private URI website;

  public static final String SERIALIZED_NAME_WIDTH_MM = "width_mm";
  @SerializedName(SERIALIZED_NAME_WIDTH_MM)
  private Double widthMm;

  public static final String SERIALIZED_NAME_HEIGHT_MM = "height_mm";
  @SerializedName(SERIALIZED_NAME_HEIGHT_MM)
  private Double heightMm;

  public static final String SERIALIZED_NAME_DEPTH_MM = "depth_mm";
  @SerializedName(SERIALIZED_NAME_DEPTH_MM)
  private Double depthMm;

  public static final String SERIALIZED_NAME_MODEL = "model";
  @SerializedName(SERIALIZED_NAME_MODEL)
  private UUID model;

  public static final String SERIALIZED_NAME_CREATED = "created";
  @SerializedName(SERIALIZED_NAME_CREATED)
  private OffsetDateTime created;

  public static final String SERIALIZED_NAME_MODIFIED = "modified";
  @SerializedName(SERIALIZED_NAME_MODIFIED)
  private OffsetDateTime modified;

  public static final String SERIALIZED_NAME_FILES = "files";
  @SerializedName(SERIALIZED_NAME_FILES)
  private List<OrderModelFile> files = new ArrayList<OrderModelFile>();

  public static final String SERIALIZED_NAME_COMMENTS = "comments";
  @SerializedName(SERIALIZED_NAME_COMMENTS)
  private List<OrderModelComment> comments = new ArrayList<OrderModelComment>();

  public OrderModelDetail() { 
  }

  
  public OrderModelDetail(
     Integer id, 
     OrderState state, 
     UUID model, 
     OffsetDateTime created, 
     OffsetDateTime modified
  ) {
    this();
    this.id = id;
    this.state = state;
    this.model = model;
    this.created = created;
    this.modified = modified;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Integer getId() {
    return id;
  }




  public OrderModelDetail name(String name) {
    
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


   /**
   * Get state
   * @return state
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "")

  public OrderState getState() {
    return state;
  }




  public OrderModelDetail website(URI website) {
    
    this.website = website;
    return this;
  }

   /**
   * Get website
   * @return website
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public URI getWebsite() {
    return website;
  }


  public void setWebsite(URI website) {
    this.website = website;
  }


  public OrderModelDetail widthMm(Double widthMm) {
    
    this.widthMm = widthMm;
    return this;
  }

   /**
   * Get widthMm
   * @return widthMm
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getWidthMm() {
    return widthMm;
  }


  public void setWidthMm(Double widthMm) {
    this.widthMm = widthMm;
  }


  public OrderModelDetail heightMm(Double heightMm) {
    
    this.heightMm = heightMm;
    return this;
  }

   /**
   * Get heightMm
   * @return heightMm
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getHeightMm() {
    return heightMm;
  }


  public void setHeightMm(Double heightMm) {
    this.heightMm = heightMm;
  }


  public OrderModelDetail depthMm(Double depthMm) {
    
    this.depthMm = depthMm;
    return this;
  }

   /**
   * Get depthMm
   * @return depthMm
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getDepthMm() {
    return depthMm;
  }


  public void setDepthMm(Double depthMm) {
    this.depthMm = depthMm;
  }


   /**
   * Resulting model after order is finished. Available when state is IN_PROGRESS.
   * @return model
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(required = true, value = "Resulting model after order is finished. Available when state is IN_PROGRESS.")

  public UUID getModel() {
    return model;
  }




   /**
   * Get created
   * @return created
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public OffsetDateTime getCreated() {
    return created;
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




  public OrderModelDetail files(List<OrderModelFile> files) {
    
    this.files = files;
    return this;
  }

  public OrderModelDetail addFilesItem(OrderModelFile filesItem) {
    this.files.add(filesItem);
    return this;
  }

   /**
   * Get files
   * @return files
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public List<OrderModelFile> getFiles() {
    return files;
  }


  public void setFiles(List<OrderModelFile> files) {
    this.files = files;
  }


  public OrderModelDetail comments(List<OrderModelComment> comments) {
    
    this.comments = comments;
    return this;
  }

  public OrderModelDetail addCommentsItem(OrderModelComment commentsItem) {
    this.comments.add(commentsItem);
    return this;
  }

   /**
   * Get comments
   * @return comments
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public List<OrderModelComment> getComments() {
    return comments;
  }


  public void setComments(List<OrderModelComment> comments) {
    this.comments = comments;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrderModelDetail orderModelDetail = (OrderModelDetail) o;
    return Objects.equals(this.id, orderModelDetail.id) &&
        Objects.equals(this.name, orderModelDetail.name) &&
        Objects.equals(this.state, orderModelDetail.state) &&
        Objects.equals(this.website, orderModelDetail.website) &&
        Objects.equals(this.widthMm, orderModelDetail.widthMm) &&
        Objects.equals(this.heightMm, orderModelDetail.heightMm) &&
        Objects.equals(this.depthMm, orderModelDetail.depthMm) &&
        Objects.equals(this.model, orderModelDetail.model) &&
        Objects.equals(this.created, orderModelDetail.created) &&
        Objects.equals(this.modified, orderModelDetail.modified) &&
        Objects.equals(this.files, orderModelDetail.files) &&
        Objects.equals(this.comments, orderModelDetail.comments);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, state, website, widthMm, heightMm, depthMm, model, created, modified, files, comments);
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
    sb.append("class OrderModelDetail {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    website: ").append(toIndentedString(website)).append("\n");
    sb.append("    widthMm: ").append(toIndentedString(widthMm)).append("\n");
    sb.append("    heightMm: ").append(toIndentedString(heightMm)).append("\n");
    sb.append("    depthMm: ").append(toIndentedString(depthMm)).append("\n");
    sb.append("    model: ").append(toIndentedString(model)).append("\n");
    sb.append("    created: ").append(toIndentedString(created)).append("\n");
    sb.append("    modified: ").append(toIndentedString(modified)).append("\n");
    sb.append("    files: ").append(toIndentedString(files)).append("\n");
    sb.append("    comments: ").append(toIndentedString(comments)).append("\n");
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

