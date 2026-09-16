resolver = Celluloid::DNS::Resolver.new([[:udp, "8.8.8.8", 53], [:tcp, "8.8.8.8", 53]])

addresses = resolver.addresses_for("www.google.com.")

expect(addresses.size).to be > 0

addresses.each do |address|
    expect(address).to be_kind_of(Resolv::IPv4) | be_kind_of(Resolv::IPv6)
end

