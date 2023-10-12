# yago_cloud.api.ModelsApi

## Load the API package
```dart
import 'package:yago_cloud/api.dart';
```

All URIs are relative to *https://yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modelsCreate**](ModelsApi.md#modelscreate) | **POST** /api/models/ | 
[**modelsDestroy**](ModelsApi.md#modelsdestroy) | **DELETE** /api/models/{id}/ | 
[**modelsEmbedOptionsRetrieve**](ModelsApi.md#modelsembedoptionsretrieve) | **GET** /api/models/{slug}/embed/options/ | 
[**modelsGlbDestroy**](ModelsApi.md#modelsglbdestroy) | **DELETE** /api/models/{id}/glb/ | 
[**modelsGlbUpdate**](ModelsApi.md#modelsglbupdate) | **PUT** /api/models/{id}/glb/ | 
[**modelsImageDestroy**](ModelsApi.md#modelsimagedestroy) | **DELETE** /api/models/{id}/image/ | 
[**modelsImageUpdate**](ModelsApi.md#modelsimageupdate) | **PUT** /api/models/{id}/image/ | 
[**modelsList**](ModelsApi.md#modelslist) | **GET** /api/models/ | 
[**modelsModelDestroy**](ModelsApi.md#modelsmodeldestroy) | **DELETE** /api/models/{id}/model/ | 
[**modelsModelUpdate**](ModelsApi.md#modelsmodelupdate) | **PUT** /api/models/{id}/model/ | 
[**modelsPartialUpdate**](ModelsApi.md#modelspartialupdate) | **PATCH** /api/models/{id}/ | 
[**modelsRetrieve**](ModelsApi.md#modelsretrieve) | **GET** /api/models/{id}/ | 
[**modelsUpdate**](ModelsApi.md#modelsupdate) | **PUT** /api/models/{id}/ | 
[**modelsUsdzDestroy**](ModelsApi.md#modelsusdzdestroy) | **DELETE** /api/models/{id}/usdz/ | 
[**modelsUsdzUpdate**](ModelsApi.md#modelsusdzupdate) | **PUT** /api/models/{id}/usdz/ | 


# **modelsCreate**
> ModelCreate modelsCreate(modelCreate)



Add a new model. Change details and translations later via PUT or PATCH.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final ModelCreate modelCreate = ; // ModelCreate | 

try {
    final response = api.modelsCreate(modelCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelCreate** | [**ModelCreate**](ModelCreate.md)|  | 

### Return type

[**ModelCreate**](ModelCreate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsDestroy**
> modelsDestroy(id)



Remove a model. Be cautious, this is permanent!

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this Model.

try {
    api.modelsDestroy(id);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this Model. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsEmbedOptionsRetrieve**
> ModelInfo modelsEmbedOptionsRetrieve(slug)



Model infos for embedding. Loaded by <ar-button> web component.

### Example
```dart
import 'package:yago_cloud/api.dart';

final api = YagoCloud().getModelsApi();
final String slug = slug_example; // String | 

try {
    final response = api.modelsEmbedOptionsRetrieve(slug);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsEmbedOptionsRetrieve: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsGlbDestroy**
> modelsGlbDestroy(id)



Delete a file.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.modelsGlbDestroy(id);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsGlbDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsGlbUpdate**
> FileUpload modelsGlbUpdate(contentDisposition, id, body)



Upload a file. Max size 30MB. Filename is required!

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String contentDisposition = contentDisposition_example; // String | The original filename.
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID identifying this object.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.modelsGlbUpdate(contentDisposition, id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsGlbUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentDisposition** | **String**| The original filename. | [default to 'attachment; filename=name.ext']
 **id** | **String**| A UUID identifying this object. | 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsImageDestroy**
> modelsImageDestroy(id)



Delete an image.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.modelsImageDestroy(id);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsImageDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsImageUpdate**
> FileUpload modelsImageUpdate(contentDisposition, id, body)



Upload an image. Max size 30MB. Filename is required!

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String contentDisposition = contentDisposition_example; // String | The original filename.
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID identifying this object.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.modelsImageUpdate(contentDisposition, id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsImageUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentDisposition** | **String**| The original filename. | [default to 'attachment; filename=name.ext']
 **id** | **String**| A UUID identifying this object. | 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: image/*
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsList**
> List<Model> modelsList(project, status)



Lists all models for all projects the user is a member of. Can be filtered by `project`.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String project = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String status = status_example; // String | DRAFT=In development, READY=Modelling complete, ONLINE=Active use.  * `DRAFT` - Draft * `READY` - Ready * `ONLINE` - Online

try {
    final response = api.modelsList(project, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **String**|  | [optional] 
 **status** | **String**| DRAFT=In development, READY=Modelling complete, ONLINE=Active use.  * `DRAFT` - Draft * `READY` - Ready * `ONLINE` - Online | [optional] 

### Return type

[**List&lt;Model&gt;**](Model.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsModelDestroy**
> modelsModelDestroy(id)



Delete a file.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.modelsModelDestroy(id);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsModelDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsModelUpdate**
> FileUpload modelsModelUpdate(contentDisposition, id, body)



Upload a file. Max size 30MB. Filename is required!

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String contentDisposition = contentDisposition_example; // String | The original filename.
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID identifying this object.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.modelsModelUpdate(contentDisposition, id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsModelUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentDisposition** | **String**| The original filename. | [default to 'attachment; filename=name.ext']
 **id** | **String**| A UUID identifying this object. | 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsPartialUpdate**
> ModelUpdate modelsPartialUpdate(id, patchedModelUpdate)



Change as subset of model details.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this Model.
final PatchedModelUpdate patchedModelUpdate = ; // PatchedModelUpdate | 

try {
    final response = api.modelsPartialUpdate(id, patchedModelUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this Model. | 
 **patchedModelUpdate** | [**PatchedModelUpdate**](PatchedModelUpdate.md)|  | [optional] 

### Return type

[**ModelUpdate**](ModelUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsRetrieve**
> Model modelsRetrieve(id)



Details of a single model.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this Model.

try {
    final response = api.modelsRetrieve(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this Model. | 

### Return type

[**Model**](Model.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsUpdate**
> ModelUpdate modelsUpdate(id, modelUpdate)



Change model details. Translated field are all optional expcet for `name_de`.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this Model.
final ModelUpdate modelUpdate = ; // ModelUpdate | 

try {
    final response = api.modelsUpdate(id, modelUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this Model. | 
 **modelUpdate** | [**ModelUpdate**](ModelUpdate.md)|  | [optional] 

### Return type

[**ModelUpdate**](ModelUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsUsdzDestroy**
> modelsUsdzDestroy(id)



Delete a file.

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.modelsUsdzDestroy(id);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsUsdzDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelsUsdzUpdate**
> FileUpload modelsUsdzUpdate(contentDisposition, id, body)



Upload a file. Max size 30MB. Filename is required!

### Example
```dart
import 'package:yago_cloud/api.dart';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';

final api = YagoCloud().getModelsApi();
final String contentDisposition = contentDisposition_example; // String | The original filename.
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID identifying this object.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.modelsUsdzUpdate(contentDisposition, id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModelsApi->modelsUsdzUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentDisposition** | **String**| The original filename. | [default to 'attachment; filename=name.ext']
 **id** | **String**| A UUID identifying this object. | 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

