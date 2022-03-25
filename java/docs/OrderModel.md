

# OrderModel


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  |  [readonly]
**name** | **String** |  | 
**order** | **Integer** |  |  [readonly]
**state** | [**OrderState**](OrderState.md) |  |  [readonly]
**website** | **URI** |  |  [optional]
**widthMm** | **Double** |  |  [optional]
**heightMm** | **Double** |  |  [optional]
**depthMm** | **Double** |  |  [optional]
**model** | **UUID** | Resulting model after order is finished. Available when state is IN_PROGRESS. |  [readonly]
**created** | **OffsetDateTime** |  |  [readonly]
**modified** | **OffsetDateTime** |  |  [readonly]



