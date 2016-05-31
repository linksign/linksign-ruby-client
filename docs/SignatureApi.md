# SwaggerClient::SignatureApi

All URIs are relative to *https://api.linksign.cn:443/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_signature**](SignatureApi.md#create_signature) | **POST** /clients/{clientId}/signatures | \u65B0\u5EFA\u4E00\u4E2A\u7B7E\u540D\u6536\u96C6\u8BF7\u6C42
[**get_signature**](SignatureApi.md#get_signature) | **GET** /clients/{clientId}/signatures/{signatureId} | \u83B7\u53D6\u7B7E\u7F72\u56FE\u7247


# **create_signature**
> SignatureSummary create_signature(client_id, opts)

\u65B0\u5EFA\u4E00\u4E2A\u7B7E\u540D\u6536\u96C6\u8BF7\u6C42

\u65B0\u5EFA\u4E00\u4E2A\u7B7E\u540D\u6536\u96C6\u8BF7\u6C42

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SignatureApi.new

client_id = "client_id_example" # String | \u5BA2\u6237\u7F16\u53F7

opts = { 
  body: SwaggerClient::Signature.new # Signature | 
}

begin
  #\u65B0\u5EFA\u4E00\u4E2A\u7B7E\u540D\u6536\u96C6\u8BF7\u6C42
  result = api_instance.create_signature(client_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SignatureApi->create_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| \u5BA2\u6237\u7F16\u53F7 | 
 **body** | [**Signature**](Signature.md)|  | [optional] 

### Return type

[**SignatureSummary**](SignatureSummary.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_signature**
> SignatureFile get_signature(client_id, signature_id)

\u83B7\u53D6\u7B7E\u7F72\u56FE\u7247

\u83B7\u53D6\u7B7E\u7F72\u56FE\u7247

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SignatureApi.new

client_id = "client_id_example" # String | \u5E94\u7528\u7CFB\u7EDF\u7F16\u53F7

signature_id = "signature_id_example" # String | \u7B7E\u540D\u7F16\u53F7


begin
  #\u83B7\u53D6\u7B7E\u7F72\u56FE\u7247
  result = api_instance.get_signature(client_id, signature_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SignatureApi->get_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| \u5E94\u7528\u7CFB\u7EDF\u7F16\u53F7 | 
 **signature_id** | **String**| \u7B7E\u540D\u7F16\u53F7 | 

### Return type

[**SignatureFile**](SignatureFile.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



