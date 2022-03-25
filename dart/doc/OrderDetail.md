# openapi.model.OrderDetail

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**project** | **String** |  | 
**state** | [**OrderState**](OrderState.md) |  | [readonly] 
**price** | **double** | Estimation of order in CHF including taxes. Payment price for User before starting production. | [optional] 
**priceCurrency** | **String** |  | [readonly] 
**created** | [**DateTime**](DateTime.md) |  | [readonly] 
**modified** | [**DateTime**](DateTime.md) |  | [readonly] 
**models** | [**List<OrderModel>**](OrderModel.md) |  | [default to const []]
**comments** | [**List<OrderComment>**](OrderComment.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


