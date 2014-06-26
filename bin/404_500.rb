#!/usr/bin/env ruby
require "excon"

url = "http://dev.rails/broken"

while true
sec = rand(5)
controller = [404, 500][rand(2)]
response = Excon.get("#{url}/#{controller}")
puts response.status
sleep sec
end
