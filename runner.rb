require 'pry'
require 'JSON'
require 'net/http'
require 'uri'
uri = URI.parse("http://localhost:3000/angular")

response=Net::HTTP.get(uri)

body = JSON.parse(response)
binding.pry

