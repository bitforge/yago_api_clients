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
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;

/**
 * ModelCreate
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-02-21T17:02:29.236455048+01:00[Europe/Zurich]")
public class ModelCreate {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_PROJECT = "project";
  @SerializedName(SERIALIZED_NAME_PROJECT)
  private UUID project;

  public static final String SERIALIZED_NAME_NAME_DE = "name_de";
  @SerializedName(SERIALIZED_NAME_NAME_DE)
  private String nameDe;

  public static final String SERIALIZED_NAME_NAME_EN = "name_en";
  @SerializedName(SERIALIZED_NAME_NAME_EN)
  private String nameEn;

  public static final String SERIALIZED_NAME_NAME_FR = "name_fr";
  @SerializedName(SERIALIZED_NAME_NAME_FR)
  private String nameFr;

  public static final String SERIALIZED_NAME_NAME_IT = "name_it";
  @SerializedName(SERIALIZED_NAME_NAME_IT)
  private String nameIt;

  public static final String SERIALIZED_NAME_SLUG = "slug";
  @SerializedName(SERIALIZED_NAME_SLUG)
  private String slug;

  public ModelCreate() { 
  }

  
  public ModelCreate(
     UUID id, 
     String slug
  ) {
    this();
    this.id = id;
    this.slug = slug;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public UUID getId() {
    return id;
  }




  public ModelCreate project(UUID project) {
    
    this.project = project;
    return this;
  }

   /**
   * The project this model belongs to. Cannot be changed once created.
   * @return project
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "The project this model belongs to. Cannot be changed once created.")

  public UUID getProject() {
    return project;
  }


  public void setProject(UUID project) {
    this.project = project;
  }


  public ModelCreate nameDe(String nameDe) {
    
    this.nameDe = nameDe;
    return this;
  }

   /**
   * Name will be visible in Android as title.
   * @return nameDe
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Name will be visible in Android as title.")

  public String getNameDe() {
    return nameDe;
  }


  public void setNameDe(String nameDe) {
    this.nameDe = nameDe;
  }


  public ModelCreate nameEn(String nameEn) {
    
    this.nameEn = nameEn;
    return this;
  }

   /**
   * Name will be visible in Android as title.
   * @return nameEn
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Name will be visible in Android as title.")

  public String getNameEn() {
    return nameEn;
  }


  public void setNameEn(String nameEn) {
    this.nameEn = nameEn;
  }


  public ModelCreate nameFr(String nameFr) {
    
    this.nameFr = nameFr;
    return this;
  }

   /**
   * Name will be visible in Android as title.
   * @return nameFr
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Name will be visible in Android as title.")

  public String getNameFr() {
    return nameFr;
  }


  public void setNameFr(String nameFr) {
    this.nameFr = nameFr;
  }


  public ModelCreate nameIt(String nameIt) {
    
    this.nameIt = nameIt;
    return this;
  }

   /**
   * Name will be visible in Android as title.
   * @return nameIt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Name will be visible in Android as title.")

  public String getNameIt() {
    return nameIt;
  }


  public void setNameIt(String nameIt) {
    this.nameIt = nameIt;
  }


   /**
   * Unique Short-URL for embedding. Cannot be changed once created.
   * @return slug
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Unique Short-URL for embedding. Cannot be changed once created.")

  public String getSlug() {
    return slug;
  }




  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ModelCreate modelCreate = (ModelCreate) o;
    return Objects.equals(this.id, modelCreate.id) &&
        Objects.equals(this.project, modelCreate.project) &&
        Objects.equals(this.nameDe, modelCreate.nameDe) &&
        Objects.equals(this.nameEn, modelCreate.nameEn) &&
        Objects.equals(this.nameFr, modelCreate.nameFr) &&
        Objects.equals(this.nameIt, modelCreate.nameIt) &&
        Objects.equals(this.slug, modelCreate.slug);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, project, nameDe, nameEn, nameFr, nameIt, slug);
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
    sb.append("class ModelCreate {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    project: ").append(toIndentedString(project)).append("\n");
    sb.append("    nameDe: ").append(toIndentedString(nameDe)).append("\n");
    sb.append("    nameEn: ").append(toIndentedString(nameEn)).append("\n");
    sb.append("    nameFr: ").append(toIndentedString(nameFr)).append("\n");
    sb.append("    nameIt: ").append(toIndentedString(nameIt)).append("\n");
    sb.append("    slug: ").append(toIndentedString(slug)).append("\n");
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

