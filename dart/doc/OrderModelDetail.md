# yago_cloud.model.OrderModelDetail

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**name** | **String** |  | 
**state** | [**OrderState**](OrderState.md) |  | 
**website** | **String** |  | [optional] 
**widthMm** | **double** |  | [optional] 
**heightMm** | **double** |  | [optional] 
**depthMm** | **double** |  | [optional] 
**model** | **String** | Resulting model after order is finished. Available when state is IN_PROGRESS. | 
**created** | [**DateTime**](DateTime.md) |  | 
**modified** | [**DateTime**](DateTime.md) |  | 
**files** | [**List&lt;OrderModelFile&gt;**](OrderModelFile.md) |  | 
**comments** | [**List&lt;OrderModelComment&gt;**](OrderModelComment.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


