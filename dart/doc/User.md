# openapi.model.User

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [readonly] 
**email** | **String** |  | [readonly] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**customerName** | **String** |  | [readonly] 
**dateJoined** | [**DateTime**](DateTime.md) |  | [readonly] 
**isActive** | **bool** | Deactivated users cannot login. | [readonly] 
**isStaff** | **bool** | Allow login to Yago Admin. For Admins only. | [readonly] 
**isSuperuser** | **bool** | User can see and change anything. Only for Bitforge employees. | [readonly] 
**isContractor** | **bool** | User can manage model orders. For designers & customer project managers. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


