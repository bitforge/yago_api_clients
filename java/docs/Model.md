

# Model


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  |  [readonly]
**project** | **UUID** | The project this model belongs to. Cannot be changed once created. | 
**name** | **String** |  |  [readonly]
**nameDe** | **String** | Name will be visible in Android as title. |  [optional]
**nameEn** | **String** | Name will be visible in Android as title. |  [optional]
**nameFr** | **String** | Name will be visible in Android as title. |  [optional]
**nameIt** | **String** | Name will be visible in Android as title. |  [optional]
**slug** | **String** | Unique Short-URL for embedding. Cannot be changed once created. |  [optional]
**image** | **URI** | Preview image of the model (iOS, gallery, sharing, SEO). |  [optional]
**imageThumb** | **String** |  |  [readonly]
**imagePreview** | **String** |  |  [readonly]
**status** | [**ModelStatus**](ModelStatus.md) | DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use. |  [optional]
**description** | **String** |  |  [readonly]
**descriptionDe** | **String** | Used when shared as link and for SEO. |  [optional]
**descriptionEn** | **String** | Used when shared as link and for SEO. |  [optional]
**descriptionFr** | **String** | Used when shared as link and for SEO. |  [optional]
**descriptionIt** | **String** | Used when shared as link and for SEO. |  [optional]
**number** | **Integer** | Use for custom sort order. |  [optional]
**siteUrl** | **String** |  |  [readonly]
**siteUrlDe** | **URI** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). |  [optional]
**siteUrlEn** | **URI** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). |  [optional]
**siteUrlFr** | **URI** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). |  [optional]
**siteUrlIt** | **URI** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). |  [optional]
**sku** | **String** | Stock-keeping unit. The identfier of the product in external webstore. |  [optional]
**price** | **BigDecimal** | Display price. The effective price is determined by the external webstore. |  [optional]
**priceCurrency** | **String** |  |  [readonly]
**scaleable** | **Boolean** | Let&#39;s the user scale the model in AR when enabled. |  [optional]
**glb** | **URI** | Must be a binary glTF file according to the Khronos Group standard. |  [optional]
**usdz** | **URI** | Must be a USDZ or Reality Composer file. |  [optional]
**model** | **URI** | Source of 3D Model (Blender, Maya, Cinema 4D, CAD etc,). Use archive for multiple files. |  [optional]
**unityIos** | **URI** | Unity Asset Bundle for Android |  [optional]
**unityAndroid** | **URI** | Unity Asset Bundle for iOS |  [optional]
**created** | **OffsetDateTime** |  |  [readonly]
**modified** | **OffsetDateTime** |  |  [readonly]



