# AuthAPI

All URIs are relative to *https://cap.bitforge.zuerich*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authLoginCreate**](AuthAPI.md#authlogincreate) | **POST** /api/auth/login/ | 
[**authPasswordResetConfirmCreate**](AuthAPI.md#authpasswordresetconfirmcreate) | **POST** /api/auth/password/reset/confirm/ | 
[**authPasswordResetCreate**](AuthAPI.md#authpasswordresetcreate) | **POST** /api/auth/password/reset/ | 
[**authRefreshCreate**](AuthAPI.md#authrefreshcreate) | **POST** /api/auth/refresh/ | 
[**authVerifyCreate**](AuthAPI.md#authverifycreate) | **POST** /api/auth/verify/ | 


# **authLoginCreate**
```swift
    open class func authLoginCreate(tokenObtainRequest: TokenObtainRequest, completion: @escaping (_ data: TokenObtainResponse?, _ error: Error?) -> Void)
```



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let tokenObtainRequest = TokenObtainRequest(email: "email_example", password: "password_example") // TokenObtainRequest | 

AuthAPI.authLoginCreate(tokenObtainRequest: tokenObtainRequest) { (response, error) in
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
 **tokenObtainRequest** | [**TokenObtainRequest**](TokenObtainRequest.md) |  | 

### Return type

[**TokenObtainResponse**](TokenObtainResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authPasswordResetConfirmCreate**
```swift
    open class func authPasswordResetConfirmCreate(passwordResetConfirm: PasswordResetConfirm, completion: @escaping (_ data: PasswordResetConfirm?, _ error: Error?) -> Void)
```



Password reset e-mail link is confirmed, reset the user's password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let passwordResetConfirm = PasswordResetConfirm(newPassword1: "newPassword1_example", newPassword2: "newPassword2_example", uid: "uid_example", token: "token_example") // PasswordResetConfirm | 

AuthAPI.authPasswordResetConfirmCreate(passwordResetConfirm: passwordResetConfirm) { (response, error) in
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
 **passwordResetConfirm** | [**PasswordResetConfirm**](PasswordResetConfirm.md) |  | 

### Return type

[**PasswordResetConfirm**](PasswordResetConfirm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authPasswordResetCreate**
```swift
    open class func authPasswordResetCreate(passwordReset: PasswordReset, completion: @escaping (_ data: PasswordReset?, _ error: Error?) -> Void)
```



Request password reset. Send an email to the user first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let passwordReset = PasswordReset(email: "email_example") // PasswordReset | 

AuthAPI.authPasswordResetCreate(passwordReset: passwordReset) { (response, error) in
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
 **passwordReset** | [**PasswordReset**](PasswordReset.md) |  | 

### Return type

[**PasswordReset**](PasswordReset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRefreshCreate**
```swift
    open class func authRefreshCreate(tokenRefreshRequest: TokenRefreshRequest, completion: @escaping (_ data: TokenRefreshResponse?, _ error: Error?) -> Void)
```



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let tokenRefreshRequest = TokenRefreshRequest(refresh: "refresh_example") // TokenRefreshRequest | 

AuthAPI.authRefreshCreate(tokenRefreshRequest: tokenRefreshRequest) { (response, error) in
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
 **tokenRefreshRequest** | [**TokenRefreshRequest**](TokenRefreshRequest.md) |  | 

### Return type

[**TokenRefreshResponse**](TokenRefreshResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authVerifyCreate**
```swift
    open class func authVerifyCreate(tokenVerifyRequest: TokenVerifyRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let tokenVerifyRequest = TokenVerifyRequest(token: "token_example") // TokenVerifyRequest | 

AuthAPI.authVerifyCreate(tokenVerifyRequest: tokenVerifyRequest) { (response, error) in
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
 **tokenVerifyRequest** | [**TokenVerifyRequest**](TokenVerifyRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

