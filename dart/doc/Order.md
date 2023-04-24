# yago_cloud.model.Order

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
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
**modelCount** | **int** | Returns the number of Models this order has. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


