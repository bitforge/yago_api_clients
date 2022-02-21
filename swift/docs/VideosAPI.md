# VideosAPI

All URIs are relative to *https://cap.bitforge.zuerich*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videosCreate**](VideosAPI.md#videoscreate) | **POST** /api/videos/ | 
[**videosDestroy**](VideosAPI.md#videosdestroy) | **DELETE** /api/videos/{id}/ | 
[**videosList**](VideosAPI.md#videoslist) | **GET** /api/videos/ | 
[**videosPartialUpdate**](VideosAPI.md#videospartialupdate) | **PATCH** /api/videos/{id}/ | 
[**videosRetrieve**](VideosAPI.md#videosretrieve) | **GET** /api/videos/{id}/ | 
[**videosUpdate**](VideosAPI.md#videosupdate) | **PUT** /api/videos/{id}/ | 
[**videosUploadUpdate**](VideosAPI.md#videosuploadupdate) | **PUT** /api/videos/{id}/upload/ | 


# **videosCreate**
```swift
    open class func videosCreate(videoDetail: VideoDetail, completion: @escaping (_ data: VideoDetail?, _ error: Error?) -> Void)
```



Add a new video. Use generated `id` to upload video in next step.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let videoDetail = VideoDetail(id: 123, title: "title_example", video: "video_example", thumb: "thumb_example", thumbSmall: "thumbSmall_example", thumbMedium: "thumbMedium_example", thumbLarge: "thumbLarge_example", description: "description_example", language: LanguageEnum(), uploadedBy: 123, authorName: "authorName_example", authorEmail: "authorEmail_example", recordDate: Date(), location: "location_example", geoLat: 123, geoLng: 123, metaData: "TODO", links: [VideoLink(text: "text_example", url: "url_example")], tags: "tags_example", videoMeta: "TODO", created: Date(), modified: Date()) // VideoDetail | 

VideosAPI.videosCreate(videoDetail: videoDetail) { (response, error) in
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
 **videoDetail** | [**VideoDetail**](VideoDetail.md) |  | 

### Return type

[**VideoDetail**](VideoDetail.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosDestroy**
```swift
    open class func videosDestroy(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Delete a video. Be cautious, this is permanent!

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let id = 987 // UUID | A UUID string identifying this Video.

VideosAPI.videosDestroy(id: id) { (response, error) in
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
 **id** | **UUID** | A UUID string identifying this Video. | 

### Return type

Void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosList**
```swift
    open class func videosList(search: String? = nil, completion: @escaping (_ data: [VideoList]?, _ error: Error?) -> Void)
```



Lists all videos captured in CAP. Uses short form serialization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let search = "search_example" // String | A search term. (optional)

VideosAPI.videosList(search: search) { (response, error) in
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
 **search** | **String** | A search term. | [optional] 

### Return type

[**[VideoList]**](VideoList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosPartialUpdate**
```swift
    open class func videosPartialUpdate(id: UUID, patchedVideoDetail: PatchedVideoDetail? = nil, completion: @escaping (_ data: VideoDetail?, _ error: Error?) -> Void)
```



Change subset of fields of a video.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let id = 987 // UUID | A UUID string identifying this Video.
let patchedVideoDetail = PatchedVideoDetail(id: 123, title: "title_example", video: "video_example", thumb: "thumb_example", thumbSmall: "thumbSmall_example", thumbMedium: "thumbMedium_example", thumbLarge: "thumbLarge_example", description: "description_example", language: LanguageEnum(), uploadedBy: 123, authorName: "authorName_example", authorEmail: "authorEmail_example", recordDate: Date(), location: "location_example", geoLat: 123, geoLng: 123, metaData: "TODO", links: [VideoLink(text: "text_example", url: "url_example")], tags: "tags_example", videoMeta: "TODO", created: Date(), modified: Date()) // PatchedVideoDetail |  (optional)

VideosAPI.videosPartialUpdate(id: id, patchedVideoDetail: patchedVideoDetail) { (response, error) in
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
 **id** | **UUID** | A UUID string identifying this Video. | 
 **patchedVideoDetail** | [**PatchedVideoDetail**](PatchedVideoDetail.md) |  | [optional] 

### Return type

[**VideoDetail**](VideoDetail.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosRetrieve**
```swift
    open class func videosRetrieve(id: UUID, completion: @escaping (_ data: VideoDetail?, _ error: Error?) -> Void)
```



Details of a single video, including format and stream meta data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let id = 987 // UUID | A UUID string identifying this Video.

VideosAPI.videosRetrieve(id: id) { (response, error) in
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
 **id** | **UUID** | A UUID string identifying this Video. | 

### Return type

[**VideoDetail**](VideoDetail.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosUpdate**
```swift
    open class func videosUpdate(id: UUID, videoDetail: VideoDetail, completion: @escaping (_ data: VideoDetail?, _ error: Error?) -> Void)
```



Change all fields of a video.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let id = 987 // UUID | A UUID string identifying this Video.
let videoDetail = VideoDetail(id: 123, title: "title_example", video: "video_example", thumb: "thumb_example", thumbSmall: "thumbSmall_example", thumbMedium: "thumbMedium_example", thumbLarge: "thumbLarge_example", description: "description_example", language: LanguageEnum(), uploadedBy: 123, authorName: "authorName_example", authorEmail: "authorEmail_example", recordDate: Date(), location: "location_example", geoLat: 123, geoLng: 123, metaData: "TODO", links: [VideoLink(text: "text_example", url: "url_example")], tags: "tags_example", videoMeta: "TODO", created: Date(), modified: Date()) // VideoDetail | 

VideosAPI.videosUpdate(id: id, videoDetail: videoDetail) { (response, error) in
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
 **id** | **UUID** | A UUID string identifying this Video. | 
 **videoDetail** | [**VideoDetail**](VideoDetail.md) |  | 

### Return type

[**VideoDetail**](VideoDetail.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videosUploadUpdate**
```swift
    open class func videosUploadUpdate(contentDisposition: String, id: UUID, body: URL? = nil, completion: @escaping (_ data: FileUpload?, _ error: Error?) -> Void)
```



Upload a video. Filename is required!

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import YagoApi

let contentDisposition = "contentDisposition_example" // String | The original filename. (default to "attachment; filename=name.ext")
let id = 987 // UUID | A UUID identifying this object.
let body = URL(string: "https://example.com")! // URL |  (optional)

VideosAPI.videosUploadUpdate(contentDisposition: contentDisposition, id: id, body: body) { (response, error) in
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
 **contentDisposition** | **String** | The original filename. | [default to &quot;attachment; filename&#x3D;name.ext&quot;]
 **id** | **UUID** | A UUID identifying this object. | 
 **body** | **URL** |  | [optional] 

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: video/_*
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

