# Genie.Api.ProjectsApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ProjectsCreate**](ProjectsApi.md#projectscreate) | **POST** /api/projects/ | 
[**ProjectsDestroy**](ProjectsApi.md#projectsdestroy) | **DELETE** /api/projects/{id}/ | 
[**ProjectsImageDestroy**](ProjectsApi.md#projectsimagedestroy) | **DELETE** /api/projects/{id}/image/ | 
[**ProjectsImageUpdate**](ProjectsApi.md#projectsimageupdate) | **PUT** /api/projects/{id}/image/ | 
[**ProjectsList**](ProjectsApi.md#projectslist) | **GET** /api/projects/ | 
[**ProjectsPartialUpdate**](ProjectsApi.md#projectspartialupdate) | **PATCH** /api/projects/{id}/ | 
[**ProjectsRetrieve**](ProjectsApi.md#projectsretrieve) | **GET** /api/projects/{id}/ | 
[**ProjectsUpdate**](ProjectsApi.md#projectsupdate) | **PUT** /api/projects/{id}/ | 


<a name="projectscreate"></a>
# **ProjectsCreate**
> Project ProjectsCreate (ProjectCreate projectCreate)



Add a new project. Change details later via PUT or PATCH.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);
            var projectCreate = new ProjectCreate(); // ProjectCreate | 

            try
            {
                Project result = apiInstance.ProjectsCreate(projectCreate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsCreate: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectCreate** | [**ProjectCreate**](ProjectCreate.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="projectsdestroy"></a>
# **ProjectsDestroy**
> void ProjectsDestroy (Guid id)



Remove a project. Only members with role OWNER can do this.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsDestroyExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Project.

            try
            {
                apiInstance.ProjectsDestroy(id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsDestroy: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Guid**| A UUID string identifying this Project. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No response body |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="projectsimagedestroy"></a>
# **ProjectsImageDestroy**
> void ProjectsImageDestroy (Guid id)



Delete an image.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsImageDestroyExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | 

            try
            {
                apiInstance.ProjectsImageDestroy(id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsImageDestroy: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Guid**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No response body |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="projectsimageupdate"></a>
# **ProjectsImageUpdate**
> FileUpload ProjectsImageUpdate (string contentDisposition, Guid id, System.IO.Stream body = null)



Upload an image. Max size 30MB. Filename is required!

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsImageUpdateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);
            var contentDisposition = contentDisposition_example;  // string | The original filename. (default to "attachment; filename=name.ext")
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID identifying this object.
            var body = BINARY_DATA_HERE;  // System.IO.Stream |  (optional) 

            try
            {
                FileUpload result = apiInstance.ProjectsImageUpdate(contentDisposition, id, body);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsImageUpdate: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentDisposition** | **string**| The original filename. | [default to &quot;attachment; filename&#x3D;name.ext&quot;]
 **id** | **Guid**| A UUID identifying this object. | 
 **body** | **System.IO.Stream****System.IO.Stream**|  | [optional] 

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: image/_*
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="projectslist"></a>
# **ProjectsList**
> List&lt;Project&gt; ProjectsList ()



Lists all projects the user is a member of.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsListExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);

            try
            {
                List<Project> result = apiInstance.ProjectsList();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsList: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Project&gt;**](Project.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="projectspartialupdate"></a>
# **ProjectsPartialUpdate**
> ProjectUpdate ProjectsPartialUpdate (Guid id, PatchedProjectUpdate patchedProjectUpdate = null)



Change as subset of project details.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsPartialUpdateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Project.
            var patchedProjectUpdate = new PatchedProjectUpdate(); // PatchedProjectUpdate |  (optional) 

            try
            {
                ProjectUpdate result = apiInstance.ProjectsPartialUpdate(id, patchedProjectUpdate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsPartialUpdate: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Guid**| A UUID string identifying this Project. | 
 **patchedProjectUpdate** | [**PatchedProjectUpdate**](PatchedProjectUpdate.md)|  | [optional] 

### Return type

[**ProjectUpdate**](ProjectUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="projectsretrieve"></a>
# **ProjectsRetrieve**
> Project ProjectsRetrieve (Guid id)



Details of a single project.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsRetrieveExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Project.

            try
            {
                Project result = apiInstance.ProjectsRetrieve(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsRetrieve: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Guid**| A UUID string identifying this Project. | 

### Return type

[**Project**](Project.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="projectsupdate"></a>
# **ProjectsUpdate**
> ProjectUpdate ProjectsUpdate (Guid id, ProjectUpdate projectUpdate)



Change project and settings.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ProjectsUpdateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://genie-ar.ch";
            // Configure API key authorization: cookieAuth
            config.AddApiKey("sessionid", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("sessionid", "Bearer");
            // Configure Bearer token for authorization: jwtAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";
            // Configure API key authorization: tokenAuth
            config.AddApiKey("Authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Authorization", "Bearer");

            var apiInstance = new ProjectsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Project.
            var projectUpdate = new ProjectUpdate(); // ProjectUpdate | 

            try
            {
                ProjectUpdate result = apiInstance.ProjectsUpdate(id, projectUpdate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ProjectsApi.ProjectsUpdate: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Guid**| A UUID string identifying this Project. | 
 **projectUpdate** | [**ProjectUpdate**](ProjectUpdate.md)|  | 

### Return type

[**ProjectUpdate**](ProjectUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

