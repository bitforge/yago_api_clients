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
using OpenAPIDateConverter = Genie.Client.OpenAPIDateConverter;

namespace Genie.Model
{
    /// <summary>
    /// Project
    /// </summary>
    [DataContract(Name = "Project")]
    public partial class Project : IEquatable<Project>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Project" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected Project() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="Project" /> class.
        /// </summary>
        /// <param name="name">Name will be visible as title in gallery. (required).</param>
        /// <param name="slug">Will be part of asset urls. Cannot be changed once created. (required).</param>
        /// <param name="image">Image will be visible in gallery..</param>
        /// <param name="website">website.</param>
        /// <param name="description">description.</param>
        /// <param name="gallery">Activates a publicly available gallery with all project models in state READY or ONLINE..</param>
        /// <param name="translationsDe">translationsDe.</param>
        /// <param name="translationsEn">translationsEn.</param>
        /// <param name="translationsFr">translationsFr.</param>
        /// <param name="translationsIt">translationsIt.</param>
        /// <param name="backlinkUrls">Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print)..</param>
        public Project(string name = default(string), string slug = default(string), string image = default(string), string website = default(string), string description = default(string), bool gallery = default(bool), bool translationsDe = default(bool), bool translationsEn = default(bool), bool translationsFr = default(bool), bool translationsIt = default(bool), bool backlinkUrls = default(bool))
        {
            // to ensure "name" is required (not null)
            if (name == null) {
                throw new ArgumentNullException("name is a required property for Project and cannot be null");
            }
            this.Name = name;
            // to ensure "slug" is required (not null)
            if (slug == null) {
                throw new ArgumentNullException("slug is a required property for Project and cannot be null");
            }
            this.Slug = slug;
            this.Image = image;
            this.Website = website;
            this.Description = description;
            this.Gallery = gallery;
            this.TranslationsDe = translationsDe;
            this.TranslationsEn = translationsEn;
            this.TranslationsFr = translationsFr;
            this.TranslationsIt = translationsIt;
            this.BacklinkUrls = backlinkUrls;
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
        /// Name will be visible as title in gallery.
        /// </summary>
        /// <value>Name will be visible as title in gallery.</value>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// Will be part of asset urls. Cannot be changed once created.
        /// </summary>
        /// <value>Will be part of asset urls. Cannot be changed once created.</value>
        [DataMember(Name = "slug", IsRequired = true, EmitDefaultValue = false)]
        public string Slug { get; set; }

        /// <summary>
        /// Image will be visible in gallery.
        /// </summary>
        /// <value>Image will be visible in gallery.</value>
        [DataMember(Name = "image", EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets ImageThumb
        /// </summary>
        [DataMember(Name = "image_thumb", IsRequired = true, EmitDefaultValue = false)]
        public string ImageThumb { get; private set; }

        /// <summary>
        /// Returns false as ImageThumb should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeImageThumb()
        {
            return false;
        }
        /// <summary>
        /// Gets or Sets ImagePreview
        /// </summary>
        [DataMember(Name = "image_preview", IsRequired = true, EmitDefaultValue = false)]
        public string ImagePreview { get; private set; }

        /// <summary>
        /// Returns false as ImagePreview should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeImagePreview()
        {
            return false;
        }
        /// <summary>
        /// Gets or Sets Website
        /// </summary>
        [DataMember(Name = "website", EmitDefaultValue = true)]
        public string Website { get; set; }

        /// <summary>
        /// Gets or Sets Description
        /// </summary>
        [DataMember(Name = "description", EmitDefaultValue = true)]
        public string Description { get; set; }

        /// <summary>
        /// Activates a publicly available gallery with all project models in state READY or ONLINE.
        /// </summary>
        /// <value>Activates a publicly available gallery with all project models in state READY or ONLINE.</value>
        [DataMember(Name = "gallery", EmitDefaultValue = true)]
        public bool Gallery { get; set; }

        /// <summary>
        /// Gets or Sets TranslationsDe
        /// </summary>
        [DataMember(Name = "translations_de", EmitDefaultValue = true)]
        public bool TranslationsDe { get; set; }

        /// <summary>
        /// Gets or Sets TranslationsEn
        /// </summary>
        [DataMember(Name = "translations_en", EmitDefaultValue = true)]
        public bool TranslationsEn { get; set; }

        /// <summary>
        /// Gets or Sets TranslationsFr
        /// </summary>
        [DataMember(Name = "translations_fr", EmitDefaultValue = true)]
        public bool TranslationsFr { get; set; }

        /// <summary>
        /// Gets or Sets TranslationsIt
        /// </summary>
        [DataMember(Name = "translations_it", EmitDefaultValue = true)]
        public bool TranslationsIt { get; set; }

        /// <summary>
        /// Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).
        /// </summary>
        /// <value>Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).</value>
        [DataMember(Name = "backlink_urls", EmitDefaultValue = true)]
        public bool BacklinkUrls { get; set; }

        /// <summary>
        /// Gets or Sets Created
        /// </summary>
        [DataMember(Name = "created", IsRequired = true, EmitDefaultValue = false)]
        public DateTime Created { get; private set; }

        /// <summary>
        /// Returns false as Created should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeCreated()
        {
            return false;
        }
        /// <summary>
        /// Gets or Sets Modified
        /// </summary>
        [DataMember(Name = "modified", IsRequired = true, EmitDefaultValue = false)]
        public DateTime Modified { get; private set; }

        /// <summary>
        /// Returns false as Modified should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeModified()
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
            sb.Append("class Project {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Slug: ").Append(Slug).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  ImageThumb: ").Append(ImageThumb).Append("\n");
            sb.Append("  ImagePreview: ").Append(ImagePreview).Append("\n");
            sb.Append("  Website: ").Append(Website).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  Gallery: ").Append(Gallery).Append("\n");
            sb.Append("  TranslationsDe: ").Append(TranslationsDe).Append("\n");
            sb.Append("  TranslationsEn: ").Append(TranslationsEn).Append("\n");
            sb.Append("  TranslationsFr: ").Append(TranslationsFr).Append("\n");
            sb.Append("  TranslationsIt: ").Append(TranslationsIt).Append("\n");
            sb.Append("  BacklinkUrls: ").Append(BacklinkUrls).Append("\n");
            sb.Append("  Created: ").Append(Created).Append("\n");
            sb.Append("  Modified: ").Append(Modified).Append("\n");
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
            return this.Equals(input as Project);
        }

        /// <summary>
        /// Returns true if Project instances are equal
        /// </summary>
        /// <param name="input">Instance of Project to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Project input)
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
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Slug == input.Slug ||
                    (this.Slug != null &&
                    this.Slug.Equals(input.Slug))
                ) && 
                (
                    this.Image == input.Image ||
                    (this.Image != null &&
                    this.Image.Equals(input.Image))
                ) && 
                (
                    this.ImageThumb == input.ImageThumb ||
                    (this.ImageThumb != null &&
                    this.ImageThumb.Equals(input.ImageThumb))
                ) && 
                (
                    this.ImagePreview == input.ImagePreview ||
                    (this.ImagePreview != null &&
                    this.ImagePreview.Equals(input.ImagePreview))
                ) && 
                (
                    this.Website == input.Website ||
                    (this.Website != null &&
                    this.Website.Equals(input.Website))
                ) && 
                (
                    this.Description == input.Description ||
                    (this.Description != null &&
                    this.Description.Equals(input.Description))
                ) && 
                (
                    this.Gallery == input.Gallery ||
                    this.Gallery.Equals(input.Gallery)
                ) && 
                (
                    this.TranslationsDe == input.TranslationsDe ||
                    this.TranslationsDe.Equals(input.TranslationsDe)
                ) && 
                (
                    this.TranslationsEn == input.TranslationsEn ||
                    this.TranslationsEn.Equals(input.TranslationsEn)
                ) && 
                (
                    this.TranslationsFr == input.TranslationsFr ||
                    this.TranslationsFr.Equals(input.TranslationsFr)
                ) && 
                (
                    this.TranslationsIt == input.TranslationsIt ||
                    this.TranslationsIt.Equals(input.TranslationsIt)
                ) && 
                (
                    this.BacklinkUrls == input.BacklinkUrls ||
                    this.BacklinkUrls.Equals(input.BacklinkUrls)
                ) && 
                (
                    this.Created == input.Created ||
                    (this.Created != null &&
                    this.Created.Equals(input.Created))
                ) && 
                (
                    this.Modified == input.Modified ||
                    (this.Modified != null &&
                    this.Modified.Equals(input.Modified))
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
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Slug != null)
                    hashCode = hashCode * 59 + this.Slug.GetHashCode();
                if (this.Image != null)
                    hashCode = hashCode * 59 + this.Image.GetHashCode();
                if (this.ImageThumb != null)
                    hashCode = hashCode * 59 + this.ImageThumb.GetHashCode();
                if (this.ImagePreview != null)
                    hashCode = hashCode * 59 + this.ImagePreview.GetHashCode();
                if (this.Website != null)
                    hashCode = hashCode * 59 + this.Website.GetHashCode();
                if (this.Description != null)
                    hashCode = hashCode * 59 + this.Description.GetHashCode();
                hashCode = hashCode * 59 + this.Gallery.GetHashCode();
                hashCode = hashCode * 59 + this.TranslationsDe.GetHashCode();
                hashCode = hashCode * 59 + this.TranslationsEn.GetHashCode();
                hashCode = hashCode * 59 + this.TranslationsFr.GetHashCode();
                hashCode = hashCode * 59 + this.TranslationsIt.GetHashCode();
                hashCode = hashCode * 59 + this.BacklinkUrls.GetHashCode();
                if (this.Created != null)
                    hashCode = hashCode * 59 + this.Created.GetHashCode();
                if (this.Modified != null)
                    hashCode = hashCode * 59 + this.Modified.GetHashCode();
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
            // Name (string) maxLength
            if(this.Name != null && this.Name.Length > 100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Name, length must be less than 100.", new [] { "Name" });
            }

            // Slug (string) maxLength
            if(this.Slug != null && this.Slug.Length > 50)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Slug, length must be less than 50.", new [] { "Slug" });
            }

            // Slug (string) pattern
            Regex regexSlug = new Regex(@"^[-a-zA-Z0-9_]+$", RegexOptions.CultureInvariant);
            if (false == regexSlug.Match(this.Slug).Success)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Slug, must match a pattern of " + regexSlug, new [] { "Slug" });
            }

            // Website (string) maxLength
            if(this.Website != null && this.Website.Length > 200)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Website, length must be less than 200.", new [] { "Website" });
            }

            yield break;
        }
    }

}
