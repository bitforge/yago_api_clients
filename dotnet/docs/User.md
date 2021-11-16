# Genie.Model.User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Guid** |  | [readonly] 
**Email** | **string** |  | 
**FirstName** | **string** |  | [optional] 
**LastName** | **string** |  | [optional] 
**DateJoined** | **DateTime** |  | [optional] 
**IsActive** | **bool** | Deactivated users cannot login. | [optional] 
**IsStaff** | **bool** | Allow login to Genie AR CMS. Can be disabled for API users. | [optional] 
**IsSuperuser** | **bool** | User can see and change anything. Only for Bitforge employees. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

