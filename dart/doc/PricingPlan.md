# yago_cloud.model.PricingPlan

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** |  | 
**name** | **String** |  | 
**price** | **double** | For display purposes, payment price is defined in stripe product. | 
**priceOnRequest** | **bool** | Remove price and display request price offer in pricing table | [optional] 
**priceHint** | **String** | Comment for price, shown in product page. | [optional] 
**projectQuotas** | **int** |  | [optional] [default to 0]
**projectQuotasDisabled** | **bool** | Disable quota check for this plan. | [optional] 
**modelQuotas** | **String** |  | [optional] [default to '0']
**modelQuotasDisabled** | **bool** | Disable quota check for models. | [optional] 
**viewQuotas** | **int** |  | [optional] [default to 0]
**viewQuotasDisabled** | **bool** | Disable quota check for this plan. | [optional] 
**seoOptimization** | **bool** | Enables SEO tags and sharing previews. | [optional] 
**viewReporting** | **bool** | Allows to view detailed statistics about model views. | [optional] 
**customQrCodes** | **bool** | Allows to visually customie QR Codes when enabled. | [optional] 
**scenesApp** | **bool** | Allow usage of yago scenes app. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


