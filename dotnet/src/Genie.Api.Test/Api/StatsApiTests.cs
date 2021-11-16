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
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using Genie.Api.Client;
using Genie.Api.Api;
// uncomment below to import models
//using Genie.Api.Model;

namespace Genie.Api.Test.Api
{
    /// <summary>
    ///  Class for testing StatsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class StatsApiTests : IDisposable
    {
        private StatsApi instance;

        public StatsApiTests()
        {
            instance = new StatsApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of StatsApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' StatsApi
            //Assert.IsType<StatsApi>(instance);
        }

        /// <summary>
        /// Test StatsGlobalCreate
        /// </summary>
        [Fact]
        public void StatsGlobalCreateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //GlobalStatistics globalStatistics = null;
            //var response = instance.StatsGlobalCreate(globalStatistics);
            //Assert.IsType<SummaryStats>(response);
        }

        /// <summary>
        /// Test StatsProjectCreate
        /// </summary>
        [Fact]
        public void StatsProjectCreateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Guid id = null;
            //ProjectsStatistics projectsStatistics = null;
            //var response = instance.StatsProjectCreate(id, projectsStatistics);
            //Assert.IsType<SummaryStats>(response);
        }
    }
}
