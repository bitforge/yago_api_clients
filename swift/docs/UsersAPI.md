# UsersAPI

All URIs are relative to *https://cap.bitforge.zuerich*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersList**](UsersAPI.md#userslist) | **GET** /api/users/ | 
[**usersMeRetrieve**](UsersAPI.md#usersmeretrieve) | **GET** /api/users/me/ | 
[**usersRetrieve**](UsersAPI.md#usersretrieve) | **GET** /api/users/{id}/ | 


# **usersList**
```swift
    open class func usersList(completion: @escaping (_ data: [User]?, _ error: Error?) -> Void)
```



Lists all users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi


UsersAPI.usersList() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[User]**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersMeRetrieve**
```swift
    open class func usersMeRetrieve(completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```



Show details of the user currently logged in.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi


UsersAPI.usersMeRetrieve() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRetrieve**
```swift
    open class func usersRetrieve(id: UUID, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```



Details of a single user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let id = 987 // UUID | A UUID string identifying this User.

UsersAPI.usersRetrieve(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | A UUID string identifying this User. | 

### Return type

[**User**](User.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

