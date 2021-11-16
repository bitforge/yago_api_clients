# Genie.Api.StatsApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**StatsGlobalCreate**](StatsApi.md#statsglobalcreate) | **POST** /api/stats/global/ | 
[**StatsProjectCreate**](StatsApi.md#statsprojectcreate) | **POST** /api/stats/project/{id}/ | 


<a name="statsglobalcreate"></a>
# **StatsGlobalCreate**
> SummaryStats StatsGlobalCreate (GlobalStatistics globalStatistics)



Traffic analytics over all projects and models.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class StatsGlobalCreateExample
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

            var apiInstance = new StatsApi(config);
            var globalStatistics = new GlobalStatistics(); // GlobalStatistics | 

            try
            {
                SummaryStats result = apiInstance.StatsGlobalCreate(globalStatistics);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatsApi.StatsGlobalCreate: " + e.Message );
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
 **globalStatistics** | [**GlobalStatistics**](GlobalStatistics.md)|  | 

### Return type

[**SummaryStats**](SummaryStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="statsprojectcreate"></a>
# **StatsProjectCreate**
> SummaryStats StatsProjectCreate (Guid id, ProjectsStatistics projectsStatistics)



Traffic for single project and all models of that project. Raises 404 if the user is not allowed to view data of this project.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class StatsProjectCreateExample
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

            var apiInstance = new StatsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | 
            var projectsStatistics = new ProjectsStatistics(); // ProjectsStatistics | 

            try
            {
                SummaryStats result = apiInstance.StatsProjectCreate(id, projectsStatistics);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StatsApi.StatsProjectCreate: " + e.Message );
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
 **projectsStatistics** | [**ProjectsStatistics**](ProjectsStatistics.md)|  | 

### Return type

[**SummaryStats**](SummaryStats.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

