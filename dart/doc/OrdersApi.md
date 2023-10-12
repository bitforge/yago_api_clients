# yago_cloud.api.OrdersApi

## Load the API package
```dart
import 'package:yago_cloud/api.dart';
```

All URIs are relative to *https://yago.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersCommentsCreate**](OrdersApi.md#orderscommentscreate) | **POST** /api/orders/{order_id}/comments/ | 
[**ordersCommentsList**](OrdersApi.md#orderscommentslist) | **GET** /api/orders/{order_id}/comments/ | 
[**ordersCreate**](OrdersApi.md#orderscreate) | **POST** /api/orders/ | 
[**ordersDestroy**](OrdersApi.md#ordersdestroy) | **DELETE** /api/orders/{id}/ | 
[**ordersList**](OrdersApi.md#orderslist) | **GET** /api/orders/ | 
[**ordersModelsCommentsCreate**](OrdersApi.md#ordersmodelscommentscreate) | **POST** /api/orders/{order_id}/models/{id}/comments/ | 
[**ordersModelsCommentsList**](OrdersApi.md#ordersmodelscommentslist) | **GET** /api/orders/{order_id}/models/{id}/comments/ | 
[**ordersModelsCreate**](OrdersApi.md#ordersmodelscreate) | **POST** /api/orders/{order_id}/models/ | 
[**ordersModelsDestroy**](OrdersApi.md#ordersmodelsdestroy) | **DELETE** /api/orders/{order_id}/models/{id}/ | 
[**ordersModelsFilesDestroy**](OrdersApi.md#ordersmodelsfilesdestroy) | **DELETE** /api/orders/{order_id}/models/{id}/files/{file_id}/ | 
[**ordersModelsFilesList**](OrdersApi.md#ordersmodelsfileslist) | **GET** /api/orders/{order_id}/models/{id}/files/ | 
[**ordersModelsFilesUpdate**](OrdersApi.md#ordersmodelsfilesupdate) | **PUT** /api/orders/{order_id}/models/{id}/files/ | 
[**ordersModelsList**](OrdersApi.md#ordersmodelslist) | **GET** /api/orders/{order_id}/models/ | 
[**ordersModelsRetrieve**](OrdersApi.md#ordersmodelsretrieve) | **GET** /api/orders/{order_id}/models/{id}/ | 
[**ordersModelsSubmitToFinishedPartialUpdate**](OrdersApi.md#ordersmodelssubmittofinishedpartialupdate) | **PATCH** /api/orders/{order_id}/models/{id}/submit_to_finished/ | 
[**ordersModelsSubmitToReviewPartialUpdate**](OrdersApi.md#ordersmodelssubmittoreviewpartialupdate) | **PATCH** /api/orders/{order_id}/models/{id}/submit_to_review/ | 
[**ordersModelsSubmitToReworkPartialUpdate**](OrdersApi.md#ordersmodelssubmittoreworkpartialupdate) | **PATCH** /api/orders/{order_id}/models/{id}/submit_to_rework/ | 
[**ordersModelsTransitionsList**](OrdersApi.md#ordersmodelstransitionslist) | **GET** /api/orders/{order_id}/models/{id}/transitions/ | 
[**ordersModelsUpdate**](OrdersApi.md#ordersmodelsupdate) | **PUT** /api/orders/{order_id}/models/{id}/ | 
[**ordersRetrieve**](OrdersApi.md#ordersretrieve) | **GET** /api/orders/{id}/ | 
[**ordersSubmitToEstimationPartialUpdate**](OrdersApi.md#orderssubmittoestimationpartialupdate) | **PATCH** /api/orders/{order_id}/submit_to_estimation/ | 
[**ordersSubmitToFinishedPartialUpdate**](OrdersApi.md#orderssubmittofinishedpartialupdate) | **PATCH** /api/orders/{order_id}/submit_to_finished/ | 
[**ordersSubmitToPaymentPartialUpdate**](OrdersApi.md#orderssubmittopaymentpartialupdate) | **PATCH** /api/orders/{order_id}/submit_to_payment/ | 
[**ordersSubmitToProgressPartialUpdate**](OrdersApi.md#orderssubmittoprogresspartialupdate) | **PATCH** /api/orders/{order_id}/submit_to_progress/ | 
[**ordersSubmitToReviewPartialUpdate**](OrdersApi.md#orderssubmittoreviewpartialupdate) | **PATCH** /api/orders/{order_id}/submit_to_review/ | 
[**ordersTransitionsList**](OrdersApi.md#orderstransitionslist) | **GET** /api/orders/{order_id}/transitions/ | 
[**ordersUpdate**](OrdersApi.md#ordersupdate) | **PUT** /api/orders/{id}/ | 


# **ordersCommentsCreate**
> OrderCommentCreate ordersCommentsCreate(orderId, orderCommentCreate)



Add a new comment to order.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final OrderCommentCreate orderCommentCreate = ; // OrderCommentCreate | 

try {
    final response = api.ordersCommentsCreate(orderId, orderCommentCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersCommentsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **orderCommentCreate** | [**OrderCommentCreate**](OrderCommentCreate.md)|  | 

### Return type

[**OrderCommentCreate**](OrderCommentCreate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersCommentsList**
> List<OrderComment> ordersCommentsList(orderId)



List all comments of order.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersCommentsList(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersCommentsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**List&lt;OrderComment&gt;**](OrderComment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersCreate**
> Order ordersCreate(orderCreate)



Add a new order.

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

final api = YagoCloud().getOrdersApi();
final OrderCreate orderCreate = ; // OrderCreate | 

try {
    final response = api.ordersCreate(orderCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCreate** | [**OrderCreate**](OrderCreate.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersDestroy**
> ordersDestroy(id)



Delete order.

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

final api = YagoCloud().getOrdersApi();
final int id = 56; // int | A unique integer value identifying this Order.

try {
    api.ordersDestroy(id);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Order. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersList**
> List<Order> ordersList(project)



Lists all orders of customer.

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

final api = YagoCloud().getOrdersApi();
final String project = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.ordersList(project);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **String**|  | [optional] 

### Return type

[**List&lt;Order&gt;**](Order.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsCommentsCreate**
> OrderModelCommentCreate ordersModelsCommentsCreate(orderId, id, orderModelCommentCreate)



Add a new comment to order.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 
final OrderModelCommentCreate orderModelCommentCreate = ; // OrderModelCommentCreate | 

try {
    final response = api.ordersModelsCommentsCreate(orderId, id, orderModelCommentCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsCommentsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 
 **orderModelCommentCreate** | [**OrderModelCommentCreate**](OrderModelCommentCreate.md)|  | 

### Return type

[**OrderModelCommentCreate**](OrderModelCommentCreate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsCommentsList**
> List<OrderModelComment> ordersModelsCommentsList(orderId, id)



List all comments of model.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 

try {
    final response = api.ordersModelsCommentsList(orderId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsCommentsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 

### Return type

[**List&lt;OrderModelComment&gt;**](OrderModelComment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsCreate**
> OrderModel ordersModelsCreate(orderId, orderModelCreate)



Add a new model.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final OrderModelCreate orderModelCreate = ; // OrderModelCreate | 

try {
    final response = api.ordersModelsCreate(orderId, orderModelCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **orderModelCreate** | [**OrderModelCreate**](OrderModelCreate.md)|  | 

### Return type

[**OrderModel**](OrderModel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsDestroy**
> ordersModelsDestroy(orderId, id)



Delete model.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | A unique integer value identifying this Model.

try {
    api.ordersModelsDestroy(orderId, id);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**| A unique integer value identifying this Model. | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsFilesDestroy**
> ordersModelsFilesDestroy(orderId, id, fileId)



Delete file.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 
final String fileId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.ordersModelsFilesDestroy(orderId, id, fileId);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsFilesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 
 **fileId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsFilesList**
> List<OrderModelFile> ordersModelsFilesList(orderId, id)



Lists all files of model.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 

try {
    final response = api.ordersModelsFilesList(orderId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsFilesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 

### Return type

[**List&lt;OrderModelFile&gt;**](OrderModelFile.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsFilesUpdate**
> FileUploaded ordersModelsFilesUpdate(orderId, contentDisposition, id, body)



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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final String contentDisposition = contentDisposition_example; // String | The original filename.
final int id = 56; // int | 
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.ordersModelsFilesUpdate(orderId, contentDisposition, id, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsFilesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **contentDisposition** | **String**| The original filename. | [default to 'attachment; filename=name.ext']
 **id** | **int**|  | 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileUploaded**](FileUploaded.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsList**
> List<OrderModel> ordersModelsList(orderId)



Lists all models of order.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersModelsList(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**List&lt;OrderModel&gt;**](OrderModel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsRetrieve**
> OrderModelDetail ordersModelsRetrieve(orderId, id)



`ModelOrder` CRUD Viewset.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | A unique integer value identifying this Model.

try {
    final response = api.ordersModelsRetrieve(orderId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**| A unique integer value identifying this Model. | 

### Return type

[**OrderModelDetail**](OrderModelDetail.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsSubmitToFinishedPartialUpdate**
> StateChanged ordersModelsSubmitToFinishedPartialUpdate(orderId, id)



Model was accepted by customer and can be added to project.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 

try {
    final response = api.ordersModelsSubmitToFinishedPartialUpdate(orderId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsSubmitToFinishedPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsSubmitToReviewPartialUpdate**
> StateChanged ordersModelsSubmitToReviewPartialUpdate(orderId, id)



Model is ready to be reviewed by customer.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 

try {
    final response = api.ordersModelsSubmitToReviewPartialUpdate(orderId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsSubmitToReviewPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsSubmitToReworkPartialUpdate**
> StateChanged ordersModelsSubmitToReworkPartialUpdate(orderId, id)



Request rework of model, as specified in comments. Can only happen once.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 

try {
    final response = api.ordersModelsSubmitToReworkPartialUpdate(orderId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsSubmitToReworkPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsTransitionsList**
> List<AvailableState> ordersModelsTransitionsList(orderId, id)



Lists available transitions of order model for current user.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | 

try {
    final response = api.ordersModelsTransitionsList(orderId, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsTransitionsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**|  | 

### Return type

[**List&lt;AvailableState&gt;**](AvailableState.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersModelsUpdate**
> OrderModelUpdate ordersModelsUpdate(orderId, id, orderModelUpdate)



Change model.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 
final int id = 56; // int | A unique integer value identifying this Model.
final OrderModelUpdate orderModelUpdate = ; // OrderModelUpdate | 

try {
    final response = api.ordersModelsUpdate(orderId, id, orderModelUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersModelsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 
 **id** | **int**| A unique integer value identifying this Model. | 
 **orderModelUpdate** | [**OrderModelUpdate**](OrderModelUpdate.md)|  | 

### Return type

[**OrderModelUpdate**](OrderModelUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersRetrieve**
> OrderDetail ordersRetrieve(id)



Details of a single order.

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

final api = YagoCloud().getOrdersApi();
final int id = 56; // int | A unique integer value identifying this Order.

try {
    final response = api.ordersRetrieve(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Order. | 

### Return type

[**OrderDetail**](OrderDetail.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersSubmitToEstimationPartialUpdate**
> StateChanged ordersSubmitToEstimationPartialUpdate(orderId)



Send order to estimation after all models have been added and specified.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersSubmitToEstimationPartialUpdate(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersSubmitToEstimationPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersSubmitToFinishedPartialUpdate**
> StateChanged ordersSubmitToFinishedPartialUpdate(orderId)



All models are reviewed & accepted by customer, order is complete.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersSubmitToFinishedPartialUpdate(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersSubmitToFinishedPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersSubmitToPaymentPartialUpdate**
> StateChanged ordersSubmitToPaymentPartialUpdate(orderId)



Models have been estimated and and payment price for customer is defined.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersSubmitToPaymentPartialUpdate(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersSubmitToPaymentPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersSubmitToProgressPartialUpdate**
> StateChanged ordersSubmitToProgressPartialUpdate(orderId)



Customer has payed estimated amount and modelling can begin.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersSubmitToProgressPartialUpdate(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersSubmitToProgressPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersSubmitToReviewPartialUpdate**
> StateChanged ordersSubmitToReviewPartialUpdate(orderId)



All models are uploaded and ready, customer may begin with review.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersSubmitToReviewPartialUpdate(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersSubmitToReviewPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**StateChanged**](StateChanged.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersTransitionsList**
> List<AvailableState> ordersTransitionsList(orderId)



Lists available transitions of order for current user.

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

final api = YagoCloud().getOrdersApi();
final int orderId = 56; // int | 

try {
    final response = api.ordersTransitionsList(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersTransitionsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**|  | 

### Return type

[**List&lt;AvailableState&gt;**](AvailableState.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersUpdate**
> OrderUpdate ordersUpdate(id, orderUpdate)



Update order price estimation.

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

final api = YagoCloud().getOrdersApi();
final int id = 56; // int | A unique integer value identifying this Order.
final OrderUpdate orderUpdate = ; // OrderUpdate | 

try {
    final response = api.ordersUpdate(id, orderUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->ordersUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Order. | 
 **orderUpdate** | [**OrderUpdate**](OrderUpdate.md)|  | 

### Return type

[**OrderUpdate**](OrderUpdate.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

