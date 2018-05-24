#!/usr/bin/env ruby

require 'sinatra'
require 'sinatra/reloader' if development?
require 'socket'

configure do
  set :bind, '0.0.0.0'
end

get '/' do
  content_type 'text/plain'
  lines = ['Sinatra is up and running!']
  %i[environment root server bind port app_file].each do |setting|
    lines << "settings.#{setting}: #{settings.send(setting)}"
  end
  hostname = Socket.gethostname
  ip = Socket::getaddrinfo(hostname, "echo", Socket::AF_INET)[0][3]
  lines << "hostname: #{hostname}"
  lines << "host ip address: #{ip}"
  lines.join("\n")
end
