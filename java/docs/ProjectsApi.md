# ProjectsApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectsCreate**](ProjectsApi.md#projectsCreate) | **POST** /api/projects/ | 
[**projectsDestroy**](ProjectsApi.md#projectsDestroy) | **DELETE** /api/projects/{id}/ | 
[**projectsImageDestroy**](ProjectsApi.md#projectsImageDestroy) | **DELETE** /api/projects/{id}/image/ | 
[**projectsImageUpdate**](ProjectsApi.md#projectsImageUpdate) | **PUT** /api/projects/{id}/image/ | 
[**projectsList**](ProjectsApi.md#projectsList) | **GET** /api/projects/ | 
[**projectsPartialUpdate**](ProjectsApi.md#projectsPartialUpdate) | **PATCH** /api/projects/{id}/ | 
[**projectsRetrieve**](ProjectsApi.md#projectsRetrieve) | **GET** /api/projects/{id}/ | 
[**projectsUpdate**](ProjectsApi.md#projectsUpdate) | **PUT** /api/projects/{id}/ | 


<a name="projectsCreate"></a>
# **projectsCreate**
> Project projectsCreate(projectCreate)



Add a new project. Change details later via PUT or PATCH.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    ProjectCreate projectCreate = new ProjectCreate(); // ProjectCreate | 
    try {
      Project result = apiInstance.projectsCreate(projectCreate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsCreate");
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
**201** |  |  -  |

<a name="projectsDestroy"></a>
# **projectsDestroy**
> projectsDestroy(id)



Remove a project. Only members with role OWNER can do this.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Project.
    try {
      apiInstance.projectsDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsDestroy");
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
 **id** | **UUID**| A UUID string identifying this Project. |

### Return type

null (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No response body |  -  |

<a name="projectsImageDestroy"></a>
# **projectsImageDestroy**
> projectsImageDestroy(id)



Delete an image.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      apiInstance.projectsImageDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsImageDestroy");
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

### Return type

null (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No response body |  -  |

<a name="projectsImageUpdate"></a>
# **projectsImageUpdate**
> FileUpload projectsImageUpdate(contentDisposition, id, body)



Upload an image. Max size 30MB. Filename is required!

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    String contentDisposition = "attachment; filename=name.ext"; // String | The original filename.
    UUID id = UUID.randomUUID(); // UUID | A UUID identifying this object.
    File body = new File("/path/to/file"); // File | 
    try {
      FileUpload result = apiInstance.projectsImageUpdate(contentDisposition, id, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsImageUpdate");
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
 **contentDisposition** | **String**| The original filename. | [default to attachment; filename&#x3D;name.ext]
 **id** | **UUID**| A UUID identifying this object. |
 **body** | **File**|  | [optional]

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
**201** |  |  -  |

<a name="projectsList"></a>
# **projectsList**
> List&lt;Project&gt; projectsList()



Lists all projects the user is a member of.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    try {
      List<Project> result = apiInstance.projectsList();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
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
**200** |  |  -  |

<a name="projectsPartialUpdate"></a>
# **projectsPartialUpdate**
> ProjectUpdate projectsPartialUpdate(id, patchedProjectUpdate)



Change as subset of project details.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Project.
    PatchedProjectUpdate patchedProjectUpdate = new PatchedProjectUpdate(); // PatchedProjectUpdate | 
    try {
      ProjectUpdate result = apiInstance.projectsPartialUpdate(id, patchedProjectUpdate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsPartialUpdate");
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
 **id** | **UUID**| A UUID string identifying this Project. |
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
**200** |  |  -  |

<a name="projectsRetrieve"></a>
# **projectsRetrieve**
> Project projectsRetrieve(id)



Details of a single project.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Project.
    try {
      Project result = apiInstance.projectsRetrieve(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsRetrieve");
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
 **id** | **UUID**| A UUID string identifying this Project. |

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
**200** |  |  -  |

<a name="projectsUpdate"></a>
# **projectsUpdate**
> ProjectUpdate projectsUpdate(id, projectUpdate)



Change project and settings.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ProjectsApi;

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

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Project.
    ProjectUpdate projectUpdate = new ProjectUpdate(); // ProjectUpdate | 
    try {
      ProjectUpdate result = apiInstance.projectsUpdate(id, projectUpdate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#projectsUpdate");
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
 **id** | **UUID**| A UUID string identifying this Project. |
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
**200** |  |  -  |

