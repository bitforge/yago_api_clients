/*
 * Genie API
 *
 * Augemented Reality Made Easy.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: hello@genie-ar.ch
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Genie.Api.Client.OpenAPIDateConverter;

namespace Genie.Api.Model
{
    /// <summary>
    /// ModelCreate
    /// </summary>
    [DataContract(Name = "ModelCreate")]
    public partial class ModelCreate : IEquatable<ModelCreate>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ModelCreate" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ModelCreate() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ModelCreate" /> class.
        /// </summary>
        /// <param name="project">The project this model belongs to. Cannot be changed once created. (required).</param>
        /// <param name="nameDe">Name will be visible in Android as title..</param>
        /// <param name="nameEn">Name will be visible in Android as title..</param>
        /// <param name="nameFr">Name will be visible in Android as title..</param>
        /// <param name="nameIt">Name will be visible in Android as title..</param>
        public ModelCreate(Guid project = default(Guid), string nameDe = default(string), string nameEn = default(string), string nameFr = default(string), string nameIt = default(string))
        {
            this.Project = project;
            this.NameDe = nameDe;
            this.NameEn = nameEn;
            this.NameFr = nameFr;
            this.NameIt = nameIt;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", IsRequired = true, EmitDefaultValue = false)]
        public Guid Id { get; private set; }

        /// <summary>
        /// Returns false as Id should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeId()
        {
            return false;
        }
        /// <summary>
        /// The project this model belongs to. Cannot be changed once created.
        /// </summary>
        /// <value>The project this model belongs to. Cannot be changed once created.</value>
        [DataMember(Name = "project", IsRequired = true, EmitDefaultValue = false)]
        public Guid Project { get; set; }

        /// <summary>
        /// Name will be visible in Android as title.
        /// </summary>
        /// <value>Name will be visible in Android as title.</value>
        [DataMember(Name = "name_de", EmitDefaultValue = true)]
        public string NameDe { get; set; }

        /// <summary>
        /// Name will be visible in Android as title.
        /// </summary>
        /// <value>Name will be visible in Android as title.</value>
        [DataMember(Name = "name_en", EmitDefaultValue = true)]
        public string NameEn { get; set; }

        /// <summary>
        /// Name will be visible in Android as title.
        /// </summary>
        /// <value>Name will be visible in Android as title.</value>
        [DataMember(Name = "name_fr", EmitDefaultValue = true)]
        public string NameFr { get; set; }

        /// <summary>
        /// Name will be visible in Android as title.
        /// </summary>
        /// <value>Name will be visible in Android as title.</value>
        [DataMember(Name = "name_it", EmitDefaultValue = true)]
        public string NameIt { get; set; }

        /// <summary>
        /// Unique Short-URL for embedding. Cannot be changed once created.
        /// </summary>
        /// <value>Unique Short-URL for embedding. Cannot be changed once created.</value>
        [DataMember(Name = "slug", IsRequired = true, EmitDefaultValue = false)]
        public string Slug { get; private set; }

        /// <summary>
        /// Returns false as Slug should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeSlug()
        {
            return false;
        }
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ModelCreate {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Project: ").Append(Project).Append("\n");
            sb.Append("  NameDe: ").Append(NameDe).Append("\n");
            sb.Append("  NameEn: ").Append(NameEn).Append("\n");
            sb.Append("  NameFr: ").Append(NameFr).Append("\n");
            sb.Append("  NameIt: ").Append(NameIt).Append("\n");
            sb.Append("  Slug: ").Append(Slug).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as ModelCreate);
        }

        /// <summary>
        /// Returns true if ModelCreate instances are equal
        /// </summary>
        /// <param name="input">Instance of ModelCreate to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ModelCreate input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Project == input.Project ||
                    (this.Project != null &&
                    this.Project.Equals(input.Project))
                ) && 
                (
                    this.NameDe == input.NameDe ||
                    (this.NameDe != null &&
                    this.NameDe.Equals(input.NameDe))
                ) && 
                (
                    this.NameEn == input.NameEn ||
                    (this.NameEn != null &&
                    this.NameEn.Equals(input.NameEn))
                ) && 
                (
                    this.NameFr == input.NameFr ||
                    (this.NameFr != null &&
                    this.NameFr.Equals(input.NameFr))
                ) && 
                (
                    this.NameIt == input.NameIt ||
                    (this.NameIt != null &&
                    this.NameIt.Equals(input.NameIt))
                ) && 
                (
                    this.Slug == input.Slug ||
                    (this.Slug != null &&
                    this.Slug.Equals(input.Slug))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Project != null)
                    hashCode = hashCode * 59 + this.Project.GetHashCode();
                if (this.NameDe != null)
                    hashCode = hashCode * 59 + this.NameDe.GetHashCode();
                if (this.NameEn != null)
                    hashCode = hashCode * 59 + this.NameEn.GetHashCode();
                if (this.NameFr != null)
                    hashCode = hashCode * 59 + this.NameFr.GetHashCode();
                if (this.NameIt != null)
                    hashCode = hashCode * 59 + this.NameIt.GetHashCode();
                if (this.Slug != null)
                    hashCode = hashCode * 59 + this.Slug.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        public IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> Validate(ValidationContext validationContext)
        {
            // NameDe (string) maxLength
            if(this.NameDe != null && this.NameDe.Length > 100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for NameDe, length must be less than 100.", new [] { "NameDe" });
            }

            // NameEn (string) maxLength
            if(this.NameEn != null && this.NameEn.Length > 100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for NameEn, length must be less than 100.", new [] { "NameEn" });
            }

            // NameFr (string) maxLength
            if(this.NameFr != null && this.NameFr.Length > 100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for NameFr, length must be less than 100.", new [] { "NameFr" });
            }

            // NameIt (string) maxLength
            if(this.NameIt != null && this.NameIt.Length > 100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for NameIt, length must be less than 100.", new [] { "NameIt" });
            }

            // Slug (string) pattern
            Regex regexSlug = new Regex(@"^[-a-zA-Z0-9_]+$", RegexOptions.CultureInvariant);
            if (false == regexSlug.Match(this.Slug).Success)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Slug, must match a pattern of " + regexSlug, new [] { "Slug" });
            }

            yield break;
        }
    }

}
