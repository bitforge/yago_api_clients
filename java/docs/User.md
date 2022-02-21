

# User


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  |  [readonly]
**email** | **String** |  | 
**firstName** | **String** |  |  [optional]
**lastName** | **String** |  |  [optional]
**dateJoined** | **OffsetDateTime** |  |  [optional]
**isActive** | **Boolean** | Deactivated users cannot login. |  [optional]
**isStaff** | **Boolean** | Allow login to Genie AR CMS. Can be disabled for API users. |  [optional]
**isSuperuser** | **Boolean** | User can see and change anything. Only for Bitforge employees. |  [optional]



