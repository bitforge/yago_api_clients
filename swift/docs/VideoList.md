# VideoList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [readonly] 
**title** | **String** |  | 
**video** | **String** | Video File, preferably an .mp4 with H.264 video and AAC audio encoding. | [optional] 
**thumb** | **String** | Preview thumbnail at 10 percent of video length. | [readonly] 
**thumbSmall** | **String** |  | [readonly] 
**thumbMedium** | **String** |  | [readonly] 
**thumbLarge** | **String** |  | [readonly] 
**description** | **String** | Description of the content in the video. | [optional] 
**language** | [**LanguageEnum**](LanguageEnum.md) | The spoken language in the video. | [optional] 
**uploadedBy** | **UUID** | The user who uploaded the video to CAP. | [optional] 
**location** | **String** | Where was the video recorded? E.g. \&quot;Bitforge Office, Zeughausstr. 39, 8004 Zurich\&quot; | [optional] 
**geoLat** | **Decimal** | WGS84: Degree to Equator. 90° for Northpole, -90° for Southpole. | [optional] 
**geoLng** | **Decimal** | WGS84: 0° for Greenwich Meridian, England. | [optional] 
**created** | **Date** |  | [readonly] 
**modified** | **Date** |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


