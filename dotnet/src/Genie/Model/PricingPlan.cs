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
    /// PricingPlan
    /// </summary>
    [DataContract(Name = "PricingPlan")]
    public partial class PricingPlan : IEquatable<PricingPlan>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PricingPlan" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected PricingPlan() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="PricingPlan" /> class.
        /// </summary>
        /// <param name="key">key (required).</param>
        /// <param name="name">name (required).</param>
        /// <param name="price">For display purposes, payment price is defined in stripe product. (required).</param>
        /// <param name="projectQuotas">How many projects are included in this plan. (required).</param>
        /// <param name="modelQuotas">How many models are included in this plan. (required).</param>
        /// <param name="viewQuotas">How many AR views are included in this plan. (required).</param>
        /// <param name="seoOptimization">Enables SEO tags and sharing previews..</param>
        /// <param name="viewReporting">Allows to view detailed statistics about model views..</param>
        /// <param name="customQrCodes">Allows to visually customie QR Codes when enabled..</param>
        public PricingPlan(string key = default(string), string name = default(string), decimal price = default(decimal), long projectQuotas = default(long), long modelQuotas = default(long), long viewQuotas = default(long), bool seoOptimization = default(bool), bool viewReporting = default(bool), bool customQrCodes = default(bool))
        {
            // to ensure "key" is required (not null)
            if (key == null) {
                throw new ArgumentNullException("key is a required property for PricingPlan and cannot be null");
            }
            this.Key = key;
            // to ensure "name" is required (not null)
            if (name == null) {
                throw new ArgumentNullException("name is a required property for PricingPlan and cannot be null");
            }
            this.Name = name;
            this.Price = price;
            this.ProjectQuotas = projectQuotas;
            this.ModelQuotas = modelQuotas;
            this.ViewQuotas = viewQuotas;
            this.SeoOptimization = seoOptimization;
            this.ViewReporting = viewReporting;
            this.CustomQrCodes = customQrCodes;
        }

        /// <summary>
        /// Gets or Sets Key
        /// </summary>
        [DataMember(Name = "key", IsRequired = true, EmitDefaultValue = false)]
        public string Key { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// For display purposes, payment price is defined in stripe product.
        /// </summary>
        /// <value>For display purposes, payment price is defined in stripe product.</value>
        [DataMember(Name = "price", IsRequired = true, EmitDefaultValue = false)]
        public decimal Price { get; set; }

        /// <summary>
        /// How many projects are included in this plan.
        /// </summary>
        /// <value>How many projects are included in this plan.</value>
        [DataMember(Name = "project_quotas", IsRequired = true, EmitDefaultValue = false)]
        public long ProjectQuotas { get; set; }

        /// <summary>
        /// How many models are included in this plan.
        /// </summary>
        /// <value>How many models are included in this plan.</value>
        [DataMember(Name = "model_quotas", IsRequired = true, EmitDefaultValue = false)]
        public long ModelQuotas { get; set; }

        /// <summary>
        /// How many AR views are included in this plan.
        /// </summary>
        /// <value>How many AR views are included in this plan.</value>
        [DataMember(Name = "view_quotas", IsRequired = true, EmitDefaultValue = false)]
        public long ViewQuotas { get; set; }

        /// <summary>
        /// Enables SEO tags and sharing previews.
        /// </summary>
        /// <value>Enables SEO tags and sharing previews.</value>
        [DataMember(Name = "seo_optimization", EmitDefaultValue = true)]
        public bool SeoOptimization { get; set; }

        /// <summary>
        /// Allows to view detailed statistics about model views.
        /// </summary>
        /// <value>Allows to view detailed statistics about model views.</value>
        [DataMember(Name = "view_reporting", EmitDefaultValue = true)]
        public bool ViewReporting { get; set; }

        /// <summary>
        /// Allows to visually customie QR Codes when enabled.
        /// </summary>
        /// <value>Allows to visually customie QR Codes when enabled.</value>
        [DataMember(Name = "custom_qr_codes", EmitDefaultValue = true)]
        public bool CustomQrCodes { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class PricingPlan {\n");
            sb.Append("  Key: ").Append(Key).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  ProjectQuotas: ").Append(ProjectQuotas).Append("\n");
            sb.Append("  ModelQuotas: ").Append(ModelQuotas).Append("\n");
            sb.Append("  ViewQuotas: ").Append(ViewQuotas).Append("\n");
            sb.Append("  SeoOptimization: ").Append(SeoOptimization).Append("\n");
            sb.Append("  ViewReporting: ").Append(ViewReporting).Append("\n");
            sb.Append("  CustomQrCodes: ").Append(CustomQrCodes).Append("\n");
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
            return this.Equals(input as PricingPlan);
        }

        /// <summary>
        /// Returns true if PricingPlan instances are equal
        /// </summary>
        /// <param name="input">Instance of PricingPlan to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PricingPlan input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Key == input.Key ||
                    (this.Key != null &&
                    this.Key.Equals(input.Key))
                ) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Price == input.Price ||
                    this.Price.Equals(input.Price)
                ) && 
                (
                    this.ProjectQuotas == input.ProjectQuotas ||
                    this.ProjectQuotas.Equals(input.ProjectQuotas)
                ) && 
                (
                    this.ModelQuotas == input.ModelQuotas ||
                    this.ModelQuotas.Equals(input.ModelQuotas)
                ) && 
                (
                    this.ViewQuotas == input.ViewQuotas ||
                    this.ViewQuotas.Equals(input.ViewQuotas)
                ) && 
                (
                    this.SeoOptimization == input.SeoOptimization ||
                    this.SeoOptimization.Equals(input.SeoOptimization)
                ) && 
                (
                    this.ViewReporting == input.ViewReporting ||
                    this.ViewReporting.Equals(input.ViewReporting)
                ) && 
                (
                    this.CustomQrCodes == input.CustomQrCodes ||
                    this.CustomQrCodes.Equals(input.CustomQrCodes)
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
                if (this.Key != null)
                    hashCode = hashCode * 59 + this.Key.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                hashCode = hashCode * 59 + this.Price.GetHashCode();
                hashCode = hashCode * 59 + this.ProjectQuotas.GetHashCode();
                hashCode = hashCode * 59 + this.ModelQuotas.GetHashCode();
                hashCode = hashCode * 59 + this.ViewQuotas.GetHashCode();
                hashCode = hashCode * 59 + this.SeoOptimization.GetHashCode();
                hashCode = hashCode * 59 + this.ViewReporting.GetHashCode();
                hashCode = hashCode * 59 + this.CustomQrCodes.GetHashCode();
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
            // Key (string) maxLength
            if(this.Key != null && this.Key.Length > 20)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Key, length must be less than 20.", new [] { "Key" });
            }

            // Name (string) maxLength
            if(this.Name != null && this.Name.Length > 100)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Name, length must be less than 100.", new [] { "Name" });
            }

            // Price (decimal) pattern
            Regex regexPrice = new Regex(@"^\\d{0,4}(?:\\.\\d{0,2})?$", RegexOptions.CultureInvariant);
            if (false == regexPrice.Match(this.Price).Success)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Price, must match a pattern of " + regexPrice, new [] { "Price" });
            }

            // ProjectQuotas (long) maximum
            if(this.ProjectQuotas > (long)9223372036854775807)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for ProjectQuotas, must be a value less than or equal to 9223372036854775807.", new [] { "ProjectQuotas" });
            }

            // ProjectQuotas (long) minimum
            if(this.ProjectQuotas < (long)0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for ProjectQuotas, must be a value greater than or equal to 0.", new [] { "ProjectQuotas" });
            }

            // ModelQuotas (long) maximum
            if(this.ModelQuotas > (long)9223372036854775807)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for ModelQuotas, must be a value less than or equal to 9223372036854775807.", new [] { "ModelQuotas" });
            }

            // ModelQuotas (long) minimum
            if(this.ModelQuotas < (long)0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for ModelQuotas, must be a value greater than or equal to 0.", new [] { "ModelQuotas" });
            }

            // ViewQuotas (long) maximum
            if(this.ViewQuotas > (long)9223372036854775807)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for ViewQuotas, must be a value less than or equal to 9223372036854775807.", new [] { "ViewQuotas" });
            }

            // ViewQuotas (long) minimum
            if(this.ViewQuotas < (long)0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for ViewQuotas, must be a value greater than or equal to 0.", new [] { "ViewQuotas" });
            }

            yield break;
        }
    }

}
