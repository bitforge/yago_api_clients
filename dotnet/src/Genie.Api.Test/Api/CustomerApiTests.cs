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
    ///  Class for testing CustomerApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class CustomerApiTests : IDisposable
    {
        private CustomerApi instance;

        public CustomerApiTests()
        {
            instance = new CustomerApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of CustomerApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' CustomerApi
            //Assert.IsType<CustomerApi>(instance);
        }

        /// <summary>
        /// Test CustomerBillingAddressPartialUpdate
        /// </summary>
        [Fact]
        public void CustomerBillingAddressPartialUpdateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //PatchedAddress patchedAddress = null;
            //var response = instance.CustomerBillingAddressPartialUpdate(patchedAddress);
            //Assert.IsType<Address>(response);
        }

        /// <summary>
        /// Test CustomerBillingAddressRetrieve
        /// </summary>
        [Fact]
        public void CustomerBillingAddressRetrieveTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.CustomerBillingAddressRetrieve();
            //Assert.IsType<Address>(response);
        }

        /// <summary>
        /// Test CustomerBillingAddressUpdate
        /// </summary>
        [Fact]
        public void CustomerBillingAddressUpdateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Address address = null;
            //var response = instance.CustomerBillingAddressUpdate(address);
            //Assert.IsType<Address>(response);
        }

        /// <summary>
        /// Test CustomerRetrieve
        /// </summary>
        [Fact]
        public void CustomerRetrieveTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.CustomerRetrieve();
            //Assert.IsType<Customer>(response);
        }
    }
}
