# StatsApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statsGlobalCreate**](StatsApi.md#statsGlobalCreate) | **POST** /api/stats/global/ | 
[**statsProjectCreate**](StatsApi.md#statsProjectCreate) | **POST** /api/stats/project/{id}/ | 


<a name="statsGlobalCreate"></a>
# **statsGlobalCreate**
> SummaryStats statsGlobalCreate(globalStatistics)



Traffic analytics over all projects and models.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.StatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");
    
    // Configure API key authorization: cookieAuth
    ApiKeyAuth cookieAuth = (ApiKeyAuth) defaultClient.getAuthentication("cookieAuth");
    cookieAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //cookieAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: jwtAuth
    HttpBearerAuth jwtAuth = (HttpBearerAuth) defaultClient.getAuthentication("jwtAuth");
    jwtAuth.setBearerToken("BEARER TOKEN");

    // Configure API key authorization: tokenAuth
    ApiKeyAuth tokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("tokenAuth");
    tokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //tokenAuth.setApiKeyPrefix("Token");

    StatsApi apiInstance = new StatsApi(defaultClient);
    GlobalStatistics globalStatistics = new GlobalStatistics(); // GlobalStatistics | 
    try {
      SummaryStats result = apiInstance.statsGlobalCreate(globalStatistics);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatsApi#statsGlobalCreate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
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
**200** |  |  -  |
**201** |  |  -  |

<a name="statsProjectCreate"></a>
# **statsProjectCreate**
> SummaryStats statsProjectCreate(id, projectsStatistics)



Traffic for single project and all models of that project. Raises 404 if the user is not allowed to view data of this project.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.StatsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");
    
    // Configure API key authorization: cookieAuth
    ApiKeyAuth cookieAuth = (ApiKeyAuth) defaultClient.getAuthentication("cookieAuth");
    cookieAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //cookieAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: jwtAuth
    HttpBearerAuth jwtAuth = (HttpBearerAuth) defaultClient.getAuthentication("jwtAuth");
    jwtAuth.setBearerToken("BEARER TOKEN");

    // Configure API key authorization: tokenAuth
    ApiKeyAuth tokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("tokenAuth");
    tokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //tokenAuth.setApiKeyPrefix("Token");

    StatsApi apiInstance = new StatsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    ProjectsStatistics projectsStatistics = new ProjectsStatistics(); // ProjectsStatistics | 
    try {
      SummaryStats result = apiInstance.statsProjectCreate(id, projectsStatistics);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatsApi#statsProjectCreate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID**|  |
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
**200** |  |  -  |
**201** |  |  -  |

