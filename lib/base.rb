require 'httparty'
module Api
  class Base
    def request(type,url,opts = {})
      value = HTTParty.send(type, url,opts)
      
    end
  end
end