require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest-client'

require './lib/base'
require './lib/api'

headers = {
  :authorization => 'pk_26145608_LVDNV6LG8VP72C2N6WIQTZ1Y6HUXLUCV',
  :content_type => 'application/json'
}

headers: { 'authorization' => 'pk_26145608_LVDNV6LG8VP72C2N6WIQTZ1Y6HUXLUCV', 'content_type' => 'application/json'}

# api = Api::Base.new
# @a = api.request(:get, "https://api.clickup.com/api/v2/list/25096231/task")

# puts @a

response = RestClient.get 'https://api.clickup.com/api/v2/task/294jdcc/', headers
puts response