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

using Genie.Client;
using Genie.Api;
// uncomment below to import models
//using Genie.Model;

namespace Genie.Test.Api
{
    /// <summary>
    ///  Class for testing ProjectsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class ProjectsApiTests : IDisposable
    {
        private ProjectsApi instance;

        public ProjectsApiTests()
        {
            instance = new ProjectsApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of ProjectsApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' ProjectsApi
            //Assert.IsType<ProjectsApi>(instance);
        }

        /// <summary>
        /// Test ProjectsCreate
        /// </summary>
        [Fact]
        public void ProjectsCreateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //ProjectCreate projectCreate = null;
            //var response = instance.ProjectsCreate(projectCreate);
            //Assert.IsType<Project>(response);
        }

        /// <summary>
        /// Test ProjectsDestroy
        /// </summary>
        [Fact]
        public void ProjectsDestroyTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Guid id = null;
            //instance.ProjectsDestroy(id);
        }

        /// <summary>
        /// Test ProjectsImageDestroy
        /// </summary>
        [Fact]
        public void ProjectsImageDestroyTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Guid id = null;
            //instance.ProjectsImageDestroy(id);
        }

        /// <summary>
        /// Test ProjectsImageUpdate
        /// </summary>
        [Fact]
        public void ProjectsImageUpdateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string contentDisposition = null;
            //Guid id = null;
            //System.IO.Stream body = null;
            //var response = instance.ProjectsImageUpdate(contentDisposition, id, body);
            //Assert.IsType<FileUpload>(response);
        }

        /// <summary>
        /// Test ProjectsList
        /// </summary>
        [Fact]
        public void ProjectsListTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.ProjectsList();
            //Assert.IsType<List<Project>>(response);
        }

        /// <summary>
        /// Test ProjectsPartialUpdate
        /// </summary>
        [Fact]
        public void ProjectsPartialUpdateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Guid id = null;
            //PatchedProjectUpdate patchedProjectUpdate = null;
            //var response = instance.ProjectsPartialUpdate(id, patchedProjectUpdate);
            //Assert.IsType<ProjectUpdate>(response);
        }

        /// <summary>
        /// Test ProjectsRetrieve
        /// </summary>
        [Fact]
        public void ProjectsRetrieveTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Guid id = null;
            //var response = instance.ProjectsRetrieve(id);
            //Assert.IsType<Project>(response);
        }

        /// <summary>
        /// Test ProjectsUpdate
        /// </summary>
        [Fact]
        public void ProjectsUpdateTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Guid id = null;
            //ProjectUpdate projectUpdate = null;
            //var response = instance.ProjectsUpdate(id, projectUpdate);
            //Assert.IsType<ProjectUpdate>(response);
        }
    }
}
