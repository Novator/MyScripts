class TestServer < Celluloid::DNS::Server
    def process(name, resource_class, transaction)
	@resolver ||= Celluloid::DNS::Resolver.new([[:udp, "8.8.8.8", 53], [:tcp, "8.8.8.8", 53]])
	
	transaction.passthrough!(@resolver)
    end
end

server = TestServer.new(listen: [[:udp, 'localhost', 2346]])
server.run

sleep


