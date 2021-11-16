# Model


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**project** | **str** | The project this model belongs to. Cannot be changed once created. | 
**name** | **str** |  | [readonly] 
**image_thumb** | **str** |  | [readonly] 
**image_preview** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**site_url** | **str** |  | [readonly] 
**price_currency** | **str** |  | [readonly] 
**created** | **datetime** |  | [readonly] 
**modified** | **datetime** |  | [readonly] 
**name_de** | **str, none_type** | Name will be visible in Android as title. | [optional] 
**name_en** | **str, none_type** | Name will be visible in Android as title. | [optional] 
**name_fr** | **str, none_type** | Name will be visible in Android as title. | [optional] 
**name_it** | **str, none_type** | Name will be visible in Android as title. | [optional] 
**slug** | **str** | Unique Short-URL for embedding. Cannot be changed once created. | [optional] 
**image** | **str, none_type** | Preview image of the model (iOS, gallery, sharing, SEO). | [optional] 
**status** | **bool, date, datetime, dict, float, int, list, str, none_type** | DRAFT&#x3D;In development, READY&#x3D;Modelling complete, ONLINE&#x3D;Active use. | [optional] 
**description_de** | **str, none_type** | Used when shared as link and for SEO. | [optional] 
**description_en** | **str, none_type** | Used when shared as link and for SEO. | [optional] 
**description_fr** | **str, none_type** | Used when shared as link and for SEO. | [optional] 
**description_it** | **str, none_type** | Used when shared as link and for SEO. | [optional] 
**number** | **int, none_type** | Use for custom sort order. | [optional] 
**site_url_de** | **str, none_type** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**site_url_en** | **str, none_type** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**site_url_fr** | **str, none_type** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**site_url_it** | **str, none_type** | Link to the product on your site. Required when using standalone QR codes (e.g. Print). | [optional] 
**sku** | **str, none_type** | Stock-keeping unit. The identfier of the product in external webstore. | [optional] 
**price** | **str, none_type** | Display price. The effective price is determined by the external webstore. | [optional] 
**scaleable** | **bool** | Let&#39;s the user scale the model in AR when enabled. | [optional] 
**glb** | **str, none_type** | Must be a binary glTF file according to the Khronos Group standard. | [optional] 
**usdz** | **str, none_type** | Must be a USDZ or Reality Composer file. | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


