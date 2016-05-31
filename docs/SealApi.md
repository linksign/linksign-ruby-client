# SwaggerClient::SealApi

All URIs are relative to *https://api.linksign.cn:443/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_seal**](SealApi.md#create_seal) | **POST** /clients/{clientId}/seals | \u521B\u5EFA\u4E00\u4E2A\u5370\u7AE0
[**get_seal**](SealApi.md#get_seal) | **GET** /clients/{clientId}/seals/{sealId} | \u83B7\u53D6\u4E00\u4E2A\u5370\u7AE0


# **create_seal**
> SealSummary create_seal(client_id, opts)

\u521B\u5EFA\u4E00\u4E2A\u5370\u7AE0

\u521B\u5EFA\u4E00\u4E2A\u5370\u7AE0

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SealApi.new

client_id = "client_id_example" # String | 

opts = { 
  body: SwaggerClient::Seal.new # Seal | 
}

begin
  #\u521B\u5EFA\u4E00\u4E2A\u5370\u7AE0
  result = api_instance.create_seal(client_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SealApi->create_seal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**|  | 
 **body** | [**Seal**](Seal.md)|  | [optional] 

### Return type

[**SealSummary**](SealSummary.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_seal**
> SealFile get_seal(client_id, seal_id)

\u83B7\u53D6\u4E00\u4E2A\u5370\u7AE0

\u83B7\u53D6\u4E00\u4E2A\u5370\u7AE0

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SealApi.new

client_id = "client_id_example" # String | \u7CFB\u7EDF\u7F16\u53F7

seal_id = "seal_id_example" # String | \u5370\u7AE0\u7F16\u53F7


begin
  #\u83B7\u53D6\u4E00\u4E2A\u5370\u7AE0
  result = api_instance.get_seal(client_id, seal_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SealApi->get_seal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| \u7CFB\u7EDF\u7F16\u53F7 | 
 **seal_id** | **String**| \u5370\u7AE0\u7F16\u53F7 | 

### Return type

[**SealFile**](SealFile.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



