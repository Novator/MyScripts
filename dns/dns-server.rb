#!/usr/bin/env ruby
require 'rubydns'

# Use the system default resolver for upstream queries:
upstream = Async::DNS::Resolver.default

# We will use port 5300 so we don't need to run the server as root:
#endpoint = Async::DNS::Endpoint.for("localhost", port: 5300)
endpoint = Async::DNS::Endpoint.for("127.0.0.1", port: 53)

# Start the RubyDNS server:
RubyDNS.run(endpoint) do
    match(%r{test.local}, Resolv::DNS::Resource::IN::A) do |transaction|
      transaction.respond!("10.0.0.80")
    end

    match(%r{google.com}, Resolv::DNS::Resource::IN::A) do |transaction|
      transaction.respond!("10.0.0.80")
    end

    # Default DNS handler
    otherwise do |transaction|
      transaction.passthrough!(upstream)
    end
end

