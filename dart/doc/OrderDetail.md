# yago_cloud.model.OrderDetail

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**project** | **String** |  | 
**state** | [**OrderState**](OrderState.md) |  | 
**price** | **double** | Estimation of order in CHF including taxes. Payment price for User before starting production. | [optional] 
**priceCurrency** | **String** |  | 
**created** | [**DateTime**](DateTime.md) |  | 
**modified** | [**DateTime**](DateTime.md) |  | 
**models** | [**List&lt;OrderModel&gt;**](OrderModel.md) |  | 
**comments** | [**List&lt;OrderComment&gt;**](OrderComment.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


