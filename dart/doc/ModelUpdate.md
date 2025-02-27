# yago_cloud.model.ModelUpdate

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nameDe** | **String** | Name will be visible in Android as title. | [optional] 
**nameEn** | **String** | Name will be visible in Android as title. | [optional] 
**nameFr** | **String** | Name will be visible in Android as title. | [optional] 
**nameIt** | **String** | Name will be visible in Android as title. | [optional] 
**status** | [**ModelStatus**](ModelStatus.md) | DRAFT=In development, READY=Modelling complete, ONLINE=Active use.  * `DRAFT` - Draft * `READY` - Ready * `ONLINE` - Online | [optional] 
**description** | **String** |  | [readonly] 
**descriptionDe** | **String** | Used when shared as link and for SEO. | [optional] 
**descriptionEn** | **String** | Used when shared as link and for SEO. | [optional] 
**descriptionFr** | **String** | Used when shared as link and for SEO. | [optional] 
**descriptionIt** | **String** | Used when shared as link and for SEO. | [optional] 
**number** | **int** | Use for custom sort order. | [optional] 
**siteUrlDe** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**siteUrlEn** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**siteUrlFr** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**siteUrlIt** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**scaleable** | **bool** | Let's the user scale the model in AR when enabled. | [optional] 
**sku** | **String** | Stock-keeping unit. The identfier of the product in external webstore. | [optional] 
**price** | **double** | Display price. The effective price is determined by the external webstore. | [optional] 
**priceCurrency** | **String** |  | [readonly] 
**verticalPlacement** | **bool** | When set to true, users will be able to place the model on a vertical surface. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


