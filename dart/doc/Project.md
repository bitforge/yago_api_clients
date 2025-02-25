# yago_cloud.model.Project

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [readonly] 
**name** | **String** | Name will be visible as title in gallery. | 
**slug** | **String** | Will be part of asset urls. Cannot be changed once created. | [optional] 
**customerName** | **String** |  | [optional] [default to '']
**image** | **String** | Image will be visible in gallery. | [optional] 
**imageThumb** | **String** |  | [optional] [default to '']
**imagePreview** | **String** |  | [optional] [default to '']
**website** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**gallery** | **bool** | Activates a publicly available gallery with all project models in state READY or ONLINE. | [optional] 
**translationsDe** | **bool** |  | [optional] 
**translationsEn** | **bool** |  | [optional] 
**translationsFr** | **bool** |  | [optional] 
**translationsIt** | **bool** |  | [optional] 
**backlinkUrls** | **bool** | Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**orders** | [**List<ActiveOrder>**](ActiveOrder.md) |  | [optional] [default to const []]
**arbuttonConfig** | [**Object**](.md) |  | [optional] 
**created** | [**DateTime**](DateTime.md) |  | [readonly] 
**modified** | [**DateTime**](DateTime.md) |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


