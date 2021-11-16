# Genie.Api.ModelsApi

All URIs are relative to *https://genie-ar.ch*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ModelsCreate**](ModelsApi.md#modelscreate) | **POST** /api/models/ | 
[**ModelsDestroy**](ModelsApi.md#modelsdestroy) | **DELETE** /api/models/{id}/ | 
[**ModelsGlbDestroy**](ModelsApi.md#modelsglbdestroy) | **DELETE** /api/models/{id}/glb/ | 
[**ModelsGlbUpdate**](ModelsApi.md#modelsglbupdate) | **PUT** /api/models/{id}/glb/ | 
[**ModelsImageDestroy**](ModelsApi.md#modelsimagedestroy) | **DELETE** /api/models/{id}/image/ | 
[**ModelsImageUpdate**](ModelsApi.md#modelsimageupdate) | **PUT** /api/models/{id}/image/ | 
[**ModelsList**](ModelsApi.md#modelslist) | **GET** /api/models/ | 
[**ModelsPartialUpdate**](ModelsApi.md#modelspartialupdate) | **PATCH** /api/models/{id}/ | 
[**ModelsRetrieve**](ModelsApi.md#modelsretrieve) | **GET** /api/models/{id}/ | 
[**ModelsUpdate**](ModelsApi.md#modelsupdate) | **PUT** /api/models/{id}/ | 
[**ModelsUsdzDestroy**](ModelsApi.md#modelsusdzdestroy) | **DELETE** /api/models/{id}/usdz/ | 
[**ModelsUsdzUpdate**](ModelsApi.md#modelsusdzupdate) | **PUT** /api/models/{id}/usdz/ | 


<a name="modelscreate"></a>
# **ModelsCreate**
> ModelCreate ModelsCreate (ModelCreate modelCreate)



Add a new model. Change details and translations later via PUT or PATCH.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsCreateExample
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

            var apiInstance = new ModelsApi(config);
            var modelCreate = new ModelCreate(); // ModelCreate | 

            try
            {
                ModelCreate result = apiInstance.ModelsCreate(modelCreate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsCreate: " + e.Message );
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
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modelsdestroy"></a>
# **ModelsDestroy**
> void ModelsDestroy (Guid id)



Remove a model. Be cautious, this is permanent!

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsDestroyExample
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

            var apiInstance = new ModelsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Model.

            try
            {
                apiInstance.ModelsDestroy(id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsDestroy: " + e.Message );
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
 **id** | **Guid**| A UUID string identifying this Model. | 

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

<a name="modelsglbdestroy"></a>
# **ModelsGlbDestroy**
> void ModelsGlbDestroy (Guid id)



Delete a file.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsGlbDestroyExample
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

            var apiInstance = new ModelsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | 

            try
            {
                apiInstance.ModelsGlbDestroy(id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsGlbDestroy: " + e.Message );
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

<a name="modelsglbupdate"></a>
# **ModelsGlbUpdate**
> FileUpload ModelsGlbUpdate (string contentDisposition, Guid id, System.IO.Stream body = null)



Upload a file. Max size 30MB. Filename is required!

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsGlbUpdateExample
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

            var apiInstance = new ModelsApi(config);
            var contentDisposition = contentDisposition_example;  // string | The original filename. (default to "attachment; filename=name.ext")
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID identifying this object.
            var body = BINARY_DATA_HERE;  // System.IO.Stream |  (optional) 

            try
            {
                FileUpload result = apiInstance.ModelsGlbUpdate(contentDisposition, id, body);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsGlbUpdate: " + e.Message );
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

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modelsimagedestroy"></a>
# **ModelsImageDestroy**
> void ModelsImageDestroy (Guid id)



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
    public class ModelsImageDestroyExample
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

            var apiInstance = new ModelsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | 

            try
            {
                apiInstance.ModelsImageDestroy(id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsImageDestroy: " + e.Message );
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

<a name="modelsimageupdate"></a>
# **ModelsImageUpdate**
> FileUpload ModelsImageUpdate (string contentDisposition, Guid id, System.IO.Stream body = null)



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
    public class ModelsImageUpdateExample
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

            var apiInstance = new ModelsApi(config);
            var contentDisposition = contentDisposition_example;  // string | The original filename. (default to "attachment; filename=name.ext")
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID identifying this object.
            var body = BINARY_DATA_HERE;  // System.IO.Stream |  (optional) 

            try
            {
                FileUpload result = apiInstance.ModelsImageUpdate(contentDisposition, id, body);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsImageUpdate: " + e.Message );
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

<a name="modelslist"></a>
# **ModelsList**
> List&lt;Model&gt; ModelsList (Guid? project = null, string status = null)



Lists all models for all projects the user is a member of. Can be filtered by `project`.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsListExample
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

            var apiInstance = new ModelsApi(config);
            var project = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid? |  (optional) 
            var status = status_example;  // string | DRAFT=In development, READY=Modelling complete, ONLINE=Active use. (optional) 

            try
            {
                List<Model> result = apiInstance.ModelsList(project, status);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsList: " + e.Message );
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
 **project** | **Guid?**|  | [optional] 
 **status** | **string**| DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use. | [optional] 

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
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modelspartialupdate"></a>
# **ModelsPartialUpdate**
> ModelUpdate ModelsPartialUpdate (Guid id, PatchedModelUpdate patchedModelUpdate = null)



Change as subset of model details.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsPartialUpdateExample
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

            var apiInstance = new ModelsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Model.
            var patchedModelUpdate = new PatchedModelUpdate(); // PatchedModelUpdate |  (optional) 

            try
            {
                ModelUpdate result = apiInstance.ModelsPartialUpdate(id, patchedModelUpdate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsPartialUpdate: " + e.Message );
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
 **id** | **Guid**| A UUID string identifying this Model. | 
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
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modelsretrieve"></a>
# **ModelsRetrieve**
> Model ModelsRetrieve (Guid id)



Details of a single model.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsRetrieveExample
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

            var apiInstance = new ModelsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Model.

            try
            {
                Model result = apiInstance.ModelsRetrieve(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsRetrieve: " + e.Message );
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
 **id** | **Guid**| A UUID string identifying this Model. | 

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
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modelsupdate"></a>
# **ModelsUpdate**
> ModelUpdate ModelsUpdate (Guid id, ModelUpdate modelUpdate = null)



Change model details. Translated field are all optional expcet for `name_de`.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsUpdateExample
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

            var apiInstance = new ModelsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID string identifying this Model.
            var modelUpdate = new ModelUpdate(); // ModelUpdate |  (optional) 

            try
            {
                ModelUpdate result = apiInstance.ModelsUpdate(id, modelUpdate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsUpdate: " + e.Message );
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
 **id** | **Guid**| A UUID string identifying this Model. | 
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
| **200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modelsusdzdestroy"></a>
# **ModelsUsdzDestroy**
> void ModelsUsdzDestroy (Guid id)



Delete a file.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsUsdzDestroyExample
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

            var apiInstance = new ModelsApi(config);
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | 

            try
            {
                apiInstance.ModelsUsdzDestroy(id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsUsdzDestroy: " + e.Message );
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

<a name="modelsusdzupdate"></a>
# **ModelsUsdzUpdate**
> FileUpload ModelsUsdzUpdate (string contentDisposition, Guid id, System.IO.Stream body = null)



Upload a file. Max size 30MB. Filename is required!

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Genie.Api;
using Genie.Client;
using Genie.Model;

namespace Example
{
    public class ModelsUsdzUpdateExample
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

            var apiInstance = new ModelsApi(config);
            var contentDisposition = contentDisposition_example;  // string | The original filename. (default to "attachment; filename=name.ext")
            var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d;  // Guid | A UUID identifying this object.
            var body = BINARY_DATA_HERE;  // System.IO.Stream |  (optional) 

            try
            {
                FileUpload result = apiInstance.ModelsUsdzUpdate(contentDisposition, id, body);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling ModelsApi.ModelsUsdzUpdate: " + e.Message );
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

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

