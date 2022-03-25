

# Order


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  |  [readonly]
**project** | **UUID** |  | 
**state** | [**OrderState**](OrderState.md) |  |  [readonly]
**price** | **BigDecimal** | Estimation of order in CHF including taxes. Payment price for User before starting production. |  [optional]
**priceCurrency** | **String** |  |  [readonly]
**created** | **OffsetDateTime** |  |  [readonly]
**modified** | **OffsetDateTime** |  |  [readonly]
**modelCount** | **Integer** |  |  [readonly]



