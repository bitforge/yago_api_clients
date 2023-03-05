# yago_cloud.model.OrderModelDetail

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** |  | 
**state** | [**OrderState**](OrderState.md) |  | [readonly] 
**website** | **String** |  | [optional] 
**widthMm** | **double** |  | [optional] 
**heightMm** | **double** |  | [optional] 
**depthMm** | **double** |  | [optional] 
**model** | **String** | Resulting model after order is finished. Available when state is IN_PROGRESS. | [readonly] 
**created** | [**DateTime**](DateTime.md) |  | [readonly] 
**modified** | [**DateTime**](DateTime.md) |  | [readonly] 
**files** | [**List<OrderModelFile>**](OrderModelFile.md) |  | [default to const []]
**comments** | [**List<OrderModelComment>**](OrderModelComment.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


