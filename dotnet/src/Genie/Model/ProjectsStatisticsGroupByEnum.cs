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
    /// Defines ProjectsStatisticsGroupByEnum
    /// </summary>
    [JsonConverter(typeof(StringEnumConverter))]
    public enum ProjectsStatisticsGroupByEnum
    {
        /// <summary>
        /// Enum All for value: all
        /// </summary>
        [EnumMember(Value = "all")]
        All = 1,

        /// <summary>
        /// Enum Events for value: events
        /// </summary>
        [EnumMember(Value = "events")]
        Events = 2,

        /// <summary>
        /// Enum Models for value: models
        /// </summary>
        [EnumMember(Value = "models")]
        Models = 3,

        /// <summary>
        /// Enum Platforms for value: platforms
        /// </summary>
        [EnumMember(Value = "platforms")]
        Platforms = 4,

        /// <summary>
        /// Enum Languages for value: languages
        /// </summary>
        [EnumMember(Value = "languages")]
        Languages = 5,

        /// <summary>
        /// Enum Devices for value: devices
        /// </summary>
        [EnumMember(Value = "devices")]
        Devices = 6,

        /// <summary>
        /// Enum Browsers for value: browsers
        /// </summary>
        [EnumMember(Value = "browsers")]
        Browsers = 7,

        /// <summary>
        /// Enum Countries for value: countries
        /// </summary>
        [EnumMember(Value = "countries")]
        Countries = 8

    }

}
