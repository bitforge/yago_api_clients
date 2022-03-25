

# User


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  |  [readonly]
**email** | **String** |  |  [readonly]
**firstName** | **String** |  |  [optional]
**lastName** | **String** |  |  [optional]
**customerName** | **String** |  |  [readonly]
**dateJoined** | **OffsetDateTime** |  |  [readonly]
**isActive** | **Boolean** | Deactivated users cannot login. |  [readonly]
**isStaff** | **Boolean** | Allow login to Yago Admin. For Admins only. |  [readonly]
**isSuperuser** | **Boolean** | User can see and change anything. Only for Bitforge employees. |  [readonly]
**isContractor** | **Boolean** | User can manage model orders. For designers &amp; customer project managers. |  [readonly]



