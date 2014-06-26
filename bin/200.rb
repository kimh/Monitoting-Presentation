#!/usr/bin/env ruby
require "excon"

url = "http://dev.rails/"

while true
controller = ["books", "authors"][rand(2)]
action = ["get", "put", "post"][rand(3)]
case action
when "get"
response = Excon.get("#{url}/#{controller}")
when "put"
response = Excon.put("#{url}/#{controller}/1")
when "post"
response = Excon.post("#{url}/#{controller}")
end

sleep(rand(3))

puts response.status
end
