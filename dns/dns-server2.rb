require 'rubydns'

INTERFACES = [
  [:udp, "127.0.0.1", 5300],
  [:tcp, "127.0.0.1", 5300]
]

INBOUND_RESOLVER = RubyDNS::Resolver.new([[:udp, "8.8.8.8", 53]])

# Start the RubyDNS server daemon
RubyDNS::run_server(interfaces: INTERFACES) do
  # Match a specific local domain and return an A record
  match(%r{example\.test}, Resolv::DNS::Resource::IN::A) do |transaction|
    transaction.respond!("127.0.0.1")
  end

  # Default fallback: forward all other queries to an upstream DNS provider
  otherwise do |transaction|
    transaction.passthrough!(INBOUND_RESOLVER)
  end
end

