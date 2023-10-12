# yago_cloud.model.Model

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**project** | **String** | The project this model belongs to. Cannot be changed once created. | 
**name** | **String** |  | 
**nameDe** | **String** | Name will be visible in Android as title. | [optional] 
**nameEn** | **String** | Name will be visible in Android as title. | [optional] 
**nameFr** | **String** | Name will be visible in Android as title. | [optional] 
**nameIt** | **String** | Name will be visible in Android as title. | [optional] 
**slug** | **String** | Unique Short-URL for embedding. Cannot be changed once created. | [optional] 
**image** | **String** | Preview image of the model (iOS, gallery, sharing, SEO). | [optional] 
**imageThumb** | **String** |  | [optional] [default to '']
**imagePreview** | **String** |  | [optional] [default to '']
**preview** | **bool** | True when model is in order and work is still in progress. False when order is completed. | [optional] 
**status** | [**ModelStatus**](ModelStatus.md) |  | [optional] 
**description** | **String** |  | [optional] [default to '']
**descriptionDe** | **String** | Used when shared as link and for SEO. | [optional] 
**descriptionEn** | **String** | Used when shared as link and for SEO. | [optional] 
**descriptionFr** | **String** | Used when shared as link and for SEO. | [optional] 
**descriptionIt** | **String** | Used when shared as link and for SEO. | [optional] 
**number** | **int** | Use for custom sort order. | [optional] 
**siteUrl** | **String** |  | [optional] [default to '']
**siteUrlDe** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**siteUrlEn** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**siteUrlFr** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**siteUrlIt** | **String** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**sku** | **String** | Stock-keeping unit. The identfier of the product in external webstore. | [optional] 
**price** | **double** | Display price. The effective price is determined by the external webstore. | [optional] 
**priceCurrency** | **String** |  | [optional] [default to 'CHF']
**scaleable** | **bool** | Let's the user scale the model in AR when enabled. | [optional] 
**glb** | **String** | Must be a binary glTF file according to the Khronos Group standard. | [optional] 
**usdz** | **String** | Must be a USDZ or Reality Composer file. | [optional] 
**model** | **String** | Source of 3D Model (Blender, Maya, Cinema 4D, CAD etc,). Use archive for multiple files. | [optional] 
**arbuttonConfig** | **Map&lt;String, Object&gt;** |  | [optional] [default to {}]
**created** | [**DateTime**](DateTime.md) |  | 
**modified** | [**DateTime**](DateTime.md) |  | 
**verticalPlacement** | **bool** | When set to true, users will be able to place the model on a vertical surface. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


