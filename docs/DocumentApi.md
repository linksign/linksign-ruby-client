# SwaggerClient::DocumentApi

All URIs are relative to *https://api.linksign.cn:443/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clients_client_id_documents_document_id_status_get**](DocumentApi.md#clients_client_id_documents_document_id_status_get) | **GET** /clients/{clientId}/documents/{documentId}/status | \u83B7\u53D6\u6587\u4EF6\u7B7E\u7F72\u72B6\u6001\u3001URI
[**create_document**](DocumentApi.md#create_document) | **POST** /clients/{clientId}/documents | \u7B7E\u7F72\u6587\u4EF6
[**get_document**](DocumentApi.md#get_document) | **GET** /clients/{clientId}/documents/{documentId} | \u83B7\u53D6\u6587\u4EF6


# **clients_client_id_documents_document_id_status_get**
> DocumentStatus clients_client_id_documents_document_id_status_get(client_id, document_id)

\u83B7\u53D6\u6587\u4EF6\u7B7E\u7F72\u72B6\u6001\u3001URI

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DocumentApi.new

client_id = "client_id_example" # String | 

document_id = "document_id_example" # String | 


begin
  #\u83B7\u53D6\u6587\u4EF6\u7B7E\u7F72\u72B6\u6001\u3001URI
  result = api_instance.clients_client_id_documents_document_id_status_get(client_id, document_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DocumentApi->clients_client_id_documents_document_id_status_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**|  | 
 **document_id** | **String**|  | 

### Return type

[**DocumentStatus**](DocumentStatus.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_document**
> DocumentSummary create_document(client_id, opts)

\u7B7E\u7F72\u6587\u4EF6

\u7B7E\u7F72\u6587\u4EF6

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DocumentApi.new

client_id = "client_id_example" # String | 

opts = { 
  body: SwaggerClient::DocumentDefinition.new # DocumentDefinition | 
}

begin
  #\u7B7E\u7F72\u6587\u4EF6
  result = api_instance.create_document(client_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DocumentApi->create_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**|  | 
 **body** | [**DocumentDefinition**](DocumentDefinition.md)|  | [optional] 

### Return type

[**DocumentSummary**](DocumentSummary.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document**
> File get_document(client_id, document_id)

\u83B7\u53D6\u6587\u4EF6

\u83B7\u53D6\u6587\u4EF6

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DocumentApi.new

client_id = "client_id_example" # String | 

document_id = "document_id_example" # String | 


begin
  #\u83B7\u53D6\u6587\u4EF6
  result = api_instance.get_document(client_id, document_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DocumentApi->get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**|  | 
 **document_id** | **String**|  | 

### Return type

**File**

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf



