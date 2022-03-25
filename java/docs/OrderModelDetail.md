

# OrderModelDetail


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  |  [readonly]
**name** | **String** |  | 
**state** | [**OrderState**](OrderState.md) |  |  [readonly]
**website** | **URI** |  |  [optional]
**widthMm** | **Double** |  |  [optional]
**heightMm** | **Double** |  |  [optional]
**depthMm** | **Double** |  |  [optional]
**model** | **UUID** | Resulting model after order is finished. Available when state is IN_PROGRESS. |  [readonly]
**created** | **OffsetDateTime** |  |  [readonly]
**modified** | **OffsetDateTime** |  |  [readonly]
**files** | [**List&lt;OrderModelFile&gt;**](OrderModelFile.md) |  | 
**comments** | [**List&lt;OrderModelComment&gt;**](OrderModelComment.md) |  | 



