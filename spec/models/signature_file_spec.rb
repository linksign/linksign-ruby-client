=begin
领签开发平台接口调试工具

\u6B64\u5DE5\u5177\u65E8\u5728\u5E2E\u52A9\u5F00\u53D1\u8005\u68C0\u6D4B\u8C03\u7528\u3010\u9886\u7B7E\u5F00\u53D1\u8005API\u3011\u65F6\u53D1\u9001\u7684\u8BF7\u6C42\u53C2\u6570\u662F\u5426\u6B63\u786E\uFF0C\u63D0\u4EA4\u76F8\u5173\u4FE1\u606F\u540E\u53EF\u83B7\u5F97\u670D\u52A1\u5668\u7684\u9A8C\u8BC1\u7ED3\u679C\u3002

OpenAPI spec version: 1.0.0
Contact: apiteam@linksign.cn
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: Apache 2.0
http://www.apache.org/licenses/LICENSE-2.0.html


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::SignatureFile
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignatureFile' do
  before do
    # run before each test
    @instance = SwaggerClient::SignatureFile.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignatureFile' do
    it 'should create an instact of SignatureFile' do
      @instance.should be_a(SwaggerClient::SignatureFile) 
    end
  end
  describe 'test attribute "image_png_base64"' do
    it 'should work' do
       # assertion here
       # should be_a()
       # should be_nil
       # should ==
       # should_not ==
    end
  end

end

