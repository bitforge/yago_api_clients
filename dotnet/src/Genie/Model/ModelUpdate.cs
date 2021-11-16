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
    /// ModelUpdate
    /// </summary>
    [DataContract(Name = "ModelUpdate")]
    public partial class ModelUpdate : IEquatable<ModelUpdate>, IValidatableObject
    {

        /// <summary>
        /// DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use.
        /// </summary>
        /// <value>DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use.</value>
        [DataMember(Name = "status", EmitDefaultValue = true)]
        public ModelStatus? Status { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="ModelUpdate" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ModelUpdate() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ModelUpdate" /> class.
        /// </summary>
        /// <param name="nameDe">Name will be visible in Android as title..</param>
        /// <param name="nameEn">Name will be visible in Android as title..</param>
        /// <param name="nameFr">Name will be visible in Android as title..</param>
        /// <param name="nameIt">Name will be visible in Android as title..</param>
        /// <param name="status">DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use..</param>
        /// <param name="descriptionDe">Used when shared as link and for SEO..</param>
        /// <param name="descriptionEn">Used when shared as link and for SEO..</param>
        /// <param name="descriptionFr">Used when shared as link and for SEO..</param>
        /// <param name="descriptionIt">Used when shared as link and for SEO..</param>
        /// <param name="number">Use for custom sort order..</param>
        /// <param name="siteUrlDe">Link to the product on your site. Required when using standalone QR codes (e.g. Print)..</param>
        /// <param name="siteUrlEn">Link to the product on your site. Required when using standalone QR codes (e.g. Print)..</param>
        /// <param name="siteUrlFr">Link to the product on your site. Required when using standalone QR codes (e.g. Print)..</param>
        /// <param name="siteUrlIt">Link to the product on your site. Required when using standalone QR codes (e.g. Print)..</param>
        /// <param name="scaleable">Let&#39;s the user scale the model in AR when enabled..</param>
        /// <param name="sku">Stock-keeping unit. The identfier of the product in external webstore..</param>
        /// <param name="price">Display price. The effective price is determined by the external webstore..</param>
        public ModelUpdate(string nameDe = default(string), string nameEn = default(string), string nameFr = default(string), string nameIt = default(string), ModelStatus? status = default(ModelStatus?), string descriptionDe = default(string), string descriptionEn = default(string), string descriptionFr = default(string), string descriptionIt = default(string), int? number = default(int?), string siteUrlDe = default(string), string siteUrlEn = default(string), string siteUrlFr = default(string), string siteUrlIt = default(string), bool scaleable = default(bool), string sku = default(string), decimal? price = default(decimal?))
        {
            this.NameDe = nameDe;
            this.NameEn = nameEn;
            this.NameFr = nameFr;
            this.NameIt = nameIt;
            this.Status = status;
            this.DescriptionDe = descriptionDe;
            this.DescriptionEn = descriptionEn;
            this.DescriptionFr = descriptionFr;
            this.DescriptionIt = descriptionIt;
            this.Number = number;
            this.SiteUrlDe = siteUrlDe;
            this.SiteUrlEn = siteUrlEn;
            this.SiteUrlFr = siteUrlFr;
            this.SiteUrlIt = siteUrlIt;
            this.Scaleable = scaleable;
            this.Sku = sku;
            this.Price = price;
        }

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
        /// Gets or Sets Description
        /// </summary>
        [DataMember(Name = "description", IsRequired = true, EmitDefaultValue = false)]
        public string Description { get; private set; }

        /// <summary>
        /// Returns false as Description should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializeDescription()
        {
            return false;
        }
        /// <summary>
        /// Used when shared as link and for SEO.
        /// </summary>
        /// <value>Used when shared as link and for SEO.</value>
        [DataMember(Name = "description_de", EmitDefaultValue = true)]
        public string DescriptionDe { get; set; }

        /// <summary>
        /// Used when shared as link and for SEO.
        /// </summary>
        /// <value>Used when shared as link and for SEO.</value>
        [DataMember(Name = "description_en", EmitDefaultValue = true)]
        public string DescriptionEn { get; set; }

        /// <summary>
        /// Used when shared as link and for SEO.
        /// </summary>
        /// <value>Used when shared as link and for SEO.</value>
        [DataMember(Name = "description_fr", EmitDefaultValue = true)]
        public string DescriptionFr { get; set; }

        /// <summary>
        /// Used when shared as link and for SEO.
        /// </summary>
        /// <value>Used when shared as link and for SEO.</value>
        [DataMember(Name = "description_it", EmitDefaultValue = true)]
        public string DescriptionIt { get; set; }

        /// <summary>
        /// Use for custom sort order.
        /// </summary>
        /// <value>Use for custom sort order.</value>
        [DataMember(Name = "number", EmitDefaultValue = true)]
        public int? Number { get; set; }

        /// <summary>
        /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
        /// </summary>
        /// <value>Link to the product on your site. Required when using standalone QR codes (e.g. Print).</value>
        [DataMember(Name = "site_url_de", EmitDefaultValue = true)]
        public string SiteUrlDe { get; set; }

        /// <summary>
        /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
        /// </summary>
        /// <value>Link to the product on your site. Required when using standalone QR codes (e.g. Print).</value>
        [DataMember(Name = "site_url_en", EmitDefaultValue = true)]
        public string SiteUrlEn { get; set; }

        /// <summary>
        /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
        /// </summary>
        /// <value>Link to the product on your site. Required when using standalone QR codes (e.g. Print).</value>
        [DataMember(Name = "site_url_fr", EmitDefaultValue = true)]
        public string SiteUrlFr { get; set; }

        /// <summary>
        /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
        /// </summary>
        /// <value>Link to the product on your site. Required when using standalone QR codes (e.g. Print).</value>
        [DataMember(Name = "site_url_it", EmitDefaultValue = true)]
        public string SiteUrlIt { get; set; }

        /// <summary>
        /// Let&#39;s the user scale the model in AR when enabled.
        /// </summary>
        /// <value>Let&#39;s the user scale the model in AR when enabled.</value>
        [DataMember(Name = "scaleable", EmitDefaultValue = true)]
        public bool Scaleable { get; set; }

        /// <summary>
        /// Stock-keeping unit. The identfier of the product in external webstore.
        /// </summary>
        /// <value>Stock-keeping unit. The identfier of the product in external webstore.</value>
        [DataMember(Name = "sku", EmitDefaultValue = true)]
        public string Sku { get; set; }

        /// <summary>
        /// Display price. The effective price is determined by the external webstore.
        /// </summary>
        /// <value>Display price. The effective price is determined by the external webstore.</value>
        [DataMember(Name = "price", EmitDefaultValue = true)]
        public decimal? Price { get; set; }

        /// <summary>
        /// Gets or Sets PriceCurrency
        /// </summary>
        [DataMember(Name = "price_currency", IsRequired = true, EmitDefaultValue = false)]
        public string PriceCurrency { get; private set; }

        /// <summary>
        /// Returns false as PriceCurrency should not be serialized given that it's read-only.
        /// </summary>
        /// <returns>false (boolean)</returns>
        public bool ShouldSerializePriceCurrency()
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
            sb.Append("class ModelUpdate {\n");
            sb.Append("  NameDe: ").Append(NameDe).Append("\n");
            sb.Append("  NameEn: ").Append(NameEn).Append("\n");
            sb.Append("  NameFr: ").Append(NameFr).Append("\n");
            sb.Append("  NameIt: ").Append(NameIt).Append("\n");
            sb.Append("  Status: ").Append(Status).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  DescriptionDe: ").Append(DescriptionDe).Append("\n");
            sb.Append("  DescriptionEn: ").Append(DescriptionEn).Append("\n");
            sb.Append("  DescriptionFr: ").Append(DescriptionFr).Append("\n");
            sb.Append("  DescriptionIt: ").Append(DescriptionIt).Append("\n");
            sb.Append("  Number: ").Append(Number).Append("\n");
            sb.Append("  SiteUrlDe: ").Append(SiteUrlDe).Append("\n");
            sb.Append("  SiteUrlEn: ").Append(SiteUrlEn).Append("\n");
            sb.Append("  SiteUrlFr: ").Append(SiteUrlFr).Append("\n");
            sb.Append("  SiteUrlIt: ").Append(SiteUrlIt).Append("\n");
            sb.Append("  Scaleable: ").Append(Scaleable).Append("\n");
            sb.Append("  Sku: ").Append(Sku).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  PriceCurrency: ").Append(PriceCurrency).Append("\n");
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
            return this.Equals(input as ModelUpdate);
        }

        /// <summary>
        /// Returns true if ModelUpdate instances are equal
        /// </summary>
        /// <param name="input">Instance of ModelUpdate to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ModelUpdate input)
        {
            if (input == null)
                return false;

            return 
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
                    this.Status == input.Status ||
                    this.Status.Equals(input.Status)
                ) && 
                (
                    this.Description == input.Description ||
                    (this.Description != null &&
                    this.Description.Equals(input.Description))
                ) && 
                (
                    this.DescriptionDe == input.DescriptionDe ||
                    (this.DescriptionDe != null &&
                    this.DescriptionDe.Equals(input.DescriptionDe))
                ) && 
                (
                    this.DescriptionEn == input.DescriptionEn ||
                    (this.DescriptionEn != null &&
                    this.DescriptionEn.Equals(input.DescriptionEn))
                ) && 
                (
                    this.DescriptionFr == input.DescriptionFr ||
                    (this.DescriptionFr != null &&
                    this.DescriptionFr.Equals(input.DescriptionFr))
                ) && 
                (
                    this.DescriptionIt == input.DescriptionIt ||
                    (this.DescriptionIt != null &&
                    this.DescriptionIt.Equals(input.DescriptionIt))
                ) && 
                (
                    this.Number == input.Number ||
                    (this.Number != null &&
                    this.Number.Equals(input.Number))
                ) && 
                (
                    this.SiteUrlDe == input.SiteUrlDe ||
                    (this.SiteUrlDe != null &&
                    this.SiteUrlDe.Equals(input.SiteUrlDe))
                ) && 
                (
                    this.SiteUrlEn == input.SiteUrlEn ||
                    (this.SiteUrlEn != null &&
                    this.SiteUrlEn.Equals(input.SiteUrlEn))
                ) && 
                (
                    this.SiteUrlFr == input.SiteUrlFr ||
                    (this.SiteUrlFr != null &&
                    this.SiteUrlFr.Equals(input.SiteUrlFr))
                ) && 
                (
                    this.SiteUrlIt == input.SiteUrlIt ||
                    (this.SiteUrlIt != null &&
                    this.SiteUrlIt.Equals(input.SiteUrlIt))
                ) && 
                (
                    this.Scaleable == input.Scaleable ||
                    this.Scaleable.Equals(input.Scaleable)
                ) && 
                (
                    this.Sku == input.Sku ||
                    (this.Sku != null &&
                    this.Sku.Equals(input.Sku))
                ) && 
                (
                    this.Price == input.Price ||
                    (this.Price != null &&
                    this.Price.Equals(input.Price))
                ) && 
                (
                    this.PriceCurrency == input.PriceCurrency ||
                    (this.PriceCurrency != null &&
                    this.PriceCurrency.Equals(input.PriceCurrency))
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
                if (this.NameDe != null)
                    hashCode = hashCode * 59 + this.NameDe.GetHashCode();
                if (this.NameEn != null)
                    hashCode = hashCode * 59 + this.NameEn.GetHashCode();
                if (this.NameFr != null)
                    hashCode = hashCode * 59 + this.NameFr.GetHashCode();
                if (this.NameIt != null)
                    hashCode = hashCode * 59 + this.NameIt.GetHashCode();
                hashCode = hashCode * 59 + this.Status.GetHashCode();
                if (this.Description != null)
                    hashCode = hashCode * 59 + this.Description.GetHashCode();
                if (this.DescriptionDe != null)
                    hashCode = hashCode * 59 + this.DescriptionDe.GetHashCode();
                if (this.DescriptionEn != null)
                    hashCode = hashCode * 59 + this.DescriptionEn.GetHashCode();
                if (this.DescriptionFr != null)
                    hashCode = hashCode * 59 + this.DescriptionFr.GetHashCode();
                if (this.DescriptionIt != null)
                    hashCode = hashCode * 59 + this.DescriptionIt.GetHashCode();
                if (this.Number != null)
                    hashCode = hashCode * 59 + this.Number.GetHashCode();
                if (this.SiteUrlDe != null)
                    hashCode = hashCode * 59 + this.SiteUrlDe.GetHashCode();
                if (this.SiteUrlEn != null)
                    hashCode = hashCode * 59 + this.SiteUrlEn.GetHashCode();
                if (this.SiteUrlFr != null)
                    hashCode = hashCode * 59 + this.SiteUrlFr.GetHashCode();
                if (this.SiteUrlIt != null)
                    hashCode = hashCode * 59 + this.SiteUrlIt.GetHashCode();
                hashCode = hashCode * 59 + this.Scaleable.GetHashCode();
                if (this.Sku != null)
                    hashCode = hashCode * 59 + this.Sku.GetHashCode();
                if (this.Price != null)
                    hashCode = hashCode * 59 + this.Price.GetHashCode();
                if (this.PriceCurrency != null)
                    hashCode = hashCode * 59 + this.PriceCurrency.GetHashCode();
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

            // Number (int?) maximum
            if(this.Number > (int?)2147483647)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Number, must be a value less than or equal to 2147483647.", new [] { "Number" });
            }

            // Number (int?) minimum
            if(this.Number < (int?)0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Number, must be a value greater than or equal to 0.", new [] { "Number" });
            }

            // SiteUrlDe (string) maxLength
            if(this.SiteUrlDe != null && this.SiteUrlDe.Length > 200)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for SiteUrlDe, length must be less than 200.", new [] { "SiteUrlDe" });
            }

            // SiteUrlEn (string) maxLength
            if(this.SiteUrlEn != null && this.SiteUrlEn.Length > 200)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for SiteUrlEn, length must be less than 200.", new [] { "SiteUrlEn" });
            }

            // SiteUrlFr (string) maxLength
            if(this.SiteUrlFr != null && this.SiteUrlFr.Length > 200)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for SiteUrlFr, length must be less than 200.", new [] { "SiteUrlFr" });
            }

            // SiteUrlIt (string) maxLength
            if(this.SiteUrlIt != null && this.SiteUrlIt.Length > 200)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for SiteUrlIt, length must be less than 200.", new [] { "SiteUrlIt" });
            }

            // Sku (string) maxLength
            if(this.Sku != null && this.Sku.Length > 100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Sku, length must be less than 100.", new [] { "Sku" });
            }

            // Price (decimal?) pattern
            Regex regexPrice = new Regex(@"^\\d{0,8}(?:\\.\\d{0,2})?$", RegexOptions.CultureInvariant);
            if (false == regexPrice.Match(this.Price).Success)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Price, must match a pattern of " + regexPrice, new [] { "Price" });
            }

            yield break;
        }
    }

}
