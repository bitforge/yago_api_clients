# yago_cloud.model.Customer

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [readonly] 
**name** | **String** | Name will be visible as title in gallery. | 
**plan** | **String** | Defines the number of available models and AR views. <a href=\"mailto:info@bitforge.ch\">Contact us</a> to upgrade your plan. | [optional] 
**slug** | **String** | Only for internal use | 
**image** | **String** | Image will be visible in gallery. | [optional] 
**imageThumb** | **String** |  | [optional] [default to '']
**imagePreview** | **String** |  | [optional] [default to '']
**website** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**contactAddress** | **String** |  | [optional] 
**billingAddress** | **String** |  | [optional] 
**paymentMethod** | [**PaymentMethodEnum**](PaymentMethodEnum.md) |  | [optional] 
**modelsCount** | **int** |  | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


