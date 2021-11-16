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
    /// Defines PaymentMethodEnum
    /// </summary>
    [JsonConverter(typeof(StringEnumConverter))]
    public enum PaymentMethodEnum
    {
        /// <summary>
        /// Enum NONE for value: NONE
        /// </summary>
        [EnumMember(Value = "NONE")]
        NONE = 1,

        /// <summary>
        /// Enum STRIPE for value: STRIPE
        /// </summary>
        [EnumMember(Value = "STRIPE")]
        STRIPE = 2,

        /// <summary>
        /// Enum BILL for value: BILL
        /// </summary>
        [EnumMember(Value = "BILL")]
        BILL = 3

    }

}
