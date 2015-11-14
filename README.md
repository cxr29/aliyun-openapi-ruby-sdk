Aliyun OpenAPI Ruby SDK

### Feature
- All Aliyun OpenAPI
- Parameter Validation
- XML and JSON
- Parsed Result
- Tested
- Simple and Easy to use
- ...

### Install
```
$ git clone https://git.oschina.net/cxr29/aliyun-openapi-ruby-sdk.git
$ cd aliyun-openapi-ruby-sdk
$ gem build openapi.gemspec
$ gem install openapi-1.0.0.beta.gem
```

### Usage
```
#!/usr/bin/env ruby
# coding: utf-8

require 'openapi'
require 'openapi/apis/cdn/20141111'
require 'openapi/apis/alert/20150815'

api = OpenAPI::Cdn.new('YourAccessKeyId', 'YourAccessKeySecret')
puts api.open_cdn_service('PayByBandwidth')
puts api.describe_cdn_service()

api = OpenAPI::Alert.new('YourAccessKeyId', 'YourAccessKeySecret')
puts api.create_alert('aliyun-openapi-ruby-sdk')
```

### Author
Chen Xianren &lt;cxr29@foxmail.com&gt;
