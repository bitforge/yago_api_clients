# Genie.Api.Model.Model

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Guid** |  | [readonly] 
**Project** | **Guid** | The project this model belongs to. Cannot be changed once created. | 
**Name** | **string** |  | [readonly] 
**NameDe** | **string** | Name will be visible in Android as title. | [optional] 
**NameEn** | **string** | Name will be visible in Android as title. | [optional] 
**NameFr** | **string** | Name will be visible in Android as title. | [optional] 
**NameIt** | **string** | Name will be visible in Android as title. | [optional] 
**Slug** | **string** | Unique Short-URL for embedding. Cannot be changed once created. | [optional] 
**Image** | **string** | Preview image of the model (iOS, gallery, sharing, SEO). | [optional] 
**ImageThumb** | **string** |  | [readonly] 
**ImagePreview** | **string** |  | [readonly] 
**Status** | **ModelStatus** | DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use. | [optional] 
**Description** | **string** |  | [readonly] 
**DescriptionDe** | **string** | Used when shared as link and for SEO. | [optional] 
**DescriptionEn** | **string** | Used when shared as link and for SEO. | [optional] 
**DescriptionFr** | **string** | Used when shared as link and for SEO. | [optional] 
**DescriptionIt** | **string** | Used when shared as link and for SEO. | [optional] 
**Number** | **int?** | Use for custom sort order. | [optional] 
**SiteUrl** | **string** |  | [readonly] 
**SiteUrlDe** | **string** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**SiteUrlEn** | **string** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**SiteUrlFr** | **string** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**SiteUrlIt** | **string** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**Sku** | **string** | Stock-keeping unit. The identfier of the product in external webstore. | [optional] 
**Price** | **decimal?** | Display price. The effective price is determined by the external webstore. | [optional] 
**PriceCurrency** | **string** |  | [readonly] 
**Scaleable** | **bool** | Let&#39;s the user scale the model in AR when enabled. | [optional] 
**Glb** | **string** | Must be a binary glTF file according to the Khronos Group standard. | [optional] 
**Usdz** | **string** | Must be a USDZ or Reality Composer file. | [optional] 
**Created** | **DateTime** |  | [readonly] 
**Modified** | **DateTime** |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

