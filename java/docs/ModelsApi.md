# ModelsApi

All URIs are relative to *https://dev.yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modelsCreate**](ModelsApi.md#modelsCreate) | **POST** /api/models/ | 
[**modelsDestroy**](ModelsApi.md#modelsDestroy) | **DELETE** /api/models/{id}/ | 
[**modelsEmbedOptionsRetrieve**](ModelsApi.md#modelsEmbedOptionsRetrieve) | **GET** /api/models/{slug}/embed/options/ | 
[**modelsGlbDestroy**](ModelsApi.md#modelsGlbDestroy) | **DELETE** /api/models/{id}/glb/ | 
[**modelsGlbUpdate**](ModelsApi.md#modelsGlbUpdate) | **PUT** /api/models/{id}/glb/ | 
[**modelsImageDestroy**](ModelsApi.md#modelsImageDestroy) | **DELETE** /api/models/{id}/image/ | 
[**modelsImageUpdate**](ModelsApi.md#modelsImageUpdate) | **PUT** /api/models/{id}/image/ | 
[**modelsList**](ModelsApi.md#modelsList) | **GET** /api/models/ | 
[**modelsPartialUpdate**](ModelsApi.md#modelsPartialUpdate) | **PATCH** /api/models/{id}/ | 
[**modelsRetrieve**](ModelsApi.md#modelsRetrieve) | **GET** /api/models/{id}/ | 
[**modelsUnityAndroidDestroy**](ModelsApi.md#modelsUnityAndroidDestroy) | **DELETE** /api/models/{id}/unity_android/ | 
[**modelsUnityAndroidUpdate**](ModelsApi.md#modelsUnityAndroidUpdate) | **PUT** /api/models/{id}/unity_android/ | 
[**modelsUnityIosDestroy**](ModelsApi.md#modelsUnityIosDestroy) | **DELETE** /api/models/{id}/unity_ios/ | 
[**modelsUnityIosUpdate**](ModelsApi.md#modelsUnityIosUpdate) | **PUT** /api/models/{id}/unity_ios/ | 
[**modelsUpdate**](ModelsApi.md#modelsUpdate) | **PUT** /api/models/{id}/ | 
[**modelsUsdzDestroy**](ModelsApi.md#modelsUsdzDestroy) | **DELETE** /api/models/{id}/usdz/ | 
[**modelsUsdzUpdate**](ModelsApi.md#modelsUsdzUpdate) | **PUT** /api/models/{id}/usdz/ | 


<a name="modelsCreate"></a>
# **modelsCreate**
> ModelCreate modelsCreate(modelCreate)



Add a new model. Change details and translations later via PUT or PATCH.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    ModelCreate modelCreate = new ModelCreate(); // ModelCreate | 
    try {
      ModelCreate result = apiInstance.modelsCreate(modelCreate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsCreate");
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
 **modelCreate** | [**ModelCreate**](ModelCreate.md)|  |

### Return type

[**ModelCreate**](ModelCreate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

<a name="modelsDestroy"></a>
# **modelsDestroy**
> modelsDestroy(id)



Remove a model. Be cautious, this is permanent!

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Model.
    try {
      apiInstance.modelsDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsDestroy");
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
 **id** | **UUID**| A UUID string identifying this Model. |

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

<a name="modelsEmbedOptionsRetrieve"></a>
# **modelsEmbedOptionsRetrieve**
> ModelInfo modelsEmbedOptionsRetrieve(slug)



Model infos for embedding. Loaded by &lt;ar-button&gt; web component.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://dev.yago.cloud");

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    String slug = "slug_example"; // String | 
    try {
      ModelInfo result = apiInstance.modelsEmbedOptionsRetrieve(slug);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsEmbedOptionsRetrieve");
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
 **slug** | **String**|  |

### Return type

[**ModelInfo**](ModelInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

<a name="modelsGlbDestroy"></a>
# **modelsGlbDestroy**
> modelsGlbDestroy(id)



Delete a file.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      apiInstance.modelsGlbDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsGlbDestroy");
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

<a name="modelsGlbUpdate"></a>
# **modelsGlbUpdate**
> FileUpload modelsGlbUpdate(contentDisposition, id, body)



Upload a file. Max size 30MB. Filename is required!

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    String contentDisposition = "attachment; filename=name.ext"; // String | The original filename.
    UUID id = UUID.randomUUID(); // UUID | A UUID identifying this object.
    File body = new File("/path/to/file"); // File | 
    try {
      FileUpload result = apiInstance.modelsGlbUpdate(contentDisposition, id, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsGlbUpdate");
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

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

<a name="modelsImageDestroy"></a>
# **modelsImageDestroy**
> modelsImageDestroy(id)



Delete an image.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      apiInstance.modelsImageDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsImageDestroy");
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

<a name="modelsImageUpdate"></a>
# **modelsImageUpdate**
> FileUpload modelsImageUpdate(contentDisposition, id, body)



Upload an image. Max size 30MB. Filename is required!

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    String contentDisposition = "attachment; filename=name.ext"; // String | The original filename.
    UUID id = UUID.randomUUID(); // UUID | A UUID identifying this object.
    File body = new File("/path/to/file"); // File | 
    try {
      FileUpload result = apiInstance.modelsImageUpdate(contentDisposition, id, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsImageUpdate");
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

<a name="modelsList"></a>
# **modelsList**
> List&lt;Model&gt; modelsList(project, status)



Lists all models for all projects the user is a member of. Can be filtered by &#x60;project&#x60;.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID project = UUID.randomUUID(); // UUID | 
    String status = "DRAFT"; // String | DRAFT=In development, READY=Modelling complete, ONLINE=Active use.
    try {
      List<Model> result = apiInstance.modelsList(project, status);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsList");
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
 **project** | **UUID**|  | [optional]
 **status** | **String**| DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use. | [optional] [enum: DRAFT, ONLINE, READY]

### Return type

[**List&lt;Model&gt;**](Model.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

<a name="modelsPartialUpdate"></a>
# **modelsPartialUpdate**
> ModelUpdate modelsPartialUpdate(id, patchedModelUpdate)



Change as subset of model details.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Model.
    PatchedModelUpdate patchedModelUpdate = new PatchedModelUpdate(); // PatchedModelUpdate | 
    try {
      ModelUpdate result = apiInstance.modelsPartialUpdate(id, patchedModelUpdate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsPartialUpdate");
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
 **id** | **UUID**| A UUID string identifying this Model. |
 **patchedModelUpdate** | [**PatchedModelUpdate**](PatchedModelUpdate.md)|  | [optional]

### Return type

[**ModelUpdate**](ModelUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

<a name="modelsRetrieve"></a>
# **modelsRetrieve**
> Model modelsRetrieve(id)



Details of a single model.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Model.
    try {
      Model result = apiInstance.modelsRetrieve(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsRetrieve");
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
 **id** | **UUID**| A UUID string identifying this Model. |

### Return type

[**Model**](Model.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

<a name="modelsUnityAndroidDestroy"></a>
# **modelsUnityAndroidDestroy**
> modelsUnityAndroidDestroy(id)



Delete a file.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      apiInstance.modelsUnityAndroidDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsUnityAndroidDestroy");
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

<a name="modelsUnityAndroidUpdate"></a>
# **modelsUnityAndroidUpdate**
> FileUpload modelsUnityAndroidUpdate(contentDisposition, id, body)



Upload a file. Max size 30MB. Filename is required!

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    String contentDisposition = "attachment; filename=name.ext"; // String | The original filename.
    UUID id = UUID.randomUUID(); // UUID | A UUID identifying this object.
    File body = new File("/path/to/file"); // File | 
    try {
      FileUpload result = apiInstance.modelsUnityAndroidUpdate(contentDisposition, id, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsUnityAndroidUpdate");
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

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

<a name="modelsUnityIosDestroy"></a>
# **modelsUnityIosDestroy**
> modelsUnityIosDestroy(id)



Delete a file.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      apiInstance.modelsUnityIosDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsUnityIosDestroy");
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

<a name="modelsUnityIosUpdate"></a>
# **modelsUnityIosUpdate**
> FileUpload modelsUnityIosUpdate(contentDisposition, id, body)



Upload a file. Max size 30MB. Filename is required!

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    String contentDisposition = "attachment; filename=name.ext"; // String | The original filename.
    UUID id = UUID.randomUUID(); // UUID | A UUID identifying this object.
    File body = new File("/path/to/file"); // File | 
    try {
      FileUpload result = apiInstance.modelsUnityIosUpdate(contentDisposition, id, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsUnityIosUpdate");
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

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

<a name="modelsUpdate"></a>
# **modelsUpdate**
> ModelUpdate modelsUpdate(id, modelUpdate)



Change model details. Translated field are all optional expcet for &#x60;name_de&#x60;.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | A UUID string identifying this Model.
    ModelUpdate modelUpdate = new ModelUpdate(); // ModelUpdate | 
    try {
      ModelUpdate result = apiInstance.modelsUpdate(id, modelUpdate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsUpdate");
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
 **id** | **UUID**| A UUID string identifying this Model. |
 **modelUpdate** | [**ModelUpdate**](ModelUpdate.md)|  | [optional]

### Return type

[**ModelUpdate**](ModelUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth), [tokenAuth](../README.md#tokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |

<a name="modelsUsdzDestroy"></a>
# **modelsUsdzDestroy**
> modelsUsdzDestroy(id)



Delete a file.

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      apiInstance.modelsUsdzDestroy(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsUsdzDestroy");
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

<a name="modelsUsdzUpdate"></a>
# **modelsUsdzUpdate**
> FileUpload modelsUsdzUpdate(contentDisposition, id, body)



Upload a file. Max size 30MB. Filename is required!

### Example
```java
// Import classes:
import yago.client.ApiClient;
import yago.client.ApiException;
import yago.client.Configuration;
import yago.client.auth.*;
import yago.client.models.*;
import yago.client.apis.ModelsApi;

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

    ModelsApi apiInstance = new ModelsApi(defaultClient);
    String contentDisposition = "attachment; filename=name.ext"; // String | The original filename.
    UUID id = UUID.randomUUID(); // UUID | A UUID identifying this object.
    File body = new File("/path/to/file"); // File | 
    try {
      FileUpload result = apiInstance.modelsUsdzUpdate(contentDisposition, id, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ModelsApi#modelsUsdzUpdate");
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

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** |  |  -  |

