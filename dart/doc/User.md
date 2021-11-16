# openapi.model.User

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [readonly] 
**email** | **String** |  | 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**dateJoined** | [**DateTime**](DateTime.md) |  | [optional] 
**isActive** | **bool** | Deactivated users cannot login. | [optional] 
**isStaff** | **bool** | Allow login to Genie AR CMS. Can be disabled for API users. | [optional] 
**isSuperuser** | **bool** | User can see and change anything. Only for Bitforge employees. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


