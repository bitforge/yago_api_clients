# openapi.model.Nested

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** |  | 
**name** | **String** |  | 
**price** | **double** | For display purposes, payment price is defined in stripe product. | 
**projectQuotas** | **int** | How many projects are included in this plan. | 
**modelQuotas** | **int** | How many models are included in this plan. | 
**viewQuotas** | **int** | How many AR views are included in this plan. | 
**seoOptimization** | **bool** | Enables SEO tags and sharing previews. | [optional] 
**viewReporting** | **bool** | Allows to view detailed statistics about model views. | [optional] 
**customQrCodes** | **bool** | Allows to visually customie QR Codes when enabled. | [optional] 
**stripePriceId** | **String** | Stripe price used to create a new subscriptions | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


