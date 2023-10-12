# yago_cloud.model.User

## Load the model package
```dart
import 'package:yago_cloud/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**email** | **String** |  | 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**customerName** | **String** |  | 
**dateJoined** | [**DateTime**](DateTime.md) |  | 
**isActive** | **bool** | Deactivated users cannot login. | 
**isStaff** | **bool** | Allow login to Yago Admin. For Bitforge employees and power users. | 
**isSuperuser** | **bool** | User can see and change anything. Only for Bitforge employees. | 
**isContractor** | **bool** | User can manage model orders. For designers & customer project managers. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


